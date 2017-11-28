class CreateOils < ActiveRecord::Migration[5.1]
  def change
    create_table :oils do |t|
      t.string :name
      t.text :description
      t.text :uses
      t.text :fragrance_profile
      t.text :medical_properties

      t.timestamps
    end
  end
end
