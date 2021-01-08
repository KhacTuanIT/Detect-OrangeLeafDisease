$(document).ready(function() {
    $("#detect").on('click', function() {
        $.ajax({
            accepts: {
                mycustomtype: 'application/x-some-custom-type'
            },
            url: "detect"
        }).done(function(data) {
            $("#rs").html("<img src='http://127.0.0.1:5000/static/images/uploads/"+ data.img + "' alt='' />");
            $("#name").html(data.disease + " (" + data.vnname + ")");
            $("#symptom").html(data.symptom);
            $("#offer").html(data.offer);
        });
    });
});