class WordFormatter

  def upcase(string)
    return string.upcase
  end

  def camel_case(string)
    string.split.map.with_index { |x,i| i == 0 ? x : x.capitalize}.join
  end
end

