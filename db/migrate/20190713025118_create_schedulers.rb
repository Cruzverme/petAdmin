class CreateSchedulers < ActiveRecord::Migration[5.0]
  def change
    create_table :schedulers do |t|
      t.references :client, foreign_key: true
      t.references :service, foreign_key: true
      t.date :date
      t.integer :period

      t.timestamps
    end
  end
end
