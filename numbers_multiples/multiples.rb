# given number betweeen 0-10
def multiples_of_3_and_5(number)
  number -= 1
  result = 0
  while number > 0 do
    if number % 3 == 0 || number % 5 == 0
      result += number
    end
    number -= 1
  end

  return result
end

puts multiples_of_3_and_5(10)
puts multiples_of_3_and_5(5)
