class C
  def public_method
    # self.private_method
    private_method
  end

  private

  def private_method
    'calling in private_method'
  end
end

puts C.new.public_method