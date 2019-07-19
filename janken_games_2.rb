
# オブジェクト指向

# じゃんけんのルールを定義
class Rule
    HANDS = [:rock, :scissors, :paper]
    def hands_list
        hash = {}
        hash[:rock] = { win: "scissors", loose: "paper", even: "rock" }
        hash[:scissors] = { win: "paper", loose: "rock", even: "scissors" }
        hash[:paper] = { win: "rock", loose: "scissors", even: "paper" }
        hash
    end
    def win_choice(hand)
        hands_list[hand][:win]
    end
end

# じゃんけんをする登場人物の定義
class Player
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

# じゃんけんを実施することを定義
class Event
    include Rule
    def initialize(player, cpu)
        @player = player
        @cpu = cpu

        # puts "Hello #{@player}san, let's play Janken."
        # play_start
    end

    def play_start
        puts "Rock, Scissors, Paper, GO!"
        puts "Select by index number from 1 to 3  >>>>"
    end

    def show_hands
        index = 1
        HANDS.each do |x|
            puts "#{x}:#{index}"
            index += 1
        end
        # puts "Rock:1"
        # puts "Scissors:2"
        # puts "Paper:3"
    end

    def player_input
        @number = gets.chomp.to_i - 1 
    end

    def player_output
        HANDS[@number]
    end

    def cpu_output
        HANDS.sample
    end

    def players_output
        [player_output, cpu_output]
        puts "#{@player}san showed #{player_output}, #{@cpu} showed #{cpu_output}"
    end
    
    def judge
        if player_output == win_choice(player_output)?
            puts "YOU WIIIIIIN!"
        elsif player_output == cpu_output
            puts "Even. Play again."
            play_start
        elsif @number != 1 || 2 || 3
            puts "Oops, you've mistyped the number."
            play_start
        else
            puts "YOU LOOOOOOSE"
        end
    end
end



player = Player.new("masako")
player2 = Player.new("cpu")
event = Event.new(player, player2)

event.play_start
event.show_hands_list
event.player_input
player = event.player_output
event.cpu_input
cpu = event.cpu_output
winner = event.judge

event.judge
event.show_result
event.winner?








