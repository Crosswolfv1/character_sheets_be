# frozen_string_literal: true

class CreateGameSystems < ActiveRecord::Migration[6.0] # rubocop:disable Style/Documentation
  def change
    create_table :game_systems, id: :string do |t|
      t.string :name
      t.string :system_type

      t.timestamps
    end
  end
end
