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
class Foundation < ApplicationRecord
end
