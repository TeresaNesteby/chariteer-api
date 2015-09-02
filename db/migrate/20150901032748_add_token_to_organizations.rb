class AddTokenToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :token, :string
  end
end
