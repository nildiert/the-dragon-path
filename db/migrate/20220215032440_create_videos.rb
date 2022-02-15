class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :url
      t.integer :order
      t.references :course, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
