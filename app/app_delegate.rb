class AppDelegate
  VALUE = [1,2,3]

  def value
    [1,2,3]
  end

  def application(application, didFinishLaunchingWithOptions:launchOptions)

    if ENV['mode'] == "release"

      puts "*" * 100
      puts " Testing variables versus constants versus methods"
      puts "    Benchmark 1 uses @value"
      puts "    Benchmark 2 uses def value; end"
      puts "    Benchmark 3 uses VALUE"
      puts "    Benchmark 4 uses @value (990000 times)"
      puts "    Benchmark 5 uses def value; end (990000 times)"
      puts "    Benchmark 6 uses VALUE (990000 times)"
      puts "*" * 100
      puts ""

      @value = [1,2,3]
      Benchmark.bm do |x|
        x.report { @value }
      end

      Benchmark.bm do |x|
        x.report { self.value }
      end

      Benchmark.bm do |x|
        x.report {  VALUE }
      end

      Benchmark.bm do |x|
        x.report { 990000.times { @value } }
      end

      Benchmark.bm do |x|
        x.report { 990000.times { self.value } }
      end

      Benchmark.bm do |x|
        x.report { 990000.times { VALUE } }
      end
    else
      puts "You must run with mode=release"
      puts "i.e. `bundle exec rake mode=release`"
    end

    true
  end
end
