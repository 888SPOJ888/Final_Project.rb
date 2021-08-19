class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :course
      t.string :level
      t.string :telephone_number

      t.timestamps
    end
  end
end
