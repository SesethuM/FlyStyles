<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Cart</title>
<%@include file="Includes/Header.jsp" %>
<style>
    .container {
        padding: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    table, th, td {
        border: 1px solid #ddd;
    }
    th, td {
        padding: 15px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    .total {
        text-align: right;
    }
</style>
</head>
<body>
<div class="container">
    <h2>Your Cart</h2>
    <table>
        <thead>
            <tr>
                <th>Product</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
            <% 
                // Load MySQL driver
                Class.forName("com.mysql.jdbc.Driver");
                
                // Connect to the database
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/FlyStylesDB", "root", "password");
                
                // Query the Cart table
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM Cart");

                // Initialize total amount
                double totalAmount = 0;

                while(rs.next()) {
                    int id = rs.getInt("id");
                    String productName = rs.getString("product_name");
                    double price = rs.getDouble("price");
                    int quantity = rs.getInt("quantity");
                    double total = price * quantity;
                    totalAmount += total;
            %>
            <tr>
                <td><%= productName %></td>
                <td>$<%= price %></td>
                <td><%= quantity %></td>
                <td>$<%= total %></td>
            </tr>
            <% 
                }
                rs.close();
                stmt.close();
                conn.close();
            %>
        </tbody>
    </table>
    <h3 class="total">Total: $<%= totalAmount %></h3>
</div>
<%@include file="Includes/Footer.jsp" %>
</body>
</html>
