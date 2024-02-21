// $(document).ready(function () {

    function storeDetails() {
       
        $.ajax({
            type: 'POST',
            url: 'store.php',
            data: $('#submissionForm').serialize(),
            success: function (response) {
                 
               var r =JSON.parse(response);
               if(r.status == "success"){
                   clearForm();
                   alert(r.message);
                   drawGraph(r.data);
               }else{
                alert(r.message);
               }

            },
            error: function (error) {
                alert(error);
            }
        });
    }

    function clearForm() {
        document.getElementById("submissionForm").reset();
    }


    function drawGraph(data) {
        var keys = [];
        var percentages = [];
    
        var targetedData = JSON.parse(data[0].targetted);
        var implementedData = JSON.parse(data[0].implemented);
    
        for (var i = 0; i < targetedData.length; i++) {
            var targetedValue = targetedData[i].value;
            var implementedValue = implementedData[i].value;
    
            if (targetedValue === implementedValue) {
                keys.push(targetedData[i].key);
                percentages.push(100);
            } else if (targetedValue !== null && implementedValue !== null) {
                keys.push(targetedData[i].key);
                percentages.push(0);
            } else {
                keys.push(targetedData[i].key);
                percentages.push(0);
            }
        }
     
    
        var ctxBar = document.getElementById('barChart').getContext('2d');
        var ctxPie = document.getElementById('pieChart').getContext('2d');
    
        var barChart = new Chart(ctxBar, {
            type: 'bar',
            data: {
                labels: keys,
                datasets: [{
                    label: 'Percentage',
                    data: percentages,
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true,
                        max: 100
                    }
                },
                layout: {
                    padding: {
                        left: 50, 
                        right: 50, 
                        top: 50, 
                        bottom: 50 
                    }
                },
                maintainAspectRatio: false,  
                responsive: true,
                aspectRatio: 2,  
                height: 200,  
                width: 200  
            }
        });
    
        var pieChart = new Chart(ctxPie, {
            type: 'pie',
            data: {
                labels: keys,
                datasets: [{
                    data: percentages,
                    backgroundColor: ['rgba(255, 99, 132, 0.2)', 'rgba(255, 205, 86, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(75, 192, 192, 0.2)', 'rgba(153, 102, 255, 0.2)'],
                    borderColor: ['rgba(255, 99, 132, 1)', 'rgba(255, 205, 86, 1)', 'rgba(54, 162, 235, 1)', 'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)'],
                    borderWidth: 1
                }]
            },
        });
    }
       
// });
