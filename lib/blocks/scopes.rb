v1 = 1

class MyClass
  v2 = 2
  local_variables                 # :v2

  def my_method
    v3 = 3
    local_variables               # :v3
  end

  local_variables                 # :v2
end

obj = MyClass.new

puts obj.my_method                # :v3

puts obj.my_method                # :v3，与上边的v3没有关系，这是一个新的绑定

puts local_variables              # [:v1, obj]