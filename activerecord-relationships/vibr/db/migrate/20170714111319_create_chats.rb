class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.string :title

      t.timestamps
    end
    create_table :chats_users, id: false do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :chat, index: true
    end
  end
end
