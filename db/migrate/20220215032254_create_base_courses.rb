class CreateBaseCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :base_courses do |t|
      t.string :title
      t.text :description
      t.integer :order
      t.timestamps
    end
  end
end
