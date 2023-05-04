class CreateSpecialties < ActiveRecord::Migration[7.0]
  def change
    create_table :specialties do |t|
      t.string :specialty_name

      t.timestamps
    end
  end
end
