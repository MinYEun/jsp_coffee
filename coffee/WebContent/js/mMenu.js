$("#file_add").click(function(){
      var formData = new FormData();
      formData.append("menu_img",$("#menu_img")[0].files[0]);
      formData.append("p_code",$("#p_code").val());
      formData.append("p_name",$("#p_name").val());
      formData.append("p_price",$("#p_price").val());
      $.ajax({
            type : "post",
            url : "/cafe/admin/productInsertPro.do",
            data : formData,
            enctype : 'multipart/form-data',
            processData : false,
            contentType : false,
            dataType : 'text',
            success:function(data){
               window.location.href = "/cafe/admin/menuMain.do";
            }
         })
   });