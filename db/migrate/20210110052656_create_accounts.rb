class CreateAccounts < ActiveRecord::Migration[6.1]
    
    def change
        create_table :accounts do |t|
            t.string   "acc_id"
            t.string   "users_id"
            t.string   "name"
            t.datetime "created"  , null: false
            t.string   "type"
        end
    end
end
