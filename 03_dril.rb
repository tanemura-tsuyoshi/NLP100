input = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
input_splits = input.split
outputs = []
input_splits.map do |input_split|
  outputs << input_split.gsub(/[\.\,]/, '').length
end
# puts outputs
p outputs