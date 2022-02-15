class CreateVideoPerUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :video_per_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :video, null: true, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
