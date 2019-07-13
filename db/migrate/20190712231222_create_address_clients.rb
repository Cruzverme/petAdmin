class CreateAddressClients < ActiveRecord::Migration[5.0]
  def change
    create_table :address_clients do |t|
      t.references :address, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
