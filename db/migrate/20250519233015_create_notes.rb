class CreateNotes < ActiveRecord::Migration[8.0]
  def change
    create_table :notes do |t|
      t.string :userid
      t.string :ticker
      t.text :note
      t.timestamps
    end
  end
end
