class CreateDashboards < ActiveRecord::Migration[6.1]
  def change
    create_table :dashboards do |t|
      t.date :date
      t.string :description
      t.integer :type
      t.decimal :amount

      t.timestamps
    end
  end
end
