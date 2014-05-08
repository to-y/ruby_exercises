This is a small challenge to learn more about how blocks work in Ruby. Blocks are actually very similiar to methods.

So let's think about methods for a second... You call a method with data from the outside world — the method's arguments. The code inside the method can see and use this data.

If arguments are how we pass in data into methods, blocks are how we pass in behavior. Think of them as a chunk of logic or a "brain" that your method can run (aka: "call" or "yield").

In Ruby, blocks can be passed into methods as a sort of "invisible argument", like this:

    def print_result
      block_execution = yield
      puts block_execution
    end
    
    # This will print out the number 9 to the console
    print_result { 3 * 3 }
    
    # Blocks can also be written using the do...end format
    print_result do
      creature = "walrus"
      "I am the #{creature}!"
    end
    
    # Blocks have access to variables outside of their definition
    
    shopping_list = [:milk, :eggs, :cheese]
    print_result do
      important_item = shopping_list.sample
      "I hope I don't forget #{important_item}!!!"
    end


