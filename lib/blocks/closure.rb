def method

  x = 'GoodBye'

  yield('cruel')

end

x = 'Hello'

puts method {|y| "#{x}, #{y} word!" }               # Hello, cruel word!

# 创建块时会获取局部绑定，并把块和其绑定（x = ’Hello‘）一起传给方法，而对方法中的x视而不见，把块称为闭包。

def my_method
  yield(2)
end

x = 1

my_method do

end

puts x
