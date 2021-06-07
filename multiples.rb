def customized_list_of_multiples(multiples_of, size)
  multiples = []
  if block_given?
    size.times do |i|
      multiples << yield(multiples_of, i)
    end
    return multiples
  else
    size.times do |i|
      multiples << multiples_of * (i + 1)
    end
    return multiples
  end
end

puts customized_list_of_multiples(4, 10)

puts customized_list_of_multiples(4, 10) { |multiples_of, i|
  multiples_of * (i + 1) * -1
}

puts customized_list_of_multiples(4, 10) { |multiples_of, i|
  multiples_of * (i + 1) * 100
}