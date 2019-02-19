class AddReaderKeyToCheckouts < ActiveRecord::Migration
  def up
    add_column :checkouts, :reader_id, :integer
    remove_column :checkouts, :customer
  end

  def down
    remove_column :checkouts, :reader_id
    add_column :checkouts, :customer, :string, null: false
  end
end
