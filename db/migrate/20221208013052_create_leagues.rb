class CreateLeagues < ActiveRecord::Migration[7.0]
  def change
    create_table :leagues do |t|
      t.string :champion
      t.string :power_level
      t.string :origin
      t.string :picture

      t.timestamps
    end
  end
end
