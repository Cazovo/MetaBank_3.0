class CreateAccountType < ActiveRecord::Migration[6.1]

    def change
        create_table :account_type do |t|
            t.string   "type_id"
             t.string   "name"
             t.string   "rate"
        end
    end
end
