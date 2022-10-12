# Given an string of positive integers, sort these integers in ascending order according to sum of their digits(weight of the number).
def order_weight(strng)
  string_splitted = strng.split(" ").map! { |s| s.to_i }
  sorted_numbers = []

  string_splitted.each do |number|
    weight = number.digits.sum
    if sorted_numbers[weight] == nil
      sorted_numbers[weight] = [number]
    else
      sorted_numbers[weight] = sorted_numbers[weight] << number
    end
  end

  result = ""
  sorted_numbers.each do |array_numbers|
    if array_numbers != nil
      array_numbers.each do |number|
        result = "#{result} #{number}"
      end
    end
  end

  return result.strip
end

puts order_weight("1 15 20 101 62 33")
