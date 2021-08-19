document.addEventListener('turbolinks:load', function(){
     var links = document.getElementsByTagName('a')
     for(link of links){
         link.addEventListener('click', function(e){
             e.preventDefault()
             $ajax({
                 url: e.target.href,
                 method: 'get',
                 dataType: 'script',
                 error: function(error){console.log(error)}
             })
         })
     }
 })
