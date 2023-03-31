def print_board(board):
    print("\n")
    for i in range(3):
        for j in range(3):
            print(board[i][j], end=" ")
        print("\n")

def check_win(board):
    for i in range(3):
        # Check rows
        if board[i][0] == board[i][1] == board[i][2] != "-":
            return True
        # Check columns
        elif board[0][i] == board[1][i] == board[2][i] != "-":
            return True
    # Check diagonals
    if board[0][0] == board[1][1] == board[2][2] != "-":
        return True
    elif board[0][2] == board[1][1] == board[2][0] != "-":
        return True
    return False

def check_tie(board):
    for i in range(3):
        for j in range(3):
            if board[i][j] == "-":
                return False
    return True

def play_game():
    board = [["-", "-", "-"], ["-", "-", "-"], ["-", "-", "-"]]
    player = "X"

    while True:
        # Print the board
        print_board(board)

        # Get the player's move
        row = int(input("Enter the row number (0, 1, or 2): "))
        col = int(input("Enter the column number (0, 1, or 2): "))

        # Check if the move is valid
        if board[row][col] != "-":
            print("Invalid move! That spot is already taken. Try again.")
            continue

        # Update the board
        board[row][col] = player

        # Check if the game is won or tied
        if check_win(board):
            print_board(board)
            print(f"{player} wins!")
            break
        elif check_tie(board):
            print_board(board)
            print("The game is tied!")
            break

        # Switch to the other player
        player = "O" if player == "X" else "X"

play_game()
