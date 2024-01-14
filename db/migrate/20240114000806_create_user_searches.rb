class CreateUserSearches < ActiveRecord::Migration[7.1]
  def change
    create_table :user_searches do |t|
      t.string :query

      t.timestamps
    end
  end
end
