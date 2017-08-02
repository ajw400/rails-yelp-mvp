class ChangePhonetoPhoneNumber < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :phone_number, :string
    remove_column :restaurants, :phone
  end
end
