class Rubric < ApplicationRecord
  belongs_to :created_by, class_name: 'Admin', required: false
end
