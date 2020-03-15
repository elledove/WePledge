class User < ApplicationRecord
    has_secure_password
    validates_presence_of :username, :password, :password_confirmation
    validates_uniqueness_of :username
    has_many :donations # (user.donations/user.donations.build)
    has_many :organizations, through: :donations #gives us methods to organizations(user.organizations)
    accepts_nested_attributes_for :organizations, allow_destroy: true


    def self.find_or_create_by_omniauth(auth_hash)
       # oauth_username = auth_hash["info"]["nickname"]
       password_c = SecureRandom.hex
       self.where(:username => auth_hash["info"]["nickname"]).first_or_create do |user|
             user.password = password_c
             user.password_confirmation = password_c

       end
       
    end

    def admin? 
        #self.admin == 'admin'
     'admin' 
      end

end
