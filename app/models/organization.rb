class Organization < ApplicationRecord
has_many :donations, through :users
end