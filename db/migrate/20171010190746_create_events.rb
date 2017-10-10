class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.text :description
      t.date :date, null: false
      t.string :location

      t.timestamps
    end
  end
end
