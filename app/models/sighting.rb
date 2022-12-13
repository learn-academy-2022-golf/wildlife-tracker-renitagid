class Sighting < ApplicationRecord
    belongs_to :animal
    accepts_nested_attributes_for :animal
    validates :latitude, :longitude, :date, presence: true
end