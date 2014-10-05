class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.datetime :time
      t.string :location
      t.belongs_to :plan

      t.timestamps
    end
  end
end
