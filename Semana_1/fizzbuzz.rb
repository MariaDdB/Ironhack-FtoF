def fizzBuzz(x, y)

    for i in x..y
        if (i%3 === 0 && i%5 === 0)
            puts "FizzBuzz"
        
        elsif (i%5 === 0)
            puts "Buzz"

        elsif (i%3 === 0)
            puts "Fizz"
        else
            puts i
        end
    end
                
end

fizzBuzz(1, 100)


fizz_buzz 1,30, {3 => "Fizz", 5 => "Buzz", 7 => "Woof"} # también podría hacerse con un array de arrays [[3, "Fizz"][5,"Buzz"][7,"Woof"]]