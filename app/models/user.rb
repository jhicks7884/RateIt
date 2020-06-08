class User < ApplicationRecord
  
    has_many :vehicles  # those were the vehicles created
    has_many :ratings   
   # has_many :vehicles, through: :ratings


	has_secure_password

    validates :username, :email, uniqueness: true
    validates(:password, { :length => { :in => 4..8 } })
    validates :username, :email, presence: true
    
    def self.from_omniauth(auth)
        # Creates a new user only if it doesn't exist
        where(email: auth.info.email).first_or_initialize do |user|
          user.name = auth.info.name
          user.email = auth.info.email
        end
    end


end



