class String
  def method_missing(method, *args)
    method == :ghost_reverse ? :reverse : super
  end

  require 'benchmark'

  Benchmark.bm do |b|
    b.report "Normal method" do
      10000.times do
        "abc".reverse
      end
    end

    b.report "Ghost  method" do
      10000.times { "abc".ghost_reverse }
    end
  end
end