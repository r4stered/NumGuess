@main
struct NumGuess {
    static func main() {
        print("Guess a number 1 through 100! I'll wait.")
        let answer = Int.random(in: 1...100)
        var guess = 0
        repeat {
            print("What is your guess? : ", terminator: "")

            guard let input = readLine() else {
                print("Oh no! I think something went wrong. :( Im gonna stop now")
                break
            }

            guard let number = Int(input) else {
                print("That is not a number silly. Try again!")
                continue
            }

            guess = number

            guard 1...100 ~= guess else {
                print("That number is outside the range! Try again!")
                continue
            }

            if guess > answer {
                print("That is too high. Try again!")
            } else if guess < answer {
                print("That is too low. Try again!")
            }
        }
        while answer != guess

        if answer == guess {
            print("Yay! You win!")
        }
    }
}