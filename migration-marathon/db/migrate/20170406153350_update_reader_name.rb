class UpdateReaderName < ActiveRecord::Migration
  def up
    remove_column :readers, :full_name
    add_column :readers, :first_name, :string, null: false
    add_column :readers, :last_name, :string, null: false
  end

  def down
    add_column :readers, :full_name, :string, null: false
    remove_column :readers, :first_name
    remove_column :readers, :last_name
  end
end
