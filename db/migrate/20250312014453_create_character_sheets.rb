# frozen_string_literal: true

class CreateCharacterSheets < ActiveRecord::Migration[6.0]
  def change
    create_table :character_sheets, id: :string do |t|
      t.references :user, foreign_key: true, type: :string
      t.references :game_system, foreign_key: true, type: :string
      t.string :name
      t.jsonb :extra_data

      t.timestamps
    end
  end
end
