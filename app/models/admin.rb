class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable
  devise :omniauthable, :omniauth_providers => [:google]

  def self.from_omniauth(access_token)
    where(provider: 'google', provider_id: access_token.extra.raw_info.id).first_or_create do |admin|
      admin.email = access_token.info.email
    end
  end

  has_many :rubrics, foreign_key: :created_by
  has_many :rubrics, foreign_key: :closed_by

  def admin?
    true
  end

  def to_s
    email
  end
end
