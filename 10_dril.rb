# 10_dril.rb
# 行数をカウントする
def line_count(filename)
  lines = 0
  open(filename) do|file|
    while l = file.gets
      lines += 1
    end
  end
  return lines
end
puts line_count("hightemp.txt")