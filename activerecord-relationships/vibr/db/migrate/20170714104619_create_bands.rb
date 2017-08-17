class CreateBands < ActiveRecord::Migration[5.1]
  def change
    create_table :bands do |t|
    t.belongs_to :user, index: true
      t.string :name
      t.string :image
      t.string :genre

      t.timestamps
    end
  end
end
