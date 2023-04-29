# == Schema Information
#
# Table name: events
#
#  id            :integer          not null, primary key
#  description   :text
#  end_date      :datetime
#  location      :string
#  name          :string
#  start_date    :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  foundation_id :integer
#
# Indexes
#
#  index_events_on_foundation_id  (foundation_id)
#
# Foreign Keys
#
#  foundation_id  (foundation_id => foundations.id)
#
class Event < ApplicationRecord
  belongs_to :foundation
end
