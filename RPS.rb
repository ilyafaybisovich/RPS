def say(message)
  puts "=> #{message}"
end

begin 
def what_beats_what (object_1, object_2)
  if (object_1 == "p" && object_2 == "s")||(object_1 == "s" && object_2 == "p")
    say("Scissors cut paper.")
  elsif (object_1 == "r" && object_2 == "s")||(object_1 == "s" && object_2 == "r")
    say("Rock blunts scissors.")
  elsif (object_1 == "r" && object_2 == "p")||(object_1 == "p" && object_2 == "r")
    say("Paper wraps rock.")  
  end    
end

def who_wins (player_1, player_2)
  combo = player_1 + player_2
  if combo ==  "pr" || combo == "rs" || combo == "sp"
    say("You win!")
  else 
    say("Computer wins.")
  end
end

choices = ["r","p","s"]

computer = choices.sample
 
begin
  say("Please choose one (r/p/s):")
  you = gets.chomp.downcase
end until choices.include?(you)
#until (you == "r" || you == "p" || you == "s")

say("You picked #{you} and computer picked #{computer}.")

if you == computer
  say ("It's a tie!")
else 
  what_beats_what(you, computer)
  who_wins(you, computer)
end

say("Want a rematch?")
rematch = gets.chomp.upcase
end while rematch == "Y"