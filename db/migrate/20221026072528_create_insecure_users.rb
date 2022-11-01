class CreateInsecureUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :insecure_users do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
