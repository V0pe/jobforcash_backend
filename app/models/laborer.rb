class Laborer < ApplicationRecord
  validates :name, presence: true
  validates :skill, presence: true
  validates :country, presence: true
  validates :city, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
