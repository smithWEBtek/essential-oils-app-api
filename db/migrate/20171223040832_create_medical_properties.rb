class CreateMedicalProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :medical_properties do |t|
      t.string :description

      t.timestamps
    end
  end
end
