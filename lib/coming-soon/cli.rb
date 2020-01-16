class CLI 
  
  def call 
    puts "Check out these cool games coming soon to Nintendo Switch! "
    Games.all 
    menu
  end 
  
  def menu
    puts "Please choose a number for more info, list, or exit: "
    if @input.downcase == "list"
        call
      elsif @input.downcase == "exit"
        goodbye
      elsif @input.to_i.between?(1, Games.all.count)
        #select_game_by_number
      else
        "I don't understand what you entered, try again."
        call
      end
  end 
  
  def goodbye
    puts "Thank you for checking out the upcoming games."
    break 
  end 
  
end 