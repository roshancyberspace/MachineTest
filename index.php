<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Submission</title>
    <link rel="stylesheet" href="assets/css/style.css">

</head>

<body>

 
<div class="container-fluid">
        <div class="row">
            <div class="col-sm-6">
                <form id="submissionForm" action="#" method="post">
                    <table>
                        <tr>
                            <th>Targeted</th>
                            <th>Implemented</th>
                        </tr>
                        <?php
                        for ($i = 1; $i <= 5; $i++) {
                            echo "<tr>
                                <td><input type='number' name='targeted[$i]' min='0' max='5' ></td>
                                <td><input type='number' name='implemented[$i]' min='0' max='5' ></td>
                            </tr>";
                        }
                        ?>
                    </table>
                    <button type="button" onclick="storeDetails()">Store Details</button>
                    <button type="button" onclick="clearForm()">Clear</button>
                </form>
            </div>
            <div class="col-sm-4">
                <canvas id="pieChart" class="chart"></canvas>

            </div>
            <div class="col-sm-4">
                <canvas id="barChart" class="chart"></canvas>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="assets/js/script.js"></script>



    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="assets/js/script.js"></script>

</body>

</html>



