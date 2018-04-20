class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :contact

      t.timestamps
    end
  end
end
