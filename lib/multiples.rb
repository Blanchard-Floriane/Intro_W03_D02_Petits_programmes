#Trouve la somme des entiers naturels strictement inférieurs à 1000 et qui sont multiples de 3 ou 5
def is_multiple_of_3_or_5?(current_number)
  current_number % 3 == 0 || current_number % 5 == 0 #no need to do if method cause you just need to check this. If is implied here.
end

def sum_of_3_or_5_multiples(final_number)
  final_sum = 0
  if final_number != final_number.to_i || final_number.to_i < 0
    return "Yo ! Je ne prends que les entiers naturels. TG"
  else
    (0..(final_number - 1)).each do |current_number| #because it's always < final_number
      if is_multiple_of_3_or_5?(current_number)
        final_sum += current_number #add my current number to my array
      end
    end
  end
  return final_sum
end

sum_of_3_or_5_multiples(11) #=> 33
sum_of_3_or_5_multiples(10) #=> 23