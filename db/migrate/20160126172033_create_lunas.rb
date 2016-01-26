class CreateLunas < ActiveRecord::Migration
  def change
    create_table :lunas do |t|
      t.integer :age
      t.integer :illumination
      t.string :stage
      t.integer :DFCOE
      t.integer :DFS
      t.timestamps null: false
    end
  end
end
