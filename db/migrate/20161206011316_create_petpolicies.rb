class CreatePetpolicies < ActiveRecord::Migration
  def change
    create_table :petpolicies do |t|
      t.string :policy

      t.timestamps

    end
  end
end
