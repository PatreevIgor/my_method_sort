array = [1,4,2,5,2,1,8,1,2,5,7,3,5,44,3,4]

def quick_sort(mass)
  array_of_all_the_numbers_one_copy     = []
  hash_numbers_and_count_numbers        = {}
  sorted_array                          = []

  (mass.min..mass.max).each do |x|
    array_of_all_the_numbers_one_copy << x if mass.include?(x)
  end

  mass.each do |x|
    if hash_numbers_and_count_numbers.include?(x)
      hash_numbers_and_count_numbers[x] += 1
    else
      hash_numbers_and_count_numbers[x] = 1
    end
  end

  array_of_all_the_numbers_one_copy.each do |x|
    hash_numbers_and_count_numbers[x].times {sorted_array << x}
  end

  sorted_array
end

puts quick_sort(array)

# попробовать удалять по одному максимальному значению и запихивать его в новый массив
