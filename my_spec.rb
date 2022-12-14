require "./string"

class MySpec
  def self.describe(description)
    puts description.blue
    yield
  end
end

class ExpectationTarget
  def initialize(output)
    @output = output
  end

  def to(expected_output)
    if @output === expected_output
      puts "   .".green
    else
      raise "Expected #{@output} to equal #{expected_output}"
    end
  end
end

def expect(output)
  ExpectationTarget.new(output)
end

def eq(expected_output)
  expected_output
end

def it(description)
  puts "   " + description
  yield
end
