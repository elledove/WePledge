class Donation < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :organization, optional: true
    validates_presence_of :amount #must have amount entered or will recieve an error
end 