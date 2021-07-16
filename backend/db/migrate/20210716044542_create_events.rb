class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.boolean :timed
      t.text :description
      t.string :color

      t.timestamps
    end
  end
end
