any_array = ['aaaaaa','jjjjd','ff','bbbbbbb','jjjjs','qqqq','a','jjjjf','dd']

def sort_strig(array)
  h = {}
  max_lenght = 0
  sort_array = []

  array.each do |s|
    if h.include?(s.size)
      h[s.size] = h[s.size] + '$' + s
    else
      h[s.size] = s
    end
  end

  h.each do |k,v|
    if k > max_lenght
      max_lenght = k
    end
  end

  (0..max_lenght).each do |v|
    if h.include?(v)
      if h[v].size != v
        (h[v].split "$").each do |val|
           sort_array << val
         end
      else
        sort_array << h[v]
      end
    end
  end
  sort_array
end

puts sort_strig(any_array).inspect
