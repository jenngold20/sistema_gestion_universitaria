document.addEventListener('DOMContentLoaded', () => {
    const cells = document.querySelectorAll('.cell');
    const resetButton = document.getElementById('reset');
    let currentPlayer = 'X';
    let gameActive = true;
  
    cells.forEach(cell => {
      cell.addEventListener('click', () => {
        if (gameActive && !cell.textContent) {
          cell.textContent = currentPlayer;
          if (checkWin(currentPlayer)) {
            alert(`Player ${currentPlayer} wins!`);
            gameActive = false;
          } else if (checkDraw()) {
            alert('It\'s a draw!');
            gameActive = false;
          } else {
            currentPlayer = currentPlayer === 'X' ? 'O' : 'X';
          }
        }
      });
    });
  
    resetButton.addEventListener('click', () => {
      cells.forEach(cell => {
        cell.textContent = '';
      });
      currentPlayer = 'X';
      gameActive = true;
    });
  
    function checkWin(player) {
      const winConditions = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [2, 4, 6]
      ];
  
      return winConditions.some(condition => {
        return condition.every(index => {
          return cells[index].textContent === player;
        });
      });
    }
  
    function checkDraw() {
      return [...cells].every(cell => {
        return cell.textContent !== '';
      });
    }
  });
  