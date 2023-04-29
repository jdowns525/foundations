# == Schema Information
#
# Table name: impacts
#
#  id            :integer          not null, primary key
#  metric_name   :string
#  metric_value  :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  foundation_id :integer
#
# Indexes
#
#  index_impacts_on_foundation_id  (foundation_id)
#
# Foreign Keys
#
#  foundation_id  (foundation_id => foundations.id)
#
class Impact < ApplicationRecord
  belongs_to :foundation
end
