class Slogan < ApplicationRecord
    validates_presence_of :firstname, :lastname, :email, :slogan
	validates :firstname, :lastname, format: { with: /\A[a-zA-Z]+\z/,
    	message: "only letters allowed"  }
	validates :firstname, :lastname, length: { in: 2..30,
		message: "your name is too long"  }
	validates :slogan, length: { maximum: 50,
		message: "slogan must be under 50 letters long" }
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
