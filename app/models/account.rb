class Account < ApplicationRecord
  # Other associations and validations...
  belongs_to :role
  has_secure_password 

  def self.ransackable_attributes(auth_object = nil)
    # List only the attributes you want to be searchable
    ["name", "email","role_id", "created_at", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    
    []
  end
  validates :email, presence: true, uniqueness: true
  validates :name, uniqueness: true, if: :doctore_role?
  validates :name, presence: true, if: :patient_role?

  # Check if the account has the role 'doctore'
  def doctore_role?
    role.present? && role.name == 'doctore'
  end

  def patient_role?
    role.present? && role.name == 'patient'
  end
end

