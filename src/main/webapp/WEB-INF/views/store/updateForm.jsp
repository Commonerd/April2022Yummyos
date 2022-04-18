<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>글 수정</title>
<style>
	.Aquamarin{background-color: Aquamarin; width: 50px;}
	table{border-collapse : collapse; width: 800px;}
</style>
</head>
<body>
<form method="post" id="updateform" action="store/update" >
<input type="hidden" name="_method" value="put">
	<table border="2">
		<tr>	
			<td class="Aquamarin">상호명</td>
			<td><input name="name" value="${dto.name }"/>
				<input name="no" value="${dto.no}" type="hidden"> 
			</td>
		</tr>
		<tr>
			<td class="Aquamarin">카테고리</td>
			<td><input name="category" value="${dto.category}"></td>
		</tr>
		<tr>
			<td class="Aquamarin">전화번호</td>
			<td><input name="phone" value="${dto.phone}"></td>
		</tr>
		<tr>
			<td class="Aquamarin">주소</td>
			<td><input name="address" id="address" value="${dto.address}">
				<input type="button" id="addbtn" value="주소 검색" onclick="addPost()"></td>
		</tr>
		<tr>
			<td class="orange">메뉴</td>
			<td><div id="smarteditor">
        	<textarea name="menu" id="editorTxt" 
                  rows="20" cols="10" 
                  style="width: 100%"></textarea></div></td>
		</tr>
		<tr>
			<td class="Aquamarin">설명</td>
			<td><input name="detail" value="${dto.detail}"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button" id="save" value="맛집 수정 완료"> 
			</td>
		</tr>
	</table>

</form>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script>
    let oEditors = []

    smartEditor = function() {
      nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: "editorTxt",
        sSkinURI: "/smarteditor/SmartEditor2Skin.html",
        fOnAppLoad : function(){
            oEditors.getById["editorTxt"].exec("PASTE_HTML", ['${dto.menu}']);
        },
        fCreator: "createSEditor2"
      })
    }

    $(document).ready(function() {
      smartEditor() 
      
      $("#save").click(function(){
    	  oEditors.getById["editorTxt"].exec("UPDATE_CONTENTS_FIELD", []);
    	  $("#updateform").submit();
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