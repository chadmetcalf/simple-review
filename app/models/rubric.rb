class Rubric < ApplicationRecord
  belongs_to :created_by, class_name: 'Admin', required: false
  belongs_to :closed_by, class_name: 'Admin', required: false
  belongs_to :reviewee, class_name: 'Admin', required: false
end
