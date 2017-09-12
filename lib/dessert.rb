class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    if @calories < 200
      return true
    end
    false
  end
  def delicious?
    return true
  end
  
  
  attr_accessor :name
  attr_accessor :calories
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @calories = 5
    @name = "#{flavor} jelly bean"
  end
  
  
  def delicious?
    if @flavor == "licorice"
      return false
    end
    true
  end
  
  attr_accessor :flavor
  
end
