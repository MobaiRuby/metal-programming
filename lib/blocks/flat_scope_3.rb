my_var = 'Sucess'

# 让my_var穿越作用域的解决方案
# class MyClass
#
#   puts my_var
#
#   def my_method
#     puts my_var
#   end
#
# end

MyClass = Class.new do
  puts my_var

  define_method :my_method do
    puts my_var
  end
end