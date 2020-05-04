/*Reset form*/

$(window).on('load', function() { $('#form_request')[0].reset();});


/*Add files to multiple download*/

$(function () {

    var inputs = $('.inputfile');

    Array.prototype.forEach.call(inputs, function(input){

        var label  = input.previousElementSibling,
            labelVal = label.innerHTML;
            input.addEventListener('change', function(e){
    
            var fileName = '';
    
            if( this.files && this.files.length > 1 )
            fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );
            else 
            fileName = e.target.value.split( '\\' ).pop();    
            if( fileName )
            label.querySelector( 'span' ).innerHTML = "<div class='downloadFile_block'>" + fileName + "<i id='reset_value' class='lnr lnr-cross'></i></div>";
        else
          label.innerHTML = labelVal;
        });

    //input.addEventListener('focus', function(){ input.classList.add( 'has-focus' ); });input.addEventListener('blur', function(){ input.classList.remove( 'has-focus' ); });

    });


    /*Clear multiple download*/
    
    $(function () {
    
        $('.file_name').on('click', '.downloadFile_block #reset_value', function(){
    
        $('.downloadFile_block').remove();
        document.getElementById("file").value = null;

        })
          
    });

}); 



/*Active botton*/

 $(window).on('load', function(){

    $('#invalidCheck, #invalidCheck2').on('change', function (e) {

        $('#invalidCheck').is(':checked') && $('#invalidCheck2').is(':checked') ?
        $('.btn_submit').attr('disabled', false):
        $('.btn_submit').attr('disabled', true)
    })

      $('.btn_submit').attr('disabled', true);
})





