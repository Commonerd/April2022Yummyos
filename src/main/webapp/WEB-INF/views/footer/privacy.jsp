<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>개인정보처리방침</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>
h1{
	text-align: center;
}

    .container-fluid>p {
      width : 1200px;
      padding: 20px;
      
}
.con{width : 1200px; margin: 10 auto;} 
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-bs-target="#navbarTogglerDemo03"
				aria-controls="navbarTogglerDemo03" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand" href="/">메인</a>
			<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item active"><a class="nav-link active"
						aria-current="page" href="/details/ladder">오늘 뭐먹지?<span
							class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="/store/list">맛집창고</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="/board/notice/list">공지사항</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 테마맛집기행 </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="/">미디어픽</a> <a
								class="dropdown-item" href="#">푸드스토리</a>
						</div></li>
				</ul>
				<div id="search">
					<form class="d-flex" action="/all/search">
						<c:forEach items="${search}" var="search">
							<a href="/search/search?search=${search}">${search}</a>
						</c:forEach>
						<input class="form-control me-2" name="search" id="search"
							type="search" style="width: 500px;" placeholder="원하시는 메뉴를 입력해주세요"
							aria-label="Search">
						<button class="btn btn-outline-success" type="submit">검색</button>
					</form>
				</div>
				<a href="loginform" id="login" class="btn btn-primary"
					style="width: 100px; height: 40px;">로그인</a> <a href="/insert"
					id="join" class="btn btn-primary"
					style="width: 120px; height: 40px;">회원가입</a>
			</div>
		</div>
	</nav>
<body>
<div class="container-fluid con" >
  <h1><strong>야미요 개인정보 처리방침</strong></h1>

<p style="text-align:right">시행일 2022.03.31</p>

<p>&nbsp;</p>

<p>주식회사 여기어때컴퍼니(이하 &quot;회사&quot;)는 이용자의 개인정보를 소중하게 생각하며 정보통신서비스 제공자가 준수하여야 하는 <strong>대한민국의 관계 법령</strong><strong>, </strong><strong>개인정보보호 규정 및 가이드라인을 준수하고자 노력하고 있습니다</strong><strong>.</strong></p>

<p>회사는 개인정보 처리방침을 통해 이용자의 개인정보 처리를 포함한 회사의 개인정보 보호를 위한 조치 내용을 이용자에게 알리고, 회사와 이용자 간의 권리 및 의무관계를 규정하여 이용자의 개인정보 자기결정권을 보장합니다.</p>

<p><strong>본 개인정보 처리방침은 망고플레이트</strong><strong>, </strong><strong>망고웨잇</strong><strong>/</strong><strong>망고오더</strong><strong>, </strong><strong>망고플레이트 비즈니스 서비스 웹 및 앱에 적용됩니다</strong><strong>.</strong></p>

<p>&nbsp;</p>

<p><strong>01. </strong><strong>이용자</strong> <strong>및</strong> <strong>법정대리인의</strong> <strong>권리와</strong> <strong>의무 및</strong> <strong>행사방법</strong></p>

<p>회사는 이용자의 권리를 보호하고 이용자는 안전한 이용에 대한 의무를 성실하게 이행하여야 합니다.</p>

<p>■ 이용자 권리</p>

<p>- 언제든지 자신의 개인정보를 조회하고 수정할 수 있으며, 자신의 개인정보에 대한 열람을 요청할 수 있습니다.</p>

<p>- 언제든지 개인정보 처리의 정지를 요청할 수 있으며, 법률에 특별한 규정이 있는 등의 경우에는 처리정지 요청을 거부할 수 있습니다.</p>

<p>- 언제든지 개인정보 제공에 관한 동의철회/회원가입해지를 요청할 수 있습니다. (모바일앱 &gt; 내정보 &gt; 설정 &gt; 회원탈퇴)</p>

<p>- 정확한 개인정보의 이용 및 제공을 위해 수정이 완료될 때까지 이용자의 개인정보는 이용되거나 제공되지 않습니다. 또한 이미 제3자에게 제공된 경우에는 지체 없이 제공받은 자에게 사실을 알려 수정이 이루어질 수 있도록 하겠습니다.</p>

<p>■ 이용자 의무</p>

