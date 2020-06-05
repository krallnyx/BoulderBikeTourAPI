class Rider < ApplicationRecord
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :city, presence: true
    validates :state, presence: true
    validates :lat, presence: true
    validates :lng, presence: true
end
