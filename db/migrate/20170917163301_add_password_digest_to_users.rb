#password digest makes the password hidden so when you type out our password it
#in the enter password field.

class AddPasswordDigestToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :password_digest, :string
  end
end
