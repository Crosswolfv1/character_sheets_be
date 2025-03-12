# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0] # rubocop:disable Style/Documentation
  def change
    create_table :users, id: :string do |t|
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
