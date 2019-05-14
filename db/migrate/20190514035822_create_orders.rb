class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :status
      t.string :number
      t.date :os_date
      t.datetime :hour
      t.string :medium
      t.string :called
      t.integer :operator
      t.string :sector
      t.string :responsible
      t.string :contact
      t.string :unity
      t.string :scope
      t.string :address
      t.boolean :route
      t.string :vehicle
      t.string :ranking
      t.string :modality
      t.string :cause
      t.string :description
      t.string :authorization
      t.string :priority
      t.string :link
      t.string :operational
      t.boolean :measure
      t.date :request_date
      t.string :insertion_routing
      t.string :reporting_routing
      t.string :deliberation
      t.string :temporal_lapse
      t.string :order_record
      t.string :feedback
      t.string :execution_availability
      t.string :devolution

      t.timestamps
    end
  end
end
