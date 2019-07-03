number = 1
while number < 101
    if number % 3 ==0
        puts "Yeaaaaah"
    elsif number.even?
        puts "#{number}は偶数です"
    else number.odd?
        puts "#{number}は奇数です"
    end
    number += 1
end