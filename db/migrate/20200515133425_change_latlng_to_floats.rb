class ChangeLatlngToFloats < ActiveRecord::Migration[6.0]
  def change
    change_column :riders, :lat, :decimal, :precision => 7, :scale => 3
    change_column :riders, :lng, :decimal, :precision => 7, :scale => 3
  end
end
