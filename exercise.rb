class Exercise


  def self.marklar(str)

    return str.gsub(/\w{5,}/){ |input| /[[:upper:]]/.match(input[0]) ? 'Marklar' : 'marklar' }
  end


  def self.even_fibonacci(nth)

    fib_array = create_fibonacci(nth)

    sum = 0
    fib_array.each { |x|
      if (x%2==0)
        sum += x
      end
    }

    # puts('sum',sum)
    return sum
  end

  def self.create_fibonacci(nth)
    index = 0

    ary = []
    a, b = 0, 1
    while index < nth
      index = index + 1
      ary.push(a)
      a, b = b, a+b
    end

    return ary
  end

end

# Testing the result

# puts(Exercise.marklar('The quick brown fox'))
# puts(Exercise.marklar('Down goes Frazier'))
# puts(Exercise.marklar('How is the weather today? I have not been outside.'))

# Exercise.even_fibonacci(35)
