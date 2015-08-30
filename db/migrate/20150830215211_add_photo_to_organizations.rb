class AddPhotoToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :logo_image, :string
  end
end
