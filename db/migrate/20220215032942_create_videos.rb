class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.references :user, null: false, foreign_key: true
      t.references :base_video, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.integer :order
      t.integer :status, default: :unfinished

      t.timestamps
    end
  end
end
