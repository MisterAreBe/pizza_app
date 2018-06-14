def cheese()
    cheeses = ["mozzarella", "colby", "chedder", "provolone", "no cheese"]
    cheeses[0..4]
end
def meat()
    meats = ["pepperoni", "sausage", "ham", "bacon", "chicken", "no meat"]
    meats[0..5]
end
def vegetable()
    vegetables = ["mushrooms", "pineapple", "banana peppers", "onions", "olives", "no vegetables"]
    vegetables[0..5]
end
def sauce()
    sauces = ["marinara", "hummus", "barbecue", "garlic butter", "no sauce"]
    sauces[0..4]
end
def crust()
    crusts = ["thin crust", "stuffed crust", "deep dish", "pan"]
    crusts[0..3]
end
def size()
    sizes = ["8 inch", "16 inch", "24 inch", "32 inch", "40 inch"]
    sizes[0..4]
end
def make_pizza(cheeses, meats, vegetables, sauces, crusts, sizes)
    puts "To select your choices, enter the corresponding number."
    puts "What kind of cheese would you like on your pizza?"; print "#{cheese()} : "; cheese_type = $stdin.gets.chomp
    puts "What kind of meat would you like on your pizza?"; print "#{meat()} : "; meat_type = $stdin.gets.chomp
    puts "What kind of vegetables would you like on your pizza?"; print "#{vegetable()} : "; vegetable_type = $stdin.gets.chomp
    puts "What kind of sauce would you like on your pizza?"; print "#{sauce()} : "; sauce_type = $stdin.gets.chomp
    puts "What kind of crust would you like on your pizza?"; print "#{crust()} : "; crust_type = $stdin.gets.chomp
    puts "What size pizza would you like?"; print "#{size()} : "; size_type = $stdin.gets.chomp
    price = 0
    case crust_type.to_i
    when 1; p_crust = crusts[0]; price += 7
    when 2; p_crust = crusts[1]; price += 9
    when 3; p_crust = crusts[2]; price += 10
    when 4; p_crust = crusts[3]; price += 8
    end
    case size_type.to_i
    when 1; p_size = sizes[0]; price += 5
    when 2; p_size = sizes[1]; price += 8
    when 3; p_size = sizes[2]; price += 12
    when 4; p_size = sizes[3]; price += 15
    when 5; p_size = sizes[4]; price += 20
    end
    puts "Your #{p_size}, #{p_crust} pizza will include the following items: "
    case cheese_type.to_i
    when 1; puts "#{cheeses[0]} cheese"
    when 2; puts "#{cheeses[1]} cheese"; price += 1
    when 3; puts "#{cheeses[2]} cheese"; price += 1
    when 4; puts "#{cheeses[3]} cheese"; price += 1
    when 5; puts cheeses[4]; ; price -= 1
    end
    case meat_type.to_i
    when 1; puts meats[0]
    when 2; puts meats[1]
    when 3; puts meats[2]; price += 1
    when 4; puts meats[3]; price += 1.50
    when 5; puts meats[4]; price += 2
    when 6; puts meats[5]
    end
    case vegetable_type.to_i
    when 1; puts vegetables[0]; price += 0.50
    when 2; puts vegetables[1]; price += 0.25
    when 3; puts vegetables[2]; price += 0.15
    when 4; puts vegetables[3]; price += 0.10
    when 5; puts vegetables[4]; price += 0.30
    when 6; puts vegetables[5]
    end
    case sauce_type.to_i
    when 1; puts "#{sauces[0]} sauce"
    when 2; puts "#{sauces[1]} sauce"; price += 1
    when 3; puts "#{sauces[2]} sauce"; price += 1
    when 4; puts "#{sauces[3]} sauce"; price += 1
    when 5; puts "#{sauces[4]} sauce"; price -= 1
    end
    puts "That'll be $#{price * 1.06}, after tax."
end
make_pizza(cheese, meat, vegetable, sauce, crust, size)