

jQuery(document).ready(function(){
    
    var blogid = getParameterByName("blog");
    //alert(blogid)
    
    if(blogid != "" || blogid!= null)
    {
        
        getMyBlog(blogid);
    }
    
    
    
}) 

function getMyBlog(id)
{
    console.log(id)
    $.ajax({
        type: 'POST',
        url: '/myBlog',
        data: { 'blogid' : id },
        contentType: "application/json; charset=utf-8", 
        dataType: "json",
        success: function(data){
            
            //alert(JSON.stringify(res))
            console.log(data)
       
                console.log(data.id)
                $("#ct_heading").html(data.title);
                $("#ct_content").html(data.content);
                
       
            
        },
        error: function(errorThrown){
            
            console.log(errorThrown)
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