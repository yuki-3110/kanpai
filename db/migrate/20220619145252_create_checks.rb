class CreateChecks < ActiveRecord::Migration[6.0]
  def change
    create_table :checks do |t|
      t.string :name
      t.string :email
      t.text :content

      t.timestamps
    end
  end
end
