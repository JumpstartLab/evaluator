class PeopleAddEmailAddressAndGithubHandle < ActiveRecord::Migration
  def change
    add_column :people, :email,         :string
    add_column :people, :github_handle, :string
  end
end
