class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :adult
      t.integer :children

      t.timestamps
    end
  end
end
