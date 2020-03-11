class User < ApplicationRecord
    has_secure_password
    validates_presence_of :username
    validates_uniqueness_of :username
    has_many :donations # (user.donations/user.donations.build)
    has_many :organizations, through: :donations #gives us methods to organizations(user.organizations)
    accepts_nested_attributes_for :organizations, allow_destroy: true
end