<p>- 이용자 본인의 개인정보를 항상 최신화하여 불의의 사고를 사전에 예방하여야 합니다. 부정확한 정보의 입력으로 인해 발생하는 사고의 책임은 이용자에게 있으며, 타인 정보와 도용 등 허위정보를 입력할 경우 이용자격이 상실될 수 있습니다.</p>

<p>- 이용자는 개인정보를 보호받을 권리와 함께 스스로를 보호하고 타인의 정보를 침해하지 않을 의무도 가지고 있습니다. 아이디(ID), 패스워드를 포함한 개인정보가 유출되지 않도록 조심하여야 하며, 게시물을 포함한 타인의 개인정보를 훼손하지 않도록 유의해야 합니다.</p>

<p>■ 의견수렴 및 불만처리 접수</p>

<table border="1" cellpadding="0" cellspacing="0" style="width:100%">
	<tbody>
		<tr>
			<td style="width:17.7%">
			<p><strong>구분</strong></p>
			</td>
			<td style="width:38.46%">
			<p><strong>이메일</strong></p>
			</td>
			<td style="width:43.84%">
			<p><strong>기타</strong></p>
			</td>
		</tr>
		<tr>
			<td style="width:17.7%">
			<p>고객행복센터</p>
			</td>
			<td style="width:38.46%">
			<p><a href="mailto:mp_cs@gccompany.co.kr">mp_cs@gccompany.co.kr</a></p>
			</td>
			<td style="width:43.84%">
			<p>모바일앱&gt;내정보&gt;설정&gt;고객센터</p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<p><strong>02. </strong><strong>개인정보</strong> <strong>보호책임자</strong></p>

<p>회사는 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 이용자의 불만처리 및 피해구제 등을 위하여 개인정보 보호책임자를 지정하고 있습니다.</p>

<p>이용자는 서비스 이용 시 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자에게 문의할 수 있습니다. 회사는 이용자의 문의에 대해 지체없이 답변 및 처리해드릴 것입니다.</p>

<p>■ 개인정보 보호책임자</p>

<table border="1" cellpadding="0" cellspacing="0" style="width:100.0%">
	<tbody>
		<tr>
			<td style="height:20px; width:17.66%">
			<p><strong>구분</strong></p>
			</td>
			<td style="height:20px; width:21.12%">
			<p><strong>직책</strong><strong>(</strong><strong>부서</strong><strong>)</strong></p>
			</td>
			<td style="height:20px; width:15.36%">
			<p><strong>이름</strong></p>
			</td>
			<td style="height:20px; width:17.28%">
			<p><strong>전화</strong></p>
			</td>
			<td style="height:20px; width:28.56%">
			<p><strong>이메일</strong></p>
			</td>
		</tr>
		<tr>
			<td style="height:19px; width:17.66%">
			<p>개인정보 보호책임자</p>
			</td>
			<td style="height:19px; width:21.12%">
			<p>실장(정보보안실)</p>
			</td>
			<td style="height:19px; width:15.36%">
			<p>윤진환</p>
			</td>
			<td style="height:19px; width:17.28%">
			<p>1670-6250</p>
			</td>
			<td style="height:19px; width:28.56%">
			<p><a href="mailto:privacy@gccompany.co.kr">privacy@gccompany.co.kr</a></p>
			</td>
		</tr>
	</tbody>
</table>

<p>개인정보가 침해되어 이에 대한 신고나 보다 자세한 상담이 필요한 경우에는 회사와는 별도인 전문 기관에 문의하셔서 도움을 받으실 수 있습니다.</p>

