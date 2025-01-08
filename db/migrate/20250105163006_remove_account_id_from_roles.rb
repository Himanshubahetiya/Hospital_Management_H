class RemoveAccountIdFromRoles < ActiveRecord::Migration[8.0]
  def change
    remove_column :roles, :account_id, :bigint
  end
end
