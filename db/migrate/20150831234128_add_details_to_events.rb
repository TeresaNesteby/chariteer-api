class AddDetailsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :org_name, :string
    add_column :events, :location, :string
    add_column :events, :date, :date
    add_column :events, :times, :time
    add_column :events, :num_of_volunteers_needed, :integer
    add_column :events, :image, :string
  end
end
