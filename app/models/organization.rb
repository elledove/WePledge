class Organization < ApplicationRecord
has_many :donations #(organization.donations)
has_many :users, through: :donations #gives methods related to users (organiznation.users/)
validates_presence_of :name
end