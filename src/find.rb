def has_number?(list, number)
  list.each do |n|
    return true if n == number
  end

  false
end
