class CreateRewards < ActiveRecord::Migration[5.2]
  def change
    create_table :rewards do |t|
      t.string :prize
      t.integer :stars
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
