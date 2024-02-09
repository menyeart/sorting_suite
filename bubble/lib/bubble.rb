class Bubble

  def initialize 
  end

  def sort(arr)
      arr.each_with_index do |num, indx|
        return arr if indx == arr.length - 1
        arr.each_with_index do |num2, indx2|
          break if indx2 == arr.length - 1
          if num2 > arr[indx2 + 1]
            arr[indx2] = arr[indx2 + 1]
            arr[indx2 + 1] = num2
          end
        end
      end
    end
end