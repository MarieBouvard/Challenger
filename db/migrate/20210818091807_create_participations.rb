class CreateParticipations < ActiveRecord::Migration[5.2]
  def change
    create_table :participations do |t|
      t.text :message
      t.integer :challenge_id
      t.integer :user_id

      t.timestamps
    end
  end
end
