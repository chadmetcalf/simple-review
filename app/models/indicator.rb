# == Schema Information
#
# Table name: indicators
#
#  id           :uuid             not null, primary key
#  created_by   :uuid
#  criterium_id :uuid
#  active       :boolean          default(TRUE)
#  description  :text
#  order        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Indicator < ApplicationRecord
  belongs_to :created_by, class_name: 'User', required: false
  belongs_to :criterium, touch: true
  has_many :levels, -> { order(order: :asc) }

  after_create :create_levels

  def create_levels
    (0..4).each do |n|
      levels.find_or_create_by(order: n)
    end
  end
end
