$(function(){
    function buildHTML(gallery) {
       var html = `<div class="gallery-img">
                        <img src="${gallery.image}">
                    </div>`
       return html;
    }
    $('#new_gallery').on('submit', function(e){
        e.preventDefault();
        var url = $(this).attr('action')
        var formData = new FormData(this);
        $.ajax({
            url:url,
            type: "POST",
            data: formData,
            dataType: 'json',
            processData: false,
            contentType: false
        })
        .done(function(data){
            var html = buildHTML(data);
            $('.img-add').prepend(html)
            $('#new_gallery')[0].reset();
            $('#submit').prop('disabled', false)
        })
        .fail(function(){
            alert('error');
            $('#submit').prop('disabled', false)
          });
    });
});