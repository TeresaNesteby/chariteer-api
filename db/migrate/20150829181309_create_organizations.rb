class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :mission_statement
      t.string :phone_numberemail
      t.string :website_url
      t.boolean :non_profit
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
