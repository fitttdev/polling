# frozen_string_literal: true

class CreatePollings < ActiveRecord::Migration[7.0]
  def change
    create_table :pollings do |t|
      t.boolean :blah, default: false

      t.timestamps
    end
  end
end
