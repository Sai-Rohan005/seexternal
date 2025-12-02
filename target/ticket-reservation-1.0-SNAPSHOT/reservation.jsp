<!DOCTYPE html>
<html>
<head>
    <title>Book a Ticket - Online Ticket Reservation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f0f8ff; /* light blue background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .reservation-form {
            background: #ffffff; /* white form background */
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            width: 400px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 14px;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #007acc;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            background-color: #005f99;
        }
    </style>
</head>
<body>
    <div class="reservation-form">
        <h1>Ticket Reservation</h1>
        <form action="ReservationServlet" method="post">
            <label for="name">Full Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="source">From:</label>
            <input type="text" id="source" name="source" required>

            <label for="destination">To:</label>
            <input type="text" id="destination" name="destination" required>

            <label for="date">Travel Date:</label>
            <input type="date" id="date" name="date" required>

            <label for="seats">Number of Seats:</label>
            <input type="number" id="seats" name="seats" min="1" required>

            <button type="submit">Book Ticket</button>
        </form>
    </div>
</body>
</html>
