class ChangeColumnNameForPlanetType < ActiveRecord::Migration[5.1]
  def change
    rename_column :planets, :type, :nature
  end
end
