jQuery(document).ready(function(){
    $.ajax({
        type: "POST",
        url: "AjaxFunction/DepartmentWS.asmx/getdepartmentCount",
        //data: jsonData,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: OnSuccess_,
        error: OnErrorCall_
    });

    function OnSuccess_(reponse) {
        var aData = reponse.d;           
        var aDatasets1 = aData[0];
        var aDatasets2 = aData[1];
        var aDatasets3 = aData[2];

        var data = {
            labels: aLabels,
            datasets: [{
                label: "ushering",
                fillColor: "rgba(220,220,220,0.2)",
                strokeColor: "rgba(220,220,220,1)",
                pointColor: "rgba(220,220,220,1)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(220,220,220,1)",
                data: aDatasets1
            },
            {
                label: "welfare",
                fillColor: "rgba(151,187,205,0.2)",
                strokeColor: "rgba(151,187,205,1)",
                pointColor: "rgba(151,187,205,1)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(151,187,205,1)",
                data: aDatasets2
            },
             {
                 label: "intercessors",
                 fillColor: "rgba(123,209,205,0.2)",
                 strokeColor: "rgba(151,187,205,1)",
                 pointColor: "rgba(151,187,205,1)",
                 pointStrokeColor: "#fff",
                 pointHighlightFill: "#fff",
                 pointHighlightStroke: "rgba(151,187,205,1)",
                 data: aDatasets2
             }
            ]
        };

        var ctx = $("#myChart").get(0).getContext('2d');
        ctx.canvas.height = 300;  // setting height of canvas
        ctx.canvas.width = 500; // setting width of canvas
        var lineChart = new Chart(ctx).Line(data, {
            bezierCurve: false
        });
    }
    function OnErrorCall_(repo) {
        alert("Woops something went wrong, pls try later !");
    }
});


});

       