class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.references :level, foreign_key: true, null: false

      t.timestamps
    end
  end
end
# current_user.company.courses