class User < ApplicationRecord
  
    has_many :vehicles

	has_secure_password

    validates :username, :email, uniqueness: true
    validates(:password, { :length => { :in => 4..8 } })
	validates :username, :email, presence: true
end



