class CreatePollings < ActiveRecord::Migration[7.0]
  def change
    create_table :pollings do |t|
      t.string :blah

      t.timestamps
    end
  end
end
