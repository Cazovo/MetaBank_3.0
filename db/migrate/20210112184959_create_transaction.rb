class CreateTransaction < ActiveRecord::Migration[6.1]

    def change
        create_table :transactions do |t|
            t.integer  "account_id"
            t.integer   "amount"
            t.string   "notes" 
            t.datetime "date",      null: false
        end
    end
end
