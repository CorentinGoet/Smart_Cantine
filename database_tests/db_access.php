<!DOCTYPE html>
<html>
    <head>
        <title>
            Test Database access
        </title>
    </head>
    <body>
        Hello world !

        <table>
            <tr>
                <th>ID</th>
                <th>DATE</th>
                <th>MESURE</th>
            </tr>
        
        <?php
            $conn = mysqli_connect("localhost", "website", "webpass", "test_db");
            // checking if connection failed
            if ($conn ->connect_error){
                die("Connection failed".£conn->connect_error);
            }

            // MySQL query
            $sql = "SELECT id_mesure, date_mesure, niveau_sonore FROM mesures";
            $result = $conn->query($sql);
            
            //display output
            if($row = $result -> num_rows > 0){
                while($row = $result->fetch_assoc()){
                    echo "<tr><td>" . $row["id_mesure"] . "</td><td>" . $row["date_mesure"] . "</td><td>" . $row["niveau_sonore"] . "</td></tr>";
                }
                echo </table>
            }
            else{
                echo "0 results";
            }
            $conn->close();
            ?>

        </table>

    </body>
</html>