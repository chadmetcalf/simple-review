# == Schema Information
#
# Table name: criteria
#
#  id          :uuid             not null, primary key
#  created_by  :uuid
#  rubric_id   :uuid
#  active      :boolean          default(TRUE)
#  description :text
#  order       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Criterium, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
