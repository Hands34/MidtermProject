class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :full_name
      t.int :games_played
      t.int :minutes
      t.int :points
      t.decimal[3,1] :fg_percentage
      t.decimal[3,1] :3p_percentage
      t.decimal[3,1] :free_throw_percentage
      t.int :rebounds
      t.int :assists
      t.int :steals
      t.int :blocks
      t.int :turnovers
      t.int :age
      t.char :birth_place
      t.char :position
      t.references :college, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
