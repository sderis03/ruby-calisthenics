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
    self.gsub!(/[.!?\\-\\-\\,]/, "")
    split_text = self.split
    
     frequencies = Hash.new(0)
    split_text.each { |word| frequencies[word] += 1 }
    
     return frequencies
  end
  
  
  def anagram_groups
    array = self.split 
     rtnArr = []
     
    
    for i in 0...array.length
      p = array[i].downcase.chars.sort.join
      temp = [array[i]]
      for j in i+1...array.length
        s = array[j].downcase.chars.sort.join
        if p==s
          temp.push(array[j])
        end
        if j ==array.length-1
          rtnArr.push(temp)
        end
      end
    end
      return rtnArr
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end


