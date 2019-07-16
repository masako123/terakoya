puts "こんにちは、じゃんけんしましょう。"
puts "最初はグー、じゃんけん
数字を選んでください >>>>"

class Janken
    CHOICE = ["グー", "チョキ", "パー"]
    def janken_game(number)
        while @my_choice == @cpu_choice do
            @my_choice = CHOICE[number]
            @cpu_choice = CHOICE.sample
            puts "あなたは#{@my_choice},私は#{@cpu_choice}"
            if @my_choice == @cpu_choice
                puts "あいこで　しょ！"
            end
        end
    end
    def result
        if @my_choice == "グー" && @cpu_choice == "チョキ"
            puts "YOU WIIIIIIN!" 
        elsif @my_choice ==  "チョキ" && @cpu_choice == "パー"
            puts "YOU WIIIIIIN!"
        elsif @my_choice ==  "パー" && @cpu_choice == "グー"
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


# 再考してみる 

def hands_list
    hash = {}
    hash[:rock] = { win: "paper", loose: "scissors", even: "rock" }
    hash[:scissors] = { win: "rock", loose: "paper", even: "scissors" }
    hash[:paper] = { win: "scissors", loose: "rock", even: "paper" }
    hash
end

def win_choice(hand)
    hands_list[hand][:win]
end

player_hand = player.show_hand

cpu_hand = cpu_player.show_random_hand

win_hand = win_choice(player_hand)
cpu_hand = win_hand

# 途中経過
# 最終的にplayer.win?で返すようにしたい



