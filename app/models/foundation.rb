# == Schema Information
#
# Table name: foundations
#
#  id          :integer          not null, primary key
#  address     :string
#  category    :string
#  city        :string
#  description :text
#  latitude    :float
#  longitude   :float
#  name        :string
#  state       :string
#  zipcode     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# app/models/foundation.rb
class Foundation < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
  has_many :events, dependent: :destroy
  has_many :impacts, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_description, against: :description
  enum category: {
  arts: 0,
  education: 1,
  health: 2,
  environment: 3,
  human_services: 4,
  humanitarian: 5,
  animal_welfare: 6,
  artificial_intelligence: 7,
  human_rights: 8,
  conservation: 9,
  food_security: 10,
  youth_development: 11,
  housing: 12,
  children: 13,
  disaster_relief: 14,
  homelessness: 15,
  arts_and_culture: 16,
  social_justice: 17,
  advocacy: 18
}


  STATES = [
    'Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut',
    'Delaware', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa',
    'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan',
    'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire',
    'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma',
    'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee',
    'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming'
  ].freeze
end
