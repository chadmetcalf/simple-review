# == Schema Information
#
# Table name: criteria
#
#  id          :uuid             not null, primary key
#  creator     :uuid
#  rubric_id   :uuid
#  active      :boolean          default(TRUE)
#  description :text
#  order       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Criterium < ApplicationRecord
  belongs_to :creator, class_name: 'User', required: false
  belongs_to :rubric, touch: true
  has_many :indicators

  delegate :name, to: :rubric, prefix: true
end
