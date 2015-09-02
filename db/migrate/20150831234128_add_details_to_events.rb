class AddDetailsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :org_name, :string
    add_column :events, :place, :string
    add_column :events, :date, :string
    add_column :events, :time, :string
    add_column :events, :num_of_volunteers_needed, :integer
    add_column :events, :image, :string
  end
end
