
def fizzbuzz(integer = 15)

  for num in (1..integer)
    if (num % 5 == 0) && (num % 3 == 0)
      puts "#{num} > fizzbuzz"
    elsif num % 3 == 0
      puts "#{num} > fizz"
    elsif num % 5 == 0
      puts "#{num} > buzz"
    else
      puts num
    end
  end

end

fizzbuzz
