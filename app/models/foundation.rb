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

  before_save :assign_category

  STATES = [
    'Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut',
    'Delaware', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa',
    'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan',
    'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire',
    'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma',
    'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee',
    'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming'
  ].freeze

  CATEGORY_MAPPING = {
    'Arts Foundation' => :arts,
    'Education Foundation' => :education,
    'Health Foundation' => :health,
    'Environment Foundation' => :environment,
    'Human Services Foundation' => :human_services,
    'Humanitarian Foundation' => :humanitarian,
    'Animal Welfare Foundation' => :animal_welfare,
    'Artificial Intelligence Foundation' => :artificial_intelligence,
    'Human Rights Foundation' => :human_rights,
    'Conservation Foundation' => :conservation,
    'Food Security Foundation' => :food_security,
    'Youth Development Foundation' => :youth_development,
    'Housing Foundation' => :housing,
    'Children Foundation' => :children,
    'Disaster Relief Foundation' => :disaster_relief,
    'Homelessness Foundation' => :homelessness,
    'Arts and Culture Foundation' => :arts_and_culture,
    'Social Justice Foundation' => :social_justice,
    'Advocacy Foundation' => :advocacy
  }.freeze

  def assign_category
    self.category = CATEGORY_MAPPING[name] || :unknown
  end

  def humanized_category
    category.to_s.humanize
  end
end
