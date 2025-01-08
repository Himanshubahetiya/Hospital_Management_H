ActiveAdmin.register Account do
  permit_params :name, :email ,:role_id ,:password

  index do
    selectable_column
    id_column
    column :name
    column :email   
    column :role
    actions
  end

  filter :name
  filter :email
  filter :role

  form do |f|
    f.inputs do
    f.input :name
    f.input :email
    f.input :password
    f.input :role, as: :select, collection: Role.all.map { |r| [r.name, r.id] }, label: "Select role", include_blank: "Select role"

    end
    f.actions
  end

end
