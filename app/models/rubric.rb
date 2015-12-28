# == Schema Information
#
# Table name: rubrics
#
#  id            :uuid             not null, primary key
#  created_by_id :uuid
#  name          :string
#  description   :text
#  active        :boolean          default(TRUE)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Rubric < ApplicationRecord
  belongs_to :created_by, class_name: 'User', required: false
  has_many :criteria
end
