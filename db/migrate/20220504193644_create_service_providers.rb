class CreateServiceProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :service_providers do |t|
      t.string :name, null: false
      t.text :about, null: false
      t.string :street, optional: true
      t.string :city, optional: true
      t.string :state, optional: true
      t.string :zip, optional: true
      t.string :contact_person, optional: true
      t.string :phone, null: false
      t.string :email, optional: true
      t.string :url, optional: true
      t.references :municipality, null: false, foreign_key: true

      t.timestamps
    end
  end
end
