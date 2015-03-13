module M

  def my_methods
    'M#my_methods'
  end

end

class C
  include M
end

class D < C

end

puts D.new.my_methods