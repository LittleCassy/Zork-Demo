import Foundation


var continueGame = true
var inventory = [String]()

func greet() {
    
    print("Welcome to Cassy-Zork!")
    print("Write 'help' for a command list. This is a short demo, I hope you enjoy it.")

    print("\n\nYou got off from you car. Rain's rattling in the windshield, pouring down on you. \n\nThe house is almost a ruin, but it's still stands. As a fair reminder that not even death tears apart the suffering. It rises it? Maybe not. But time takes a toll, as a unattended wound.")
    print("What would you like to do?\n\n")

    while continueGame {
        
        let entrada = readLine()!
        system("cls")
        print("Welcome to Cassy-Zork!")
        print("Write 'help' for a command list.")
        print("\n\nYou got off from you car. Rain's rattling in the windshield, pouring down on you. \n\nThe house is almost a ruin, but it's still stands. As a fair reminder that not even death tears apart the suffering. It rises it? Maybe not. But time takes a toll, as a unattended wound.")
        print("What would you like to do?\n\n")

        switch entrada.lowercased() {
        case "help":
            print("This are the available commands: 'look around', 'go to the door', 'look at the car'. If you want to quit, write 'exit'")
        case "look around":
            print("Everything seems to be crumbling down. Dead bushes, gray skies, decrepid walls. Not even the door seems to be holding on.")
        case "go to the door":
            print("You move closer to the door.")
            nearDoor()
        case "look at the car":
            print("There's no turning back now. I need to know what happend. I need to appease my mind.")
        case "exit":
            print("Thanks for playing Cassy-Zork!")
            continueGame=false
        default:
            print("I could not understand that. Write 'help' for a command list.")
        }
    }
}


func nearDoor() {
    print("\n\nThe walls are covered in vines and mushrooms. It's been long since the last human being got here. You fear a rush of adrenaline, but a chill runs down your spine. Something's off.")
    print("What would you like to do?\n\n")

    while continueGame {
        
        let entrada = readLine()!
        system("cls")
        print("Welcome to Cassy-Zork!")
        print("Write 'help' for a command list.")
        print("\n\nThe walls are covered in vines and mushrooms. It's been long since the last human being got here. You fear a rush of adrenaline, but a chill runs down your spine. Something's off.")
        print("What would you like to do?\n\n")

        switch entrada.lowercased() {
        case "help":
            print("This are the available commands: 'look around', 'open door', 'check doormat', 'go back'. If you want to quit, write 'exit'")
        case "look around":
            print("Everything seems to be crumbling down. Dead bushes, gray skies, decrepid walls. Not even the door seems to be holding on.")
        case "open door":
            if inventory.contains("Key") {
                print("The key fits perfectly, but it won't come out again.")
                doorOpening()
            }else{
                print("The door won't budge at all. There is a keyhole on the door knob.")
            }
        case "check doormat":
            if inventory.contains("Key"){
                print("There's nothing else down there.")
            }else{
                print("The doormat looks strange...")
                keyMat()
            }
            
        case "go back":
            print("You coward...")
            greet()
        case "exit":
            print("Thanks for playing Cassy-Zork!")
            continueGame=false
        default:
            print("I could not understand that. Write 'help' for a command list.")
        }
    }
}

func keyMat() {
    print("\n\nThere's dust and mud all around the front porch... But still, the doormat looks squeaky clean. Is there someone else here? Is there something beneath it?")
    print("What would you like to do?\n\n")
    print("\n")

    while continueGame {
        
        let entrada = readLine()!
        system("cls")
        print("Welcome to Cassy-Zork!")
        print("Write 'help' for a command list.")
        print("\nn\nThere's dust and mud all around the front porch... But still, the doormat looks squeaky clean. Is there someone else here? Is there something beneath it?")
        print("What would you like to do?\n\n")

        switch entrada.lowercased() {
        case "help":
            print("This are the available commands: 'rise doormat', 'go back', 'look at doormat'. If you want to quit, write 'exit'")
        case "rise doormat":
            if !inventory.contains("Key") {
                print("With a bit of fear, you rise it. Cockroaches run all around you fleeing from their broken hideout. All what's left, is a key.")
                print("Found: Main door Key")
                inventory.append("Key")
            }else{
                print("There's nothing else.")
            }
        case "look at doormat":
            print("It's clean, with a big muddy footstep in the middle of it. Way bigger than yours.")
        case "go back":
            print("You stand up and look at the door")
            nearDoor()
        case "exit":
            print("Thanks for playing Cassy-Zork!")
            continueGame=false
        default:
            print("I could not understand that. Write 'help' for a command list.")
        }
    }
}

func doorOpening() {
    print("\n\nYou open the door, creaky and noisy. The darkness engulfs you like a shroud, pulling you in within a blink. Constraining you. Making you unable to breath. It's you end...")
    print("Continue?\n\n")

    while continueGame {
        
        let entrada = readLine()!
        system("cls")
        print("Welcome to Cassy-Zork!")
        print("Write 'help' for a command list.")
        print("\n\nYou open the door, creaky and noisy. The darkness engulfs you like a shroud, pulling you in within a blink. Constraining you. Making you unable to breath. It's you end...")
        print("Continue?\n\n")

        switch entrada.lowercased() {
        case "help":
            print("No one is coming to save you.")
        case "exit":
            print("There's no where to run...")
            continueGame=false
        default:
            print("I could not understand that. Write 'help' for a command list.")
        }
    }
}

greet()
