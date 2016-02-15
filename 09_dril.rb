# 09_dril.rb
# スペースで区切られた単語列に対して，
# 各単語の先頭と末尾の文字は残し，それ以外の文字の順序をランダムに並び替える
# ただし，長さが４以下の単語は並び替えない
p "test"
def typoglycemia(input_str)
  output_word = ''
  output_str = ''
  input_words = input_str.split(' ')
  # output_str = input_str[0] + input_str[2] + input_str[1] + input_str[3]
  input_words.each do |input_word|
    input_word
    if input_word.length <= 4
      output_word = input_word
    else
      first_char = input_word.slice!(0)
      last_char = input_word.slice!(-1)
      middle_chars = input_word.split(//)
      output_word = first_char + middle_chars.shuffle.join + last_char
    end
    if output_str == ''
      output_str = output_str + output_word
    else
      output_str = output_str + ' ' + output_word
    end
  end
  p output_str
end
input_str = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."
typoglycemia(input_str)
