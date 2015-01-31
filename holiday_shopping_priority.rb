# class HolidayPriorityQueue
#   attr_accessor :queue, :length
#   def initialize
#     @queue ||= []
#     @length ||= 0
#   end
  
#   def addGift gift
#     if length == 0
#       queue << gift
#     else
#       count = 0
#       inserted = false
#       while !inserted
#         if count == length || gift['priority'] < queue[count]['priority']
#           queue.insert(count,gift)
#           inserted = true 
#         end
#         count += 1
#       end
#     end
#      self.length += 1
#   end
  
#   def buyGift
#     return '' if length == 0
#     gift = queue.shift()
#     self.length -= 1
#     gift['gift']
#   end
# end
require 'pry'
class HolidayPriorityQueue
    attr_accessor :queue
  def initialize
    @queue = []
  end
  
  def addGift(gift)
    queue << gift
    self.queue = queue.sort_by{ |item| item['priority'] }
    queue.size
  end
  
  def buyGift
    queue.empty? ? '' : queue.shift['gift']
  end

end

gift_list = HolidayPriorityQueue.new
gift_list.addGift( { 'gift' => 'Water gun', 'priority' => 1 } )
gift_list.addGift( { 'gift' => 'Toy truck', 'priority' => 4 } )
gift_list.addGift( { 'gift' => 'Roller Skates', 'priority' => 3} )

puts gift_list.buyGift()
puts gift_list.buyGift()
puts gift_list.buyGift()