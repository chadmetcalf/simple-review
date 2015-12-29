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

require 'rails_helper'

RSpec.describe Review, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
