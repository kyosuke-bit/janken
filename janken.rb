puts "じゃんけん…"

def janken
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  jankens = ["グー", "チョキ", "パー"]

  # playerの選択
  player_choice = gets.to_i
  opponent_choice = rand(3)

  if player_choice == 3
    puts "戦わない！"
    exit
  else
    puts "ホイ！"
    puts "----------"
    puts "あなた：#{jankens[player_choice]}を出しました"
    puts "相手：#{jankens[opponent_choice]}を出しました"
    puts "----------"

    # あいこの場合
    if player_choice == opponent_choice
      puts "あいこで…"
      return true

      # playerが勝ちの場合
    elsif (player_choice == 0 && opponent_choice == 1) || (player_choice == 1 && opponent_choice == 2) || (player_choice == 2 && opponent_choice == 0)
      puts "あっち向いて〜"
      puts "0(上)1(下)2(左)3(右)"
      acchimuite = ["上", "下", "左", "右"]

      player_choice = gets.to_i
      opponent_choice = rand(4)

      puts "ホイ！"
      puts "----------"
      puts "あなた：#{acchimuite[player_choice]}"
      puts "相手：#{acchimuite[opponent_choice]}"
      puts "----------"

      if player_choice == opponent_choice
        puts "あなたの勝ちです！"
      else
        puts "じゃんけん…"
        return true
      end

      # playerが負けの場合
    else
      puts "あっち向いて〜"
      puts "0(上)1(下)2(左)3(右)"
      acchimuite = ["上", "下", "左", "右"]

      player_choice = gets.to_i
      opponent_choice = rand(4)

      puts "ホイ！"
      puts "----------"
      puts "あなた：#{acchimuite[player_choice]}"
      puts "相手：#{acchimuite[opponent_choice]}"
      puts "----------"

      if player_choice == opponent_choice
        puts "あなたの負けです！"
      else
        puts "じゃんけん…"
        return true
      end
    end
  end
end

# じゃんけんであいこ、あっち向いてほいで勝敗が決まらなかった場合
next_game = true
while next_game
  next_game = janken
end
