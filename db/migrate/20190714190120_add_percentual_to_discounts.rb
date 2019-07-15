class AddPercentualToDiscounts < ActiveRecord::Migration[5.0]
  def change
    add_column :discounts, :percentual, :boolean, default: false
  end
end
