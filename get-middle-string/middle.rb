def get_middle(s)
  if s.length.odd?
    return s[s.length/2]
  else
    return s[s.length/2 - 1] + s[s.length/2]
  end
end

puts get_middle("hello")
puts get_middle("people")
