require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Vova", last_name: "Ravco", hourly_rate: 50)
@store1.employees.create(first_name: "Dilan", last_name: "Polnocki", hourly_rate: 40)
@store1.employees.create(first_name: "Kate", last_name: "B.", hourly_rate: 30)
@store1.employees.create(first_name: "Nancy", last_name: "Smark", hourly_rate: 20)
@store1.employees.create(first_name: "Rich", last_name: "Richs", hourly_rate: 40)
@store1.employees.create(first_name: "Wendi", last_name: "Sardy", hourly_rate: 30)

@store2.employees.create(first_name: "Dil", last_name: "Renderson", hourly_rate: 60)
@store2.employees.create(first_name: "Moni", last_name: "Douglas", hourly_rate: 50)
@store2.employees.create(first_name: "Sarah", last_name: "So", hourly_rate: 45)
@store2.employees.create(first_name: "Sarah", last_name: "So", hourly_rate: 45)


# We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, you'll find that it has a `store_id` (integer) column. This is a column that identifies which store each employee belongs to. It points to the `id` (integer) column of their store.
# CREATE TABLE "employees" ("id" bigserial primary key, "store_id" bigint, "first_name" character varying, "last_name" character varying, "hourly_rate" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL)
# Let's tell Active Record that these two tables are in fact related via the `store_id` column.

# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables that you defined in previous exercises. Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.