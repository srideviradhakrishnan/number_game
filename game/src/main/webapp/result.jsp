<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Number Guessing Game - Result</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to CSS file for styling -->
</head>
<body>
<div class="container">
    <h1>Number Guessing Game - Result</h1>

    <%-- Retrieve user's guess from the request --%>
    <% int guess = Integer.parseInt(request.getParameter("guess")); %>

    <%-- Generate a random number --%>
    <% Random random = new Random(); %>
    <% int secretNumber = random.nextInt(100) + 1; %>

    <%-- Compare the guess with the secret number --%>
    <%
        String message;
        if (guess < secretNumber) {
            message = "Too low! Try a higher number.";
        } else if (guess > secretNumber) {
            message = "Too high! Try a lower number.";
        } else {
            message = "Congratulations! You guessed the number " + secretNumber + " correctly.";
        }
    %>

    <p><%= message %></p>

    <p><a href="index.jsp">Play Again</a></p>
</div>
</body>
</html>
