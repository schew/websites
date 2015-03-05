class AddUserToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :user, :string
  end
end
