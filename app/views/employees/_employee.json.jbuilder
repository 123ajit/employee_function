json.extract! employee, :id, :employee_id, :employee_name, :employee_addresss, :email, :phone, :date_of_birth, :employee_image, :created_at, :updated_at
json.url employee_url(employee, format: :json)
