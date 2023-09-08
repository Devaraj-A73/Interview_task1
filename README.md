# Interview_task1
Task to create dynamic table generation
    It sets the character encoding and page encoding to UTF-8 for proper text handling
    It defines the structure of an HTML page with a title.
    Inside the <body> section, there's an HTML form.
    The form is configured to send data using the HTTP POST method to the same page (empty action attribute), meaning it will send the form data back to itself for processing.
    The form includes a label "Enter Column Count" and an input field named "txtColumnCount" where users can enter a number.
    It also includes a submit button labeled "Generate Table" with the name "btnGenerateTable."
    Below the form, there's a <div> element with the id "tableContainer" where the generated table will be displayed.
    Inside the <% ... %> tags, there's Java code that checks if the "Generate Table" button has been clicked. If it has, it proceeds to generate the table based on the user's input.
    It tries to parse the user's input as an integer called "columnCount."
    If "columnCount" is greater than 0, it generates an HTML table with headers and rows based on the input value.
    The header row contains column numbers from 0 to "columnCount," as well as columns for "Sum" and "Avg."
    It calculates and displays the sum and average of the rows in the table.
    If the input is not a valid integer or is less than or equal to 0, it displays an error message asking the user to enter a valid number of columns.

In summary, this JSP file provides a web page where users can enter a number. When they click the "Generate Table" button, it generates an HTML table with the specified number of columns and calculates the sum and average of the values in each row. If the input is invalid, it displays an error message.
