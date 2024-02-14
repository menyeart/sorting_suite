class Merge

  def initialize
  end

  def sort(array)
    length = array.length
    return array if length <= 1

    half_len = (length/2).round
    left_nums = array.take(half_len)
    right_nums = array.drop(half_len)

    sorted_left = sort(left_nums)
    sorted_right = sort(right_nums)

    merge(sorted_left, sorted_right)
  end

  def merge(left_array, right_array)
    return left_array if right_array.empty?
    return right_array if left_array.empty?

    smallest_num = nil

    left_array.first <= right_array.first ? smallest_num = left_array.shift : smallest_num = right_array.shift
    
    recursive = merge(left_array, right_array)
    [smallest_num].concat(recursive)
  end
end