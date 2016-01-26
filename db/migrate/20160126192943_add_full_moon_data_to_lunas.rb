class AddFullMoonDataToLunas < ActiveRecord::Migration
  def change
    add_column :lunas, :FM, :text
  end
end
