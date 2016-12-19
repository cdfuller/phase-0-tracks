# A program to keep track of egg roll sales.

# Displays a menu with options to manage orders
#     View unpaid orders, paid orders, or all
#     Create new order.
#     Mark order as paid.

require 'sqlite3'

db = SQLite3::Database.new("egg_rolls.db")
db.results_as_hash = true

create_customers_table = <<-SQL
    CREATE TABLE IF NOT EXISTS customers(
        id INTEGER PRIMARY KEY,
        first_name VARCHAR(255),
        last_name VARCHAR(255)
    )
SQL

db.execute(create_customers_table)

create_orders_table = <<-SQL
    CREATE TABLE IF NOT EXISTS orders(
        id INTEGER PRIMARY KEY,
        num_rolls INT,
        customer INT,
        paid BOOLEAN,
        FOREIGN KEY (customer) REFERENCES customers(id)
    )
SQL

db.execute(create_orders_table)

def create_order(db, num_rolls, customer_id, paid)
    db.execute("INSERT INTO orders(num_rolls, customer, paid) VALUES (?, ?, ?)", [num_rolls, customer_id, paid])
    db.last_insert_row_id
end

def display_order(db, order_id)
    sql = "SELECT o.id, o.paid, o.num_rolls, c.first_name, c.last_name FROM orders o JOIN customers c ON o.customer=c.id WHERE o.id=(?)"
    order = db.execute(sql, [order_id])[0]
    output = "Order \##{order['id']}"
    if order['paid'] == "true"
        output += "[PAID]: "
    else
        output += "[UNPAID]: "
    end
    output += "#{order['num_rolls']} for #{order['first_name']} #{order['last_name']}"

    puts output
end

def create_customer(db, first_name, last_name)
    db.execute("INSERT INTO customers (first_name, last_name) VALUES (?, ?)", [first_name, last_name])
    db.last_insert_row_id
end

def display_customers(db)
    customers = db.execute("SELECT * FROM customers")

    customers.each do |customer|
        puts "#{customer[0]}. #{customer[1]} #{customer[2]}"
    end
end

def add_order(db)
    puts "Create a new order"
    puts ""
    puts "1. Create a new customer"
    puts "2. Select from previous customers"
    puts ""
    print "Enter a number: "
    customer_id = 0

    case gets.chomp.to_i
    when 1
        print "Enter first name: "
        first_name = gets.chomp
        print "Enter last name: "
        last_name = gets.chomp
        customer_id = create_customer(db, first_name, last_name)
    when 2
        display_customers(db)
        print "Enter a number: "
        customer_id = gets.chomp.to_i
    end

    customer = db.execute("SELECT * FROM customers WHERE id=(?)", [customer_id])[0]
    puts "How many egg rolls for #{customer['first_name']} #{customer['last_name']}?"

    num_rolls = gets.chomp.to_i

    print "Paid? (y/n): "
    paid = ""

    case gets.chomp
    when 'y'
        paid = "true"
    when 'n'
        paid = "false"
    end

    order_num = create_order(db, num_rolls, customer_id, paid)

    puts "Added an order of #{num_rolls} egg rolls for #{customer['first_name']} #{customer['last_name']}"

end

def view_unpaid_orders(db)
    puts "-----"
    puts "UNPAID ORDERS"
    puts "-----"
    orders = db.execute("SELECT * FROM orders WHERE paid='false'")
    orders.each do |order|
        display_order(db, order['id'])
    end
    puts "-----------------------"

end

def view_paid_orders(db)
    puts "-----"
    puts "PAID ORDERS"
    puts "-----"
    orders = db.execute("SELECT * FROM orders WHERE paid='true'")
    orders.each do |order|
        display_order(db, order['id'])
    end
    puts "-----------------------"
end

def view_all_orders(db)
    puts "-----"
    puts "ALL ORDERS"
    puts "-----"
    orders = db.execute("SELECT * FROM orders")
    orders.each do |order|
        display_order(db, order['id'])
    end
    puts "-----------------------"
end


def menu
    puts ""
    puts "Egg Roll Manager"
    puts ""
    puts "1. Add new order"
    puts "2. Mark order as paid"
    puts "3. View unpaid orders"
    puts "4. View paid orders"
    puts "5. View all orders"
    puts ""
    puts "6. Exit"
    puts ""
    print "Enter a number: "
end

while true do
    menu
    input = gets.chomp.to_i
    case input
    when 1
        add_order(db)
    when 2
        view_unpaid_orders(db)
        print "Select an order number to mark as paid: "
        order_num = gets.chomp.to_i
        db.execute("UPDATE orders SET paid='true' WHERE id=(?)", [order_num])
    when 3
        view_unpaid_orders(db)
    when 4
        view_paid_orders(db)
    when 5
        view_all_orders(db)
    when 6
        break
    else
        puts "Invalid option"
    end

end