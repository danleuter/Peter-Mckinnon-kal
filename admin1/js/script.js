    
    $(document).ready(function () {
      $('#sidebar div a').removeClass("active");	
        var p = $('#Page-title').text();
        x = p.substring(1, 4);
      
        switch(x) {
            case 'DAS':
                $('#dashboard').addClass("active");
                break;
            case 'PUB':
                $('#published').addClass("active");
                break;
            case 'DRA':
                $('#draft').addClass("active");
                break;
            case 'POO':
                $('#pool').addClass("active");	
                break;
            case 'PRO':
                $('#profile').addClass("active");
                break;
            case 'MES':
                $('#messages').addClass("active");
                break;
            default:
        }
        // $(document).on('click', '.list-group .list-group-item', function(){
        // $(this).addClass('active').siblings().removeClass('active')

    
        // });
    })