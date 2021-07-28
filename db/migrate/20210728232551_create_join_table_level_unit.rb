class CreateJoinTableLevelUnit < ActiveRecord::Migration[6.1]
  def change
    create_join_table :levels, :units do |t|
       t.index [:level_id, :unit_id]
       t.index [:unit_id, :level_id]
    end
  end
end
