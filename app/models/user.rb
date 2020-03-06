class User < ApplicationRecord
    has_many :donations
    has_many :organizations, through: :donations
end