input = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
input_splits = input.split
outputs = []
input_splits.map.with_index do |input_split, i|
  case i
  when 0, 4, 5, 6, 7, 8, 14, 15, 18
    outputs << [i + 1, input_split.slice(0, 1)]
  when 11
    outputs << [i + 1, input_split[0] + input_split[2]]
  else
    outputs << [i + 1, input_split.slice(0, 2)]
  end
end
p outputs