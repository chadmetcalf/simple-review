# == Schema Information
#
# Table name: indicators
#
#  id           :uuid             not null, primary key
#  creator      :uuid
#  criterium_id :uuid
#  active       :boolean          default(TRUE)
#  description  :text
#  order        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Indicator < ApplicationRecord
  belongs_to :creator, class_name: 'User', required: false
  belongs_to :criterium, touch: true
  has_many :levels, -> { order(order: :asc) }

  after_create :create_levels

  def create_levels
    (0..4).each do |n|
      levels.find_or_create_by(order: n)
    end
  end
end
