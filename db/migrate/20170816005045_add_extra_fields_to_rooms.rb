class AddExtraFieldsToRooms < ActiveRecord::Migration[5.0]
  def change
    change_table :rooms do |t|
      t.rename :is_intener, :is_internet
      add_column :rooms, :is_kitchen, :boolean
      add_column :rooms, :is_air, :boolean
    end
  end
end
