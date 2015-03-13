class Computer

  def initialize(computer_id, data_source)
    @computer_id = computer_id
    @data_source = data_source

  end

  def define_component(name)
    define_method(){
      info = @data_source.send("get_#{name}_info", @computer_id)
      price = @data_source.send("get_#{name}_price", @computer_id)
      result = "#{name.to_s.capitalize}: #{info}, #{price}"
      return "*#{result}" if price > 100
      result
    }
  end

end