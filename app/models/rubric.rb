# == Schema Information
#
# Table name: rubrics
#
#  id          :uuid             not null, primary key
#  creator_id  :uuid
#  active      :boolean          default(TRUE)
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Rubric < ApplicationRecord
  belongs_to :creator, class_name: 'User', required: false
  has_many :criteria
  has_many :reviews
end
