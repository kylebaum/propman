class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :tenant_id
      t.integer :owner_id
      t.integer :manager_id
      t.integer :property_id
      t.text :body

      t.timestamps

    end
  end
end
