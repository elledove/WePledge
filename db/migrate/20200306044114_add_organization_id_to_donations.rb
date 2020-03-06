class AddOrganizationIdToDonations < ActiveRecord::Migration[6.0]
  def change
    add_column :donations, :orgz_id, :integer
  end
end
