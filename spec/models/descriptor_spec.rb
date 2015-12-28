# == Schema Information
#
# Table name: descriptors
#
#  id          :uuid             not null, primary key
#  level_id    :uuid
#  active      :boolean          default(TRUE)
#  description :text
#  order       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Descriptor, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
