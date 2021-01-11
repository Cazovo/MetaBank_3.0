class CreateTransactions < ActiveRecord::Migration[6.1]

    def change
        create_table :transactions do |t|
            t.string   "trans_id"
            t.string   "account_id"
            t.string   "amount"
            t.string   "type" 
            t.datetime "date",      null: false
        end
    end
end
