# == Schema Information
#
# Table name: favorites
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  foundation_id :integer
#  user_id       :integer
#
# Indexes
#
#  index_favorites_on_foundation_id  (foundation_id)
#  index_favorites_on_user_id        (user_id)
#
# Foreign Keys
#
#  foundation_id  (foundation_id => foundations.id)
#  user_id        (user_id => users.id)
#
# app/models/favorite.rb
class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :foundation
end

