<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Number Guessing Game</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to CSS file for styling -->
</head>
<body>
<div class="container">
    <h1>Number Guessing Game</h1>
    <form action="result.jsp" method="post">
        <p>I'm thinking of a number between 1 and 100.</p>
        <p>Enter your guess:</p>
        <input type="number" id="guess" name="guess" min="1" max="100">
        <button type="submit">Guess</button>
    </form>
</div>
</body>
</html>
