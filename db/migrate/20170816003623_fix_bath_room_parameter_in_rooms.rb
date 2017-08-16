class FixBathRoomParameterInRooms < ActiveRecord::Migration[5.0]
  def change
    change_table :rooms do |t|
      t.rename :bath_rom, :bath_room
    end
  end
end
