class CreateUSsers < ActiveRecord::Migration
  def change
    create_table :u_ssers do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
