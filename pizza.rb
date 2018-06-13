def cheese()
    cheeses = ["colby", "chedder", "parmerson", "jack"]
    cheeses[rand(0..3)]
end

def meat()
    meats = ["peperoni", "sausege", "ham", "bacon", "chicken", "ground beef"]
    meats[rand(0..5)]
end

def vegetable()
    vegetables = ["mushrooms", "pineapple", "bell peppers", "onions", "olives"]
    vegetables[rand(0..4)]
end

def size()
    sizes = ["8 inch", "16 inch", "24 inch", "32 inch", "40 inch"]
    sizes[rand(0..4)]
end

def sauce()
    sauces = ["red", "yellow", "green", "blue"]
    sauces[rand(0..3)]
end

def crust()
    crusts = ["thin crust", "stuffed crust", "deep dish", "pan"]
    crusts[rand(0..3)]
end

def make_pizza()
    puts "How many pizzas do yo want?"; print "> "; num_pizza = $stdin.gets.chomp

    num_pizza.to_i.times do
        puts "Your random pizza is a #{size}, #{crust} pizza, with #{cheese}, #{meat}, #{vegetable}, and #{sauce}."
        puts ""        
    end
end

make_pizza()

