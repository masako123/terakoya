class Janken
    HANDS = [:rock, :scissors, :paper]
  
    def initialize
        puts "こんにちは、じゃんけんしましょう。"
        puts "最初はグー、じゃんけん、"
        puts "数字を選んでください  >>>>"
    end
  
    def display_hand_text(hand)
        case hand
        when :rock
            "グー"
        when :scissors
            "チョキ"
        when :paper
            "パー"
        end
    end
    
    # インデント付きでじゃんけんの手札を表示する
    def display_hands
        HANDS.each_with_index do |hand, i|  
            puts "#{display_hand_text(hand)}:#{i+1}"
        end
    end 

    # 入力値を定義し、入力値を間違うと繰り返すことも定義
    def player_input
      display_hands
      @player_hand_number = gets.chomp.to_i - 1
      result = correct_input?(@player_hand_number)
      player_input unless result
    end
    
    def player_output
      HANDS[@player_hand_number]
    end
  
    def cpu_player_input
      @item = HANDS.sample
    end
  
    def cpu_player_output
      @item
    end
  
    def players_output
      [player_output, cpu_player_output]
    end
  
    def display_players_output
      puts "あなたは#{display_hand_text(player_output)}, 私は#{display_hand_text(cpu_player_output)}"
    end
    
    # 勝ちパターン
    def hands_win_list
        hash = {}
        hash[:rock] = :scissors
        hash[:scissors] = :paper
        hash[:paper] = :rock
        hash
    end

    def player_win_hand
        hands_win_list[player_output]
      end

    # アイコかどうか判定するメソッド
    def even?
        players_output.uniq.count == 1
    end
    # 入力値が正しいかどうか判定するメソッド
    def correct_input?(input)
        if [0,1,2].include?(input)
          true
        else
          puts "おっと、入力した値が間違っています。"
          false
        end
    end

    def display_try_again
      puts "もう一回。アイコ　でしょ！"
    end
  
    def judge
        display_players_output
        while even? do
            display_try_again
            player_input
            display_players_output
        end
        if player_win_hand == cpu_player_output
            puts "YOU WIIIIIIN!"
        else
            puts "YOU LOOOOOOSE"
        end    
    end   
end


janken = Janken.new
janken.player_input
janken.cpu_player_input
janken.judge