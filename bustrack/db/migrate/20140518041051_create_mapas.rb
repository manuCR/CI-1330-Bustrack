class CreateMapas < ActiveRecord::Migration
  def change
    create_table :mapas do |t|

      t.timestamps
    end
  end
end
