class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :task, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
