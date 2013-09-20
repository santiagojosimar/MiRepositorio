class CreateDichos < ActiveRecord::Migration
  def change
    create_table :dichos do |t|
      t.string :nombre
      t.text :dicho

      t.timestamps
    end
  end
end
