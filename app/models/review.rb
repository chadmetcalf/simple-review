# == Schema Information
#
# Table name: reviews
#
#  id          :integer          not null, primary key
#  creator_id  :uuid
#  reviewer_id :uuid
#  reviewee_id :uuid
#  rubric_id   :uuid
#  active      :boolean
#  document    :jsonb
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Review < ApplicationRecord
  belongs_to :creator,  class_name: 'User', required: false
  belongs_to :reviewer, class_name: 'User', required: false
  belongs_to :reviewee, class_name: 'User', required: false

end
