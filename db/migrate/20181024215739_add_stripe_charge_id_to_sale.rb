class AddStripeChargeIdToSale < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :stripe_charge_id, :string
  end
end
