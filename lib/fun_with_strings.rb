module FunWithStrings
  def palindrome?
    self.downcase!
    self.to_s
    
    self.each_char{|x| 
       if /\W/ === x  
         delete!(x)
       end
     }
     
    if self == self.reverse
      return true
    end
    false
  end
  
  
  
  
  def count_words
    self.downcase!
    
    split_text = self.split(" ")
    
    split_text.each {|x| x.to_s
      x.each_char{|y| 
        if /\W/ === y 
          delete!(y)
        end
      }
      
    }
    
     frequencies = Hash.new(0)
    split_text.each { |word| frequencies[word] += 1 }
    
     return frequencies
  end
  
  
  def anagram_groups
    @angrams.each { |group| group.sort!}
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
