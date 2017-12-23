class CreateOils < ActiveRecord::Migration[5.1]
  def change
    create_table :oils do |t|
      t.string :name
      t.text :description
      t.text :fragrance_profile
 
      t.timestamps
    end
  end
end
