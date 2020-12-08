class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.integer :employee_id
      t.string :employee_name
      t.string :employee_addresss
      t.string :email
      t.string :phone
      t.date :date_of_birth
      t.text :employee_image

      t.timestamps
    end
  end
end
