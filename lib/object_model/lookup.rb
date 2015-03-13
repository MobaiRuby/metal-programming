class MyClass

  def my_method
    'my_method()'
  end

end

class MySubClass < MyClass

end

obj = MySubClass.new

puts obj.my_method