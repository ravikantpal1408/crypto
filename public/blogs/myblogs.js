

jQuery(document).ready(function(){
    
    var blogid = getParameterByName("blog");
    alert(blogid)
    
    if(blogid != "" || blogid!= null)
    {
        
        getMyBlog(blogid);
    }
    
    
    
}) 

function getMyBlog(id)
{
    $.ajax({
        type: 'POST',
        url: '/myBlog',
        data: "{'id': '" + id + "'}",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        success: function(res){
            
            //alert(JSON.stringify(res))
            console.log(res)
            
        },
        error: function(err){
            console.log(err)
        }
        
        
    })
    
    
}
 
 
 
 
 function getParameterByName(name, url) 
      {
          if (!url) url = window.location.href;
          name = name.replace(/[\[\]]/g, "\\$&");
          var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
              results = regex.exec(url);
          if (!results) return null;
          if (!results[2]) return '';
          return decodeURIComponent(results[2].replace(/\+/g, " "));
      }