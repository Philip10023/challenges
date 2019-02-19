class CreateReadersTable < ActiveRecord::Migration
  def change
    create_table :readers do |t|
      t.string :full_name, null: false
      t.string :email, null: false
      t.integer :phone_number, null: false

      t.timestamps null: false
    end
  end
end
