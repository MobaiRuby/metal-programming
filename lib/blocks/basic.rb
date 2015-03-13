def a_method(a, b)
  a + yield(a, b)
end

puts a_method(1, 2) { |x, y| (x + y) * 3 }

def b_method
  return yield if block_given?
  'no block'
end

puts b_method

flag = b_method do
        'I am a block'
       end

puts flag