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

class Descriptor < ApplicationRecord
  belongs_to :created_by, class_name: 'User', required: false
  belongs_to :level, touch: true
end
