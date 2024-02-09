class Insertion
  def initialize
  end

  def sort(arr)
    sorted = []
    sorted << arr.shift()
    pos = 0
    
    until arr == []
      num = arr[0]
      if num < sorted[pos]
        sorted.insert(pos, arr.shift())
        pos = 0
      elsif pos == sorted.length - 1
        sorted << arr.shift()
        pos = 0
      else
        pos += 1
      end
    end
    sorted
  end


end