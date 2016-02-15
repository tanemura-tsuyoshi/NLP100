# 単語bi-gram，文字bi-gram の解説
# http://d.hatena.ne.jp/jetbead/20110904/1315147133

input = "I am an NLPer"
word_bi_gram = input.split
# 単語bi-gram
p word_bi_gram
char_bi_gram = []
word_bi_gram.map do |input_split|
  for i in 0..input_split.length-1 do
    char_bi_gram << input_split[i]
  end
end
# 文字bi-gram
p char_bi_gram