# 英小文字ならば(219 - 文字コード)の文字に置換
# その他の文字はそのまま出力
# a(97) -> z(122)
def cipher(input_str)
  output_str = ""
  input_str.each_char do |input_char|
    input_char_code = input_char.ord
    if 97 <= input_char_code and input_char_code <= 122
      output_char = (219 - input_char_code).chr
    else
      output_char = input_char
    end
    output_str += output_char
  end
  output_str
end
p cipher("Hello")
p cipher("abcdefghijklmnopqrstuvwxyz")
p cipher("こんにちは")