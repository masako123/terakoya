puts "こんにちは、じゃんけんしましょう。"
puts "最初はグー、じゃんけん
数字を選んでください >>>>"

class Janken
    CHOICE = ["グー", "チョキ", "パー"]
    def janken_game(number)
        while @your_choice == @my_choice do
            @your_choice = CHOICE[number]
            @my_choice = CHOICE.sample
            puts "あなたは#{@your_choice},私は#{@my_choice}"
            if @your_choice == @my_choice
                puts "あいこで　しょ！"
            end
        end
    end
    def result
        if @your_choice == "グー" && @my_choice == "チョキ"
            puts "YOU WIIIIIIN!" 
        elsif @your_choice ==  "チョキ" && @my_choice == "パー"
            puts "YOU WIIIIIIN!"
        elsif @your_choice ==  "パー" && @my_choice == "グー"
            puts "YOU WIIIIIIN!"
        else
            puts "YOU LOOOOOOSE"
        end
    end
end

index = 1
Janken::CHOICE.each do |x|
    puts "#{x}:#{index}"
    index += 1
end

janken = Janken.new
janken.janken_game(gets.chomp.to_i - 1)
janken.result

#=> MasakonoAir:terakoya hmasako$ ruby janken_games.rb 
# こんにちは、じゃんけんしましょう。
# 最初はグー、じゃんけん
# 数字を選んでください >>>>
# グー:1
# チョキ:2
# パー:3
# 1
# あなたはグー,私はグー
# あいこで　しょ！
# あなたはグー,私はグー
# あいこで　しょ！
# あなたはグー,私はパー
# YOU LOOOOOOSE
# MasakonoAir:terakoya hmasako$ ruby janken_games.rb 
# こんにちは、じゃんけんしましょう。
# 最初はグー、じゃんけん
# 数字を選んでください >>>>
# グー:1
# チョキ:2
# パー:3
# 2
# あなたはチョキ,私はチョキ
# あいこで　しょ！
# あなたはチョキ,私はチョキ
# あいこで　しょ！
# あなたはチョキ,私はパー
# YOU WIIIIIIN!
# MasakonoAir:terakoya hmasako$ ruby janken_games.rb 
# こんにちは、じゃんけんしましょう。
# 最初はグー、じゃんけん
# 数字を選んでください >>>>
# グー:1
# チョキ:2
# パー:3
# 3
# あなたはパー,私はチョキ
# YOU LOOOOOOSE

