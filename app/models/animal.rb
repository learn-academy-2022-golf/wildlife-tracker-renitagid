class Animal < ApplicationRecord
    has_many :sightings
    accepts_nested_attributes_for :sightings
    validates :name, :binomial, presence: true
    validates :name, comparison: { other_than: :binomial }
    validates :name, :binomial, uniqueness: true
end