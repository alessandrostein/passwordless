class RemoveDonors < ActiveRecord::Migration[6.0]
  def change
    drop_table :donors
  end
end
