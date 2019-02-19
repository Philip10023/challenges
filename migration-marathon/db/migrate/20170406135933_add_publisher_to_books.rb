class AddPublisherToBooks < ActiveRecord::Migration
  def up
    add_column :books, :publisher, :string
    ## step 2
  end

  def down
    remove_column :books, :publisher, :string
    ##step 2
  end

end
