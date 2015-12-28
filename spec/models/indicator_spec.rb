# == Schema Information
#
# Table name: indicators
#
#  id           :uuid             not null, primary key
#  created_by   :uuid
#  criterium_id :uuid
#  active       :boolean          default(TRUE)
#  description  :text
#  order        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe Indicator, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
