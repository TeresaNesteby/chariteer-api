class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :volunteer_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
