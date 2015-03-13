class Computer
  instance_methods.each do |m|
    undef_method m unless m.to_s =~ /^ __ | object_id | method_missing | respond_to?/
  end
end

puts BasicObject.instance_methods