class CreateResources < ActiveRecord::Migration[7.0]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :url
      t.references :base_course, null: false, foreign_key: true

      t.timestamps
    end
  end
end




