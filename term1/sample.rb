class Player
  def hand
    huga = gets.chomp
    if (huga == "2") || (huga == "1") || (huga == "0")  then
       huga = huga.to_i
      return huga
    else 
      puts "もう一度入力してください"
      return hand()
    end
  end 
end


class Enemy
  def hand
    random = Random.new()
    rand_int = random.rand(0..2)
    return rand_int
  end
end


class Janken
  def pon(player_hand, enemy_hand)
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    if (player_hand == enemy_hand) then
      player1 = Player.new
      enemy1 = Enemy.new
      janken1 = Janken.new
      puts "あいこです！もう一度ジャンケンしてください！"
      return janken1.pon(player1.hand, enemy1.hand)
    end
    
    if enemy_hand == 0 then
      enemy = "グー"
    elsif enemy_hand == 1 then 
      enemy = "チョキ"
    elsif enemy_hand == 2 then 
      enemy = "パー"
    end  
    
    if (player_hand == 0 && enemy_hand == 1) or (player_hand == 1 && enemy_hand == 2) or (player_hand == 2 && enemy_hand == 0) then
      puts "相手の手は#{enemy}です。あなたの勝ちです。"
    elsif (player_hand == 1 && enemy_hand == 0) or (player_hand == 2 && enemy_hand == 1) or (player_hand == 0 && enemy_hand == 2) then
      puts "相手の手は#{enemy}です。あなたの負けです。"   
    end
  end
end



puts "数字を入力してください。"
puts "0: グー"
puts "1: チョキ"
puts "2:  パー"

player = Player.new
enemy = Enemy.new
janken = Janken.new
janken.pon(player.hand, enemy.hand)
