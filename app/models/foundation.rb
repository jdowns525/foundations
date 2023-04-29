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

end
