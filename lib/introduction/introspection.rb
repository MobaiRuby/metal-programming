class Greeting

  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end

end

my_object = Greeting.new("Hello")

puts my_object.class

# 实例化方法
puts my_object.class.instance_methods(false)

# argument === true, return instance_methods included in super class
puts my_object.class.instance_methods(true).length

puts my_object.instance_variables