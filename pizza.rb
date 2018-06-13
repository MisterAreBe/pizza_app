def cheese()
    cheeses = ["colby", "chedder", "parmerson", "jack"]
    cheeses[0..3]
end
def meat()
    meats = ["peperoni", "sausege", "ham", "bacon", "chicken", "ground beef"]
    meats[0..5]
end
def vegetable()
    vegetables = ["mushrooms", "pineapple", "bell peppers", "onions", "olives"]
    vegetables[0..4]
end
def size()
    sizes = ["8 inch", "16 inch", "24 inch", "32 inch", "40 inch"]
    sizes[0..4]
end
def sauce()
    sauces = ["red", "yellow", "green", "blue"]
    sauces[0..3]
end
def crust()
    crusts = ["thin crust", "stuffed crust", "deep dish", "pan"]
    crusts[0..3]
end
def make_pizza()
    puts "What kind of cheese would you like on your pizza?"; print cheese(); cheese_type = $stdin.gets.chomp
    puts "What kind of meat would you like on your pizza?"; print meat(); meat_type = $stdin.gets.chomp
    puts "What kind of vegetables would you like on your pizza?"; print vegetable(); vegetable_type = $stdin.gets.chomp
    puts "What kind of crust would you like on your pizza?"; print crust(); crust_type = $stdin.gets.chomp
    puts "What kind of sauce would you like on your pizza?"; print sauce(); sauce_type = $stdin.gets.chomp
    puts "What size pizza would you like?"; print size(); print "> "; size_type = $stdin.gets.chomp
    price = 0



    
    puts "Your pizza is a #{size_type}, #{crust_type} pizza, with #{cheese_type}, #{meat_type}, #{vegetable_type}, and #{sauce_type}."
    puts "That'll be #{price}."
end
make_pizza()