@main
struct NumGuess {
    static func main() {
        print("Guess a number 1 through 100! I'll wait.")
        let answer = Int.random(in: 1...100)
        var guess = 0
        repeat {
            print("What is your guess? : ", terminator: "")

            if let input = readLine() {
                if let number = Int(input) {
                    guess = number
                }
                else {
                    print("That is not a number silly. Try again!")
                    continue
                }
            }
            else {
                print("Oh no! I think something went wrong. :( Im gonna stop now")
                break
            }

            if(guess > 100 || guess < 1) {
                print("That number is outside the range! Try again!")
                continue
            }

            if(guess > answer) {
                print("That is too high. Try again!")
            }
            if(guess < answer) {
                print("That is too low. Try again!")
            }
        }
        while(answer != guess)

        if(answer == guess) {
            print("Yay! You win!")
        }
    }
}