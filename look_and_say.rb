class LookAndSaySequence
  def initialize(iterations = 5, arr = [1])
    @iterations = iterations
    @arr = arr
  end

  def generate
    arr_c = []
    i = 1

    @arr.each_with_index do |num, ind|
      if num == @arr[ind + 1]
        i += 1
        next
      end

      arr_c << i << num

      i = 1
    end
    arr_c
  end

  def run
    render(@arr)
    @iterations.times do
      result = generate
      @arr = Array.new(result)
      render(@arr)
    end
  end

  def render(array)
    array.each do |i|
      print "#{i} "
    end
    print "\n"
  end
end

# lks = LookAndSaySequence.new
# lks.run