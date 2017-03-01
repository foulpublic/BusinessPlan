class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.integer  :status
      t.integer  :month
      t.integer  :plan_id
      t.integer  :plan_type
      t.timestamps
    end
  end
end
