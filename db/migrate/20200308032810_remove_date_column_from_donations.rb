class RemoveDateColumnFromDonations < ActiveRecord::Migration[6.0]
  def change

    remove_column :donations, :date, :string
  end
end
