class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name, unique: true
      t.integer :level, default: 1
      t.references :trainer, foreign_key: true
      t.integer :ndex, unique: true

      t.timestamps
    end
  end
end
