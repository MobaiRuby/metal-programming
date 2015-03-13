class MyClass

  def initialize
    @v = 1
  end

end

obj = MyClass.new

v = 2

obj.instance_eval do
  self
  @v = v
  puts @v
end

# 块把运行它的对象当做self，所以在块内，可以访问self的私有方法和变量。把可以传递给方法intance_eval的块称为上下文探针。