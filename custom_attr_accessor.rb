require 'pry'
class SuperFoo

  attr_accessor :data

  def initialize
    @data = {}  
  end 
 
  def self.data_accessor(*args)
    args.each do |arg| 
      self.class_eval("def #{arg.to_s}; @#{arg}; end")
      self.class_eval("def #{arg.to_s}=(val); @#{arg}=val; end")
    end
  end

end

class SubFoo < SuperFoo
  data_accessor :fizz, :buzz
end


sub = SubFoo.new

sub.fizz = "hello"
puts sub.fizz