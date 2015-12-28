# == Schema Information
#
# Table name: levels
#
#  id           :uuid             not null, primary key
#  indicator_id :uuid
#  order        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Level < ApplicationRecord
  belongs_to :indicator, touch: true
  has_many :descriptors
end
