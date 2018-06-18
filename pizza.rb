def print_cheese()
    ["mozzarella", "colby", "chedder", "provolone", "no cheese"]
end
def print_meat()
["pepperoni", "sausage", "ham", "bacon", "chicken", "no meat"]
end
def print_vegetable()
    ["mushrooms", "pineapple", "banana peppers", "onions", "olives", "no vegetable"]
end
def print_sauce()
    ["marinara", "hummus", "barbecue", "garlic butter", "no sauce"]
end
def print_crust()
    ["thin crust", "stuffed crust", "deep dish", "pan"]
end
def print_size()
    ["8 inch", "16 inch", "24 inch", "32 inch", "64 inch"]
end
def make_pizza()
    puts "How many pizzas would you like?"; print "> "; pizza_count = $stdin.gets.chomp.to_i
    price = 0
    while pizza_count > 0
        puts "To select your choices, enter the corresponding number. Example : 1, 2, 3, etc."
        print "What size pizza would you like? : "; print "#{print_size()}\n8 inch = $5, 16 inch = $9, 24 inch = $12, 32 inch = $15, 64 inch = $20 : "; size_type = $stdin.gets.chomp
        print "What kind of crust would you like on your pizza? : "; print "#{print_crust()}\nThin crust = $2.50, stuffed crust = $3, deep dish = $3.50, pan = $2 : "; crust_type = $stdin.gets.chomp
        print "What kind of cheese would you like on your pizza? : "; print "#{print_cheese()}\nNo added price for mozzarella, + $0.10 for anything else : "; cheese_type = $stdin.gets.chomp
        print "What kind of meat would you like on your pizza? : "; print "#{print_meat()}\nNo added price for pepperoni or sausage, ham = $0.25, bacon = $0.75, chicken = $0.50 : "; meat_type = $stdin.gets.chomp
        print "What kind of vegetable would you like on your pizza? : "; print "#{print_vegetable()}\n+ $0.15 for any added vegtables : "; vegetable_type = $stdin.gets.chomp
        print "What kind of sauce would you like on your pizza? : "; print "#{print_sauce()}\nNo added price for marinara, + $0.15 for any other sauce : "; sauce_type = $stdin.gets.chomp
        case crust_type.to_i
        when 1; p_crust = print_crust[0]; price += 2.50
        when 2; p_crust = print_crust[1]; price += 3
        when 3; p_crust = print_crust[2]; price += 3.50
        when 4; p_crust = print_crust[3]; price += 2
        end
        case size_type.to_i
        when 1; p_size = print_size[0]; price += 5
        when 2; p_size = print_size[1]; price += 9
        when 3; p_size = print_size[2]; price += 12
        when 4; p_size = print_size[3]; price += 15
        when 5; p_size = print_size[4]; price += 20
        end
        puts "Your #{p_size}, #{p_crust} pizza will include the following items: "
        case cheese_type.to_i
        when 1; puts "#{print_cheese[0]} cheese"
        when 2; puts "#{print_cheese[1]} cheese"; price += 0.10
        when 3; puts "#{print_cheese[2]} cheese"; price += 0.10
        when 4; puts "#{print_cheese[3]} cheese"; price += 0.10
        when 5; puts print_cheese[4]; ; price -= 1
        end
        case meat_type.to_i
        when 1; puts print_meat[0]
        when 2; puts print_meat[1]
        when 3; puts print_meat[2]; price += 0.25
        when 4; puts print_meat[3]; price += 0.75
        when 5; puts print_meat[4]; price += 0.50
        when 6; puts print_meat[5]
        end
        case vegetable_type.to_i
        when 1; puts print_vegetable[0]; price += 0.15
        when 2; puts print_vegetable[1]; price += 0.15
        when 3; puts print_vegetable[2]; price += 0.15
        when 4; puts print_vegetable[3]; price += 0.15
        when 5; puts print_vegetable[4]; price += 0.15
        when 6; puts print_vegetable[5]
        end
        case sauce_type.to_i
        when 1; puts "#{print_sauce[0]} sauce"
        when 2; puts "#{print_sauce[1]} sauce"; price += 0.15
        when 3; puts "#{print_sauce[2]} sauce"; price += 0.15
        when 4; puts "#{print_sauce[3]} sauce"; price += 0.15
        when 5; puts "#{print_sauce[4]} sauce"; price -= 1
        end
        pizza_count -= 1
    end
    puts "Do you want that delivered for an extra $10?"; print "[y/n] : "; delivery = $stdin.gets.chomp
    if (delivery == "y") || (delivery == "yes"); price += 10
    else; puts "Your order will be ready in 30 minutes."
    end
    total = (price * 1.06) # + (price * 0.15)  first is tax, second is tip.
    puts "That'll be $#{total.round(2)}, after tax."
end
make_pizza()