class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :artist
      t.date :date_made

      t.timestamps
    end
  end
end
