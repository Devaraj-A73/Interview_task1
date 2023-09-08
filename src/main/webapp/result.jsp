
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Generate Table</title>
</head>
<body>
    <form method="post" action="">
        <label for="txtColumnCount">Enter Column Count:</label>
        <input type="text" id="txtColumnCount" name="txtColumnCount">
        <input type="submit" value="Generate Table" name="btnGenerateTable">
    </form>

    <div id="tableContainer">
        <% 
        if (request.getParameter("btnGenerateTable") != null) {
            int columnCount;
            try {
                columnCount = Integer.parseInt(request.getParameter("txtColumnCount"));
                if (columnCount > 0) {
                    // Create a table
                    out.println("<table border=\"1\">");

                    // Create a header row
                    out.println("<tr>");
                    for (int i = 0; i <= columnCount; i++) {
                        String rowValue = (i == 0) ? "Empty" : Integer.toString(i);
                        out.println("<th>" + rowValue + "</th>");
                    }
                    out.println("<th>Sum</th>");
                    out.println("<th>Avg</th>");
                    out.println("</tr>");

                    // Create the table rows
                    for (int i = 1; i <= columnCount; i++) {
                        int sumValue = 0;
                        float avgValue = 0;
                        out.println("<tr>");
                        for (int j = 0; j <= columnCount; j++) {
                            int cellValue = (j == 0) ? i : (i * j);
                            sumValue = (j != 0) ? (cellValue + sumValue) : sumValue;
                            out.println("<td>" + cellValue + "</td>");
                        }
                        avgValue = (float) sumValue / (float) columnCount;
                        out.println("<td>" + sumValue + "</td>");
                        out.println("<td>" + avgValue + "</td>");
                        out.println("</tr>");
                    }
                    out.println("</table>");
                } else {
                    // if input not valid
                    out.println("Please enter a valid number of columns.");
                }
            } catch (NumberFormatException e) {
                // if user entered wrong input (non-integer)
                out.println("Please enter a valid number of columns.");
            }
        }
        %>
    </div>
</body>
</html>

    
