class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :home_type
      t.string :room_type
      t.integer :accommodate
      t.integer :bed_room
      t.integer :bath_rom
      t.string :listing_name
      t.text :summary
      t.string :address
      t.boolean :is_tv
      t.boolean :is_heating
      t.boolean :is_intener
      t.integer :price
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