<table border="1" cellpadding="0" cellspacing="0" style="width:100.0%">
	<tbody>
		<tr>
			<td style="height:21px; width:35.02%">
			<p><strong>권익침해 신고 및 상담기관</strong></p>
			</td>
			<td style="height:21px; width:31.64%">
			<p><strong>전화</strong></p>
			</td>
			<td style="height:21px; width:33.34%">
			<p><strong>사이트</strong></p>
			</td>
		</tr>
		<tr>
			<td style="height:20px; width:35.02%">
			<p>개인정보 침해신고센터</p>
			</td>
			<td style="height:20px; width:31.64%">
			<p>(국번 없이) 118</p>
			</td>
			<td style="height:20px; width:33.34%">
			<p><a href="https://privacy.kisa.or.kr">privacy.kisa.or.kr</a></p>
			</td>
		</tr>
		<tr>
			<td style="height:21px; width:35.02%">
			<p>개인정보 분쟁조정위원회</p>
			</td>
			<td style="height:21px; width:31.64%">
			<p>(국번 없이) 1833-6972</p>
			</td>
			<td style="height:21px; width:33.34%">
			<p><a href="https://www.kopico.go.kr/">www.kopico.go.kr</a></p>
			</td>
		</tr>
		<tr>
			<td style="height:21px; width:35.02%">
			<p>대검찰청 사이버범죄수사과</p>
			</td>
			<td style="height:21px; width:31.64%">
			<p>(국번 없이) 1301</p>
			</td>
			<td style="height:21px; width:33.34%">
			<p><a href="http://www.spo.go.kr">www.spo.go.kr</a></p>
			</td>
		</tr>
		<tr>
			<td style="height:20px; width:35.02%">
			<p>경찰청 사이버 수사국</p>
			</td>
			<td style="height:20px; width:31.64%">
			<p>(국번 없이) 182</p>
			</td>
			<td style="height:20px; width:33.34%">
			<p><a href="http://ecrm.police.go.kr">ecrm.police.go.kr</a></p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<p><strong>03. </strong><strong>개인정보의</strong> <strong>자동</strong> <strong>수집</strong> <strong>장치<s>의</s></strong> <strong>설치</strong><strong>&bull;</strong><strong>운영</strong><strong>&bull;</strong><strong>거부사항</strong></p>

<p>서비스 이용과정에서 쿠키(cookie)가 생성되어 수집될 수 있습니다.</p>

<p>회사는 이용자에게 개별적인 맞춤서비스를 제공하기 위하여 이용정보를 저장하고 수시로 불러오는 쿠키(cookie)를 사용합니다.</p>

<p>■ 쿠키란</p>

<p>- 쿠키는 웹사이트를 운영하는데 이용되는 서버가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.</p>

<p>- 쿠키는 이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 보안접속 여부 등을 파악하여 이용자에게 최적화된 정보를 제공하기 위하여 사용합니다.</p>

<p>■ 쿠키 정보 수집 수준 선택조정 방법</p>

<p>- 아이폰은 [설정] &ndash; [Safari] &ndash; [쿠키 허용]에서 쿠키 사용여부를 선택하거나 [쿠키 데이터 지우기]를 선택하여 쿠키 데이터를 삭제하실 수 있습니다.</p>

<p>- 위에 제시된 메뉴를 통해 쿠키가 저장될 때마다 확인을 하거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다. 단, 이용자가 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수도 있습니다.</p>

<p>- 쿠키는 브라우저의 종료 시나 로그아웃 시 만료됩니다.</p>

<p>■ 쿠키 설치운영 및 거부 방법</p>

<p>웹브라우저 상단의 도구&gt;인터넷옵션&gt;개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부할 수 있습니다. (쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.)</p>

<p>- Internet Explorer의 경우 웹 브라우저 상단의 &ldquo;도구&rdquo; 메뉴&gt; &ldquo;인터넷 옵션&rdquo; 메뉴 &gt; &ldquo;개인정보&rdquo; 탭 &gt; 직접 설정</p>

<p>- Chrome의 경우 웹 브라우저 우측 상단의 아이콘 &ldquo;선택&rdquo; &gt; &ldquo;설정&rdquo; 선택&gt; 화면 하단의 &ldquo;고급 설정 표시&rdquo; 선택 &gt; 개인정보 섹션의 &ldquo;콘텐츠 설정&rdquo; 버튼 &gt; 쿠키 섹션에서 직접 설정</p>

<p>- Edge의 경우 웹 브라우저 우측 상단의 &ldquo;점선(&middot;&middot;&middot;)&rdquo; 메뉴 &gt; &ldquo;설정&rdquo; &gt; &ldquo;개인정보, 검색 및 서비스&rdquo; 메뉴 &gt; &ldquo;추적방지&rdquo; 섹션 &gt; &ldquo;InPrivate를 검색할 때 항상 &quot;엄격&quot; 추적 방지 사용&rdquo; 직접 설정</p>

<p>&nbsp;</p>

<p><strong>04. </strong><strong>개인정보의 수집</strong><strong>&middot;</strong><strong>이용목적</strong><strong>&middot;수집하는 개인정보 항목 및 수집방법</strong></p>

