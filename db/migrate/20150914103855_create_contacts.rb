class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :position
      t.string :contact_no
      t.string :email
      t.string :location
      t.string :description

      t.timestamps null: false
    end
  end
end
