class Site < ApplicationRecord
  has_many :favorites
  has_one :user, through: :favorite
end