<p>회사는 서비스 제공에 필요한 최소한의 개인정보만 수집하고, 수집한 개인정보를 고지한 범위 내에서만 사용하며, 사전 동의 없이 그 범위를 초과하여 이용하거나 외부에 공개하지 않습니다.</p>

<p>■ 개인정보 이용목적</p>

<p>- 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산</p>

<p>- 콘텐츠 제공, 구매 및 요금 결제, 이벤트 경품 배송 또는 청구지 등 발송, 금융거래 본인 인증 및 금융 서비스, 요금추심</p>

<p>- 서비스 가입/변경/해지 처리, 이벤트 경품 배송, 본인확인, 개인식별, 가입의사확인, 고지사항전달, 서비스제공관련 안내, 명의도용 방지를 위한 등록된 이동전화로 가입사실 통보, 이용요금 고지 결제 및 추심, 이용관련 문의 불만 처리</p>

<p>- 회원 관리를 위해 회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 불만처리 등 민원처리, 고지사항 전달</p>

<p>- 마케팅 및 이벤트에 활용 동의한 회원에 한하여 회원정보 쿠폰, 광고, 이벤트, 프로모션 경품 시행 및 당첨회원에 대한 물품배송, 기타 신규 서비스 개발 및 특화 내용 광고성 정보 전달 시 활용</p>

<p>- 기타 개인정보처리방침에 고지된 수탁자에게 서비스제공 등 계약의 이행에 필요한 업무의 위탁</p>

<p>회사는 이용 목적에 맞게 최소한의 개인정보만을 수집하며, 이용자의 개인정보를 수집하는 경우에는 반드시 사전에 이용자에게 해당 사실을 알리고 동의를 구하겠습니다. 또한 이용자에게 동의를 받거나 법령에서 정한 보유기간 내에서만 개인정보를 처리&bull;보유하겠습니다.</p>

<p>■ 개인정보 수집 및 이용 등에 관한 동의 방법</p>

<p>- 전자적 방법(웹사이트 포함)으로 회원가입 또는 서비스 이용 시 동의내용 또는 망고플레이트 홈페이지, 망고플레이트 어플리케이션에 게시된 개인정보처리방침의 동의내용을 확인하신 후 동의버튼을 클릭하는 방법</p>

<p>- 서비스 가입/이용/변경 신청서 등 청약내용에 첨부된 개인정보의 수집/이용 위탁 제공 동의의 세부 내용을 숙지하시고 서명하시는 방법</p>

<p>- 고객센터 및 기타 전화 등을 통한 전화상담의 경우 상담원으로부터 직접 동의내용을 안내를 받으시거나, 상담원의 안내에 따라 망고플레이트 홈페이지 또는 망고플레이트 어플리케이션 개인정보처리방침의 동의내용을 확인하신 후 전화상으로 본인의 동의 의사를 표시하는 방법</p>

<p>■ 회사의 서비스 제공을 위하여 수집&middot;이용되는 이용자 개인정보</p>
</div>
	<div class="container">
		<footer class="row row-cols-5 py-5 my-5 border-top">
			<div class="col">
				<a href="/"
					class="d-flex align-items-center mb-3 link-dark text-decoration-none">
					<svg class="bi me-2" width="40" height="32">
						<use xlink:href="#bootstrap" /></svg>
				</a>
				<p class="text-muted">&copy; 2022 YUMMYO Project </p>
			</div>

			<div class="col"></div>
			<div class="col">
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="/footer/tservice"
						class="nav-link p-0 text-muted">이용약관</a></li>
					<li class="nav-item mb-2"><a href="/footer/nmembers"
						class="nav-link p-0 text-muted">비회원 이용정책</a></li>
					<li class="nav-item mb-2"><a href="/footer/gps"
						class="nav-link p-0 text-muted">위치기반 서비스 이용약관</a></li>
				</ul>
			</div>

			<div class="col">				
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="/footer/inquiry"
						class="nav-link p-0 text-muted">문의하기</a></li>
					<li class="nav-item mb-2"><a href="/footer/privacy"
						class="nav-link p-0 text-muted">개인정보 처리방침</a></li>
				</ul>
			</div>
		</footer>
	</div>
	<div class="b-example-divider"></div>
</body>
</html>