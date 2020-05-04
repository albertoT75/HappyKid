class AddRewardsColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :rewards, :first_prize, :string
    add_column :rewards, :second_prize, :string
    add_column :rewards, :third_prize, :string
    add_column :rewards, :fourth_prize, :string
    add_column :rewards, :fifth_prize, :string
  end
end
