class Organization < ApplicationRecord
has_many :donations #(organization.donations)
has_many :users, through: :donations #gives methods related to users (organiznation.users/)
accepts_nested_attributes_for :donations, allow_destroy: true
validates_presence_of :name 
scope :search, ->(animal) {where("animal LIKE ?" , "%#{animal}")}


def self.search(animal_type)
    self.where(animal: animal_type) # remember you have this and the scope above!
end

end