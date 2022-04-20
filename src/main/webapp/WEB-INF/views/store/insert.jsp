<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
	.Aquamarine{background-color: Aquamarine; width: 150px;}
	table{border-collapse : collapse; width: 900px;}
</style>
</head>
<body>
<form method="post" id="insertform" action="insert">
	<table border="1">
		<tr>  
			<td class="Aquamarine">상호명</td>
			<td><input name="name"/></td>
		</tr>
		<tr>  
			<td class="Aquamarine">테마</td>
			<td><input name="category" placeholder="'한국','일본','중국','미국' 등"></td>
		</tr>
		<tr>  
			<td class="Aquamarine">주소</td>
			<td><input name="address" id="address">
					<input type="button" id="addbtn" value="주소 검색" onclick="addPost()"></td>
		</tr>
		<tr>  
			<td class="Aquamarine">전화번호</td>
			<td><input name="phone"/></td>
		</tr>
		
		<tr>
			<td class="Aquamarine">메뉴</td>
			<td><div id="smarteditor">
        	<textarea name="content" id="editorTxt" 
                  rows="20" cols="10" 
                  placeholder="메뉴와 사진을 입력해주세요."
                  style="width: 700px"></textarea>
      </div></td>
		</tr>
		<tr>  
			<td class="Aquamarine">맛집설명</td>
			<td><input name="detail"/></td>
		</tr>
		<tr>  
			<td class="Aquamarine">지도위도</td>
			<td><input name="map_lt"/></td>
		</tr>
		<tr>  
			<td class="Aquamarine">지도경도</td>
			<td><input name="map_ln"/></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" id="save" value="새 맛집 등록"> 
			</td>
		</tr>
	</table>

</form>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script>
     let oEditors = []

    smartEditor = function() {
      console.log("Naver SmartEditor")
      nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: "editorTxt",
        sSkinURI: "/smarteditor/SmartEditor2Skin.html",
        fCreator: "createSEditor2"
      })
    } 

    $(document).ready(function() {
  
      smartEditor() 
      
      $("#save").click(function(){
    	  oEditors.getById["editorTxt"].exec("UPDATE_CONTENTS_FIELD", []);
    	  $("#insertform").submit();
      });
      
    })
  </script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function addPost(){
    new daum.Postcode({
        oncomplete: function(data) {
            	document.querySelector("#address").value = data.address;
            	alert("나머지 주소도 입력하세요.");
        }
    }).open();
}
</script>
</body>
</html>	