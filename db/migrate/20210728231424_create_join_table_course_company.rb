class CreateJoinTableCourseCompany < ActiveRecord::Migration[6.1]
  def change
    create_join_table :companies, :courses do |t|
       t.index [:company_id, :course_id]
       t.index [:course_id, :company_id]
    end
  end
end
