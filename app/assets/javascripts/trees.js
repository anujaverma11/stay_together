$.ajax({
           type: "GET",
           contentType: "application/json; charset=utf-8",
           url: 'data',
           dataType: 'json',
           success: function (data) {
               data = data;
           },
           error: function (result) {
               error();
           }
       });

