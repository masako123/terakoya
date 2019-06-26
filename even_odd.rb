n = 0
while n < 100
    n = n + 1
    if n.even?
        puts "#{n}は偶数です"
    else n.odd?
        puts "#{n}は奇数です"
    end
end
