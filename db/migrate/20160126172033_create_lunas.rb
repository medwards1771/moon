class CreateLunas < ActiveRecord::Migration
  def change
    create_table :lunas do |t|

      t.timestamps null: false
    end
  end
end
