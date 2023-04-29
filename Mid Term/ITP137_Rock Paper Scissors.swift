import Foundation
import Glibc

func get_npc_choice() -> String{
  return choices[Int.random(in: 0...2)]
}

func get_pc_choice() -> String{
  var pc_input: Int = -1
  while(true){
    print("Enter your selection: \n1: Rock \n2: Paper \n3: Scissors\n")
    pc_input = Int(readLine()!)!
    if 1...3 ~= pc_input{
      return(choices[pc_input-1])
    }
    print("\nInvalid Selection.\n")
  }
}

func get_winner(_ pc: String, _ npc: String) -> String{
//There are... a handful of ways I would know to do this better (a 2d array would be perfect)
  var pc_win: Int = 0//-1 loss, 0 draw, 1 victory
  switch pc{
    case "Rock":
      switch npc{
        case "Paper":
          pc_win = -1
        case "Scissors":
          pc_win = 1
        default:
          pc_win = 0
      }
    case "Paper":
        switch npc{
        case "Rock":
          pc_win = 1
        case "Scissors":
          pc_win = -1
        default:
          pc_win = 0
      }
    case "Scissors":
        switch npc{
        case "Rock":
          pc_win = -1
        case "Paper":
          pc_win = 1
        default:
          pc_win = 0
      }
    default:
          print("Whoops, that shouldn't have happened")
  }

  switch pc_win{
    case -1:
      return("You lost, try again!")
    case 0:
      return("Its a draw!")
    case 1:
      return("You won, good job!")
    default:
      return("Whoops, that shouldn't have happened")
  }
}

let choices = ["Rock", "Paper", "Scissors"]

print("Welcome to Rock Paper Scissors!") 

var pc_choice = get_pc_choice()
print("You chose \(pc_choice).\n")

var npc_choice = get_npc_choice()
print("The computer chose \(npc_choice).\n")

print(get_winner(pc_choice, npc_choice))