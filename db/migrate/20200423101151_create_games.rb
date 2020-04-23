class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :sleeping
      t.string :pottytraining
      t.string :eating
      t.string :dressingup
      t.string :homework
      t.string :photo

      t.timestamps
    end
  end
end
