def print_cheese()
    ["mozzarella", "colby", "chedder", "provolone", "no cheese"]
end
def cheese_price()
    [0, 0.10, 0.10, 0.10, -0.20]
end
def print_meat()
["pepperoni", "sausage", "ham", "bacon", "chicken", "no meat"]
end
def meat_price()
    [0, 0, 0.25, 0.75, 0.50, 0]
end
def print_vegetable()
    ["mushrooms", "pineapple", "banana peppers", "onions", "olives", "no vegetable"]
end
def vegetable_price()
    [0.15, 0.15, 0.15, 0.15, 0.15, 0]
end
def print_sauce()
    ["marinara", "hummus", "barbecue", "garlic butter", "no sauce"]
end
def sauce_price()
    [0, 0.15, 0.15, 0.15, -0.30]
end
def print_crust()
    ["thin crust", "stuffed crust", "deep dish", "pan"]
end
def crust_price()
    [2.50, 3, 3.50, 2]
end
def print_size()
    ["8 inch", "16 inch", "24 inch", "32 inch", "64 inch"]
end
def size_price()
    [5, 9, 12, 15, 20]
end
def make_pizza()
    puts "How many pizzas would you like?"; print "> "; pizza_count = $stdin.gets.chomp.to_i
    while pizza_count > 0
        puts "To select your choices, enter the corresponding number. Example : 1, 2, 3, etc."
        print "What size pizza would you like? : "
        print "#{print_size()}\n8 inch = $5, 16 inch = $9, 24 inch = $12, 32 inch = $15, 64 inch = $20 : "; size_type = $stdin.gets.chomp.to_i
        print "What kind of crust would you like on your pizza? : "
        print "#{print_crust()}\nThin crust = $2.50, stuffed crust = $3, deep dish = $3.50, pan = $2 : "; crust_type = $stdin.gets.chomp.to_i
        print "What kind of cheese would you like on your pizza? : "
        print "#{print_cheese()}\nNo added price for mozzarella, + $0.10 for anything else : "; cheese_type = $stdin.gets.chomp.to_i
        print "What kind of meat would you like on your pizza? : "
        print "#{print_meat()}\nNo added price for pepperoni or sausage, ham = $0.25, bacon = $0.75, chicken = $0.50 : "; meat_type = $stdin.gets.chomp.to_i
        print "What kind of vegetable would you like on your pizza? : "
        print "#{print_vegetable()}\n+ $0.15 for any added vegtables : "; vegetable_type = $stdin.gets.chomp.to_i
        print "What kind of sauce would you like on your pizza? : "
        print "#{print_sauce()}\nNo added price for marinara, + $0.15 for any other sauce : "; sauce_type = $stdin.gets.chomp.to_i
        print "Your #{print_size[size_type - 1]}, #{print_crust[crust_type - 1]} pizza will include the following items: " 
        puts "#{print_cheese[cheese_type -1]} cheese, #{print_meat[meat_type - 1]}, #{print_vegetable[vegetable_type - 1]}, and #{print_sauce[sauce_type - 1]} suace." 
        pizza_count -= 1
    end
    price = size_price[size_type - 1] + crust_price[crust_type - 1] + cheese_price[cheese_type - 1] + meat_price[meat_type - 1] + vegetable_price[vegetable_type - 1] + sauce_price[sauce_type - 1]
    puts "Do you want that delivered for an extra $10?"; print "[y/n] : "; delivery = $stdin.gets.chomp
    if (delivery == "y") || (delivery == "yes"); price += 10
    else; puts "Your order will be ready in 30 minutes."
    end
    puts "Would you like to leave a tip?"; print "[y/n] : "; tip = $stdin.gets.chomp
    if (tip == "y") || (tip == "yes")
        print "You can leave a tip ranging from 1% to 15% [Example 1, 5, 10] :"; tip_amount = $stdin.gets.chomp.to_f
        tip_amount /= 100; tip_amount += 1.0
    end
    total = (price * 1.06) * tip_amount  # first is tax, second is tip.
    puts "That'll be $#{sprintf('%.2f', total)}, after tax."
end
make_pizza()