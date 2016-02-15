# 単語bi-gram，文字bi-gram の解説
# http://d.hatena.ne.jp/jetbead/20110904/1315147133
require 'pry-byebug'


def makeNgramHash(input_str)
  total_n_gram_hash = {}
  for i in 0..input_str.length - 1
    n_gram = Array.new(input_str.length)
    n_gram[i+1] = []
    for j in 0..input_str.length - 1
      if input_str[j,i+1].length != i+1
        break
      end
      n_gram[i+1] << input_str[j,i+1]
    end
    total_n_gram_hash[i+1] = n_gram[i+1]
  end
  return total_n_gram_hash
end

def calcWaShugo(x_ary, y_ary)
  wa_shugo = []
  return  wa_shugo.concat(x_ary).concat(y_ary).uniq
end

def calcSekiShugo(x_ary, y_ary)
  seki_shugo = []
  x_ary.each do |x|
    if y_ary.include?(x)
      seki_shugo << x
      if x == "rag"
        binding.pry
      end
    end
  end
  return seki_shugo.uniq
end

def calcSaShugo(include_ary, not_include_ary)
  sa_shugo = []
  include_ary.each do |x|
    if not_include_ary.include?(x)
    else
      sa_shugo << x
    end
  end
  return sa_shugo.uniq
end

def whichShugoIncludeString(x_ary, y_ary, target_str)
  seki_shugo = calcSekiShugo(x_ary, y_ary)
  x_sa_shugo = calcSaShugo(x_ary, y_ary)
  y_sa_shugo = calcSaShugo(y_ary, x_ary)
  if seki_shugo.include?(target_str)
    puts "「#{target_str}」はX,Yどちらの集合にも含まれています"
  elsif x_sa_shugo.include?(target_str)
    puts "「#{target_str}」はXの集合にだけ含まれています"
  elsif y_sa_shugo.include?(target_str)
    puts "「#{target_str}」はYの集合にだけ含まれています"
  else
    puts "「#{target_str}」はX,Yどちらの集合にも含まれていません"
  end
end

input_x = "paraparaparadise"
input_y = "paragraph"
x_n_gram = makeNgramHash(input_x).values.flatten
y_n_gram = makeNgramHash(input_y).values.flatten
whichShugoIncludeString(x_n_gram, y_n_gram, 'se')
# p x_n_gram
# p y_n_gram
# wa_shugo = calcWaShugo(x_n_gram, y_n_gram)
# p wa_shugo
# seki_shugo = calcSekiShugo(x_n_gram, y_n_gram)
# p seki_shugo
# x_sa_shugo = calcSaShugo(x_n_gram, y_n_gram)
# p x_sa_shugo
# y_sa_shugo = calcSaShugo(y_n_gram, x_n_gram)
# p y_sa_shugo


