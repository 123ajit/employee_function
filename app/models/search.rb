class Search < ApplicationRecord
    self.inheritance_column = "not_sti"

    def search_employee
        employee = Employee.all 

        employee = employee.where(['name LIKE ?', name]) if name.present?
        # employee = employee.where(['type LIKE ?', type]) if type.present?
        # employee = employee.where(['region LIKE ?', region]) if region.present?

        return employee
    end 
end