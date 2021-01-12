class CreateUser < ActiveRecord::Migration[6.1]

    def change
        create_table :users do |t|
            t.string    "first_name"
            t.string    "last_name"
            t.string    "street_name"
            t.string    "city"
            t.integer    "zip_code"
            t.string    "number"
            t.datetime  "birth_date"
            t.string    "gender"
            t.string    "salary"
            t.string    "occupation"
            t.datetime "updated_at",  null: false
        end
    end
end
