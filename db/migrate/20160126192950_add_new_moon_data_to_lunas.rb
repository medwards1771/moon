class AddNewMoonDataToLunas < ActiveRecord::Migration
  def change
    add_column :lunas, :NNM, :text
  end
end
