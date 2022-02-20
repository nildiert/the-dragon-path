class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :base_course, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
