class Rubric < ApplicationRecord
  belongs_to :created_by, class_name: 'User', required: false
end
