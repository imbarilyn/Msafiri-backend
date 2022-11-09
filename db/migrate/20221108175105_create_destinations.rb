class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.text :place
      t.string :event
      t.integer :date
      t.integer :time
      t.timestamps
    end
  end
end
