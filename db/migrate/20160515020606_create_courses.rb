class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.integer :privacy
      t.boolean :featured
      t.string :cover_image

      t.timestamps null: false
    end
  end
end
