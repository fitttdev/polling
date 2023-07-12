# frozen_string_literal: true

class AddStatusToPolling < ActiveRecord::Migration[7.0]
  def change
    add_column :pollings, :status, :string, default: 'pending'
  end
end
