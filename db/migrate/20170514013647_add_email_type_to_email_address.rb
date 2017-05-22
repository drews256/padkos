class AddEmailTypeToEmailAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :email_addresses, :lead_type, :string
  end
end
