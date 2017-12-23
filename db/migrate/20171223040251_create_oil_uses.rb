class CreateOilUses < ActiveRecord::Migration[5.1]
  def change
    create_table :oil_uses do |t|
      t.integer :oil_id
      t.integer :use_id

      t.timestamps
    end
  end
end
