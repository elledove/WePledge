class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.integer :amount
      t.integer :user_id
      t.string :description
      t.integer :date
      t.integer :organization_id
    end
  end
end
