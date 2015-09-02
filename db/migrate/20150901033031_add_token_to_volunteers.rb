class AddTokenToVolunteers < ActiveRecord::Migration
  def change
    add_column :volunteers, :token, :string
  end
end
