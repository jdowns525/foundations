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
end

# app/models/user.rb
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites, dependent: :destroy
  has_many :foundations, through: :favorites
end

# app/models/favorite.rb
class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :foundation
end

# app/models/event.rb
class Event < ApplicationRecord
  belongs_to :foundation
end

# app/models/impact.rb
class Impact < ApplicationRecord
  belongs_to :foundation
end
