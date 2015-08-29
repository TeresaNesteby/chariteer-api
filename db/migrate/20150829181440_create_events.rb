class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :category_id
      t.integer :organization_id
      t.string :name
      t.integer :volunteer_id

      t.timestamps null: false
    end
  end
end
