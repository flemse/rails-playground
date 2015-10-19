class CreateProgramNodes < ActiveRecord::Migration
  def change
    create_table :program_nodes do |t|
      t.string :ancestry, index: true
      t.string :name, null: false
      t.string :type, null: false
      t.timestamps null: false
    end
  end
end
