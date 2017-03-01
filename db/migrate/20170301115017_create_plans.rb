class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :service_id
      t.integer :devision_id
      t.string  :year
      t.text    :plan_name
      t.integer :user_id
      t.string  :status
      t.string  :acitive_code
      t.string  :pj_code
      t.timestamps
    end
  end
end
