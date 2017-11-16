['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# require 'byebug'

class Array
  def sluggish_octopus
    sorted = false
    until sorted
      sorted = true
      self.each_index do |i|
        j = i + 1
        if i + 1 == self.length
          next
        elsif self[i].length > self[j].length
          self[i], self[j] = self[j], self[i]
          sorted = false
        end
      end
    end
    self.last
  end

class Array 
  def dominant_octopus
    return self if self.length <= 1

    pivot = [self.first]
    left = self[1..-1].select { |el| el.length < self.first.length }
    right = self[1..-1].select { |el| el.length >= self.first.length }

    result = left.dominant_octopus + pivot + right.dominant_octopus
    result.last
  end




end
