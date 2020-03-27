class User < ApplicationRecord
  
    has_many :vehicles  # those were the vehicles created
    has_many :ratings   
   # has_many :vehicles, through: :ratings


	has_secure_password

    validates :username, :email, uniqueness: true
    validates(:password, { :length => { :in => 4..8 } })
	validates :username, :email, presence: true
end



