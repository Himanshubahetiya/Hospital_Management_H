class Role < ApplicationRecord
  has_many :accounts
   def self.ransackable_attributes(auth_object = nil)
    ["email", "doctore_name", "patient_name", "role_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["role"]
  end  

end


