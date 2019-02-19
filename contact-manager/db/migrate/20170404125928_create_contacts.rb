class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |table|
      # A column first_name of type string
      table.string :first_name

      # A column last_name of type string
      table.string :last_name

      # A column phone_number of type string
      table.string :phone_number
    end
  end
end
