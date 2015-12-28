# == Schema Information
#
# Table name: levels
#
#  id           :uuid             not null, primary key
#  indicator_id :uuid
#  order        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe Level, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
