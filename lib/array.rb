class Array
  def flat_it
    each_with_object([]) do |element, flattened|
      flattened.push *(element.is_a?(Array) ? element.flat_it : element)
    end
  end
end