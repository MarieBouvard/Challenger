class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :description
      t.datetime :expires_at
      t.integer :points

      t.timestamps
    end
  end
end
