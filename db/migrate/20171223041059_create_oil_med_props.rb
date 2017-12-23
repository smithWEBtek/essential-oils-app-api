class CreateOilMedProps < ActiveRecord::Migration[5.1]
  def change
    create_table :oil_med_props do |t|
      t.integer :oil_id
      t.integer :medical_property_id
      
      t.timestamps
    end
  end
end
