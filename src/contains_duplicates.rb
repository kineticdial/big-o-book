def contains_duplicates(list)
  list.each_with_index do |x_index, x|
    list.each_with_index do |y_index, y|
      if x_index != y_index && x == y
        return true
      end
    end
  end

  false
end
