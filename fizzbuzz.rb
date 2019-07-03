# 課題
# １から100までの数字を出力するプログラムを書こう
# ただし、3の倍数の時はFizz、5の倍数の時はBuzz、3の倍数かつ5の倍数である時はFizzBuzzという文字を数字の代わりに出力すること
# ※ whileは使用せずに、今週覚えた技術を使ってやってみましょう。

number = [*1..100]
number.each do |x|
    if x % 3 ==0 && x % 5 ==0
        puts "FizzBuzz"
    elsif x % 3 ==0
        puts "Fizz"
    elsif x % 5 ==0
        puts "Buzz"
    else 
        puts x
    end
end



