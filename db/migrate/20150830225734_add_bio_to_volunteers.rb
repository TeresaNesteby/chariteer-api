class AddBioToVolunteers < ActiveRecord::Migration
  def change
    add_column :volunteers, :interest, :string
    add_column :volunteers, :photo_url, :string
  end
end
