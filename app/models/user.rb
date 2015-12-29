# == Schema Information
#
# Table name: users
#
#  id                     :uuid             not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  provider               :string
#  provider_id            :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_provider              (provider)
#  index_users_on_provider_id           (provider_id)
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable
  devise :omniauthable, :omniauth_providers => [:google]

  def self.from_omniauth(access_token)
    where( provider: 'google',
           provider_id: access_token.extra.raw_info.id )
    .first_or_create do |user|
      user.email = access_token.info.email
    end
  end

  has_many :rubrics, foreign_key: :creator
  has_many :reviews, foreign_key: :creator
  has_many :reviews, foreign_key: :reviewer
  has_many :reviews, foreign_key: :reviewee

  def admin?
    true
  end

  def to_s
    email
  end
end
