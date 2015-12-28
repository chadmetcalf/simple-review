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

require 'rails_helper'

RSpec.describe Rubric, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
