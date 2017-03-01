class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.integer :devision_id
      t.string  :business_unit
      t.string  :division_nname
      t.string  :group_name
      t.string  :team_name
      t.timestamps
    end
  end
end
