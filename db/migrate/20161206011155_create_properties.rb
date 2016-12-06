class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :description
      t.string :address
      t.integer :city_id
      t.integer :neighborhood_id
      t.integer :petpolicy_id
      t.integer :price
      t.integer :numberbed
      t.integer :numberbath
      t.integer :owner_id
      t.integer :manager_id
      t.integer :tenant_id
      t.integer :user_id

      t.timestamps

    end
  end
end
