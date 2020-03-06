class User < ApplicationRecord
    has_many :donations # (user.donations/user.donations.build)
    has_many :organizations, through: :donations #gives us methods to organizations(user.organizations)
end