<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>SERACH LIST</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js"
	integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY="
	crossorigin="anonymous"></script>

<style>
.selector-for-some-widget {
	box-sizing: content-box;
}

#center {
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

#page {
	text-align: center;
}

h3 {
	text-align: center;
}

#kind {
	width: 200px;
	height: 30px;
	padding-left: 10px;
	font-size: 18px;
	color: #006fff;
	border: 1px solid #006fff;
	border-radius: 3px;
	position: relative;
	left: 205px;
	bottom: 10px;
}

p.count {
	color: gray;
	font-size: 0.8em;
}

.container {
	width: 1200px;
	padding: 20px;

}

/* .top {
	display: flex;
	position: fixed;
	text-align: center;
} */
.showstep1 {
	max-height: 300px;
	overflow: hidden;
}

.showstep2 {
	max-height: 600px;
	overflow: hidden;
}

.hide {
	display: none;
}

.btn_open {
	text-align: center;
}

.btn_close hide {
	text-align: center;
}
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
         <a class="navbar-brand" href="/">??????</a>
         <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
               <li class="nav-item active"><a class="nav-link active"
                  aria-current="page" href="/details/ladder">?????? ??????????<span
                     class="sr-only"></span></a></li>
               <li class="nav-item"><a class="nav-link" href="/store/list">????????????</a></li>
               <li class="nav-item"><a class="nav-link"
                  href="/board/notice/list">????????????</a></li>
               <li class="nav-item dropdown"><a
                  class="nav-link dropdown-toggle" href="#"
                  id="navbarDropdownMenuLink" role="button"
                  data-bs-toggle="dropdown" aria-expanded="false">??????????????????</a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                     <li><a class="dropdown-item" href="/board/mpick/list">????????????</a></li>
                     <li><a class="dropdown-item" href="/board/fstory/list">???????????????</a></li>
                  </ul></li>
            </ul>
         </div>
         <div id="search">
            <form class="d-flex" action="/all/search">
               <c:forEach items="${search}" var="search">
                  <a href="/search/search?search=${search}"></a>
               </c:forEach>
               <input class="form-control me-2" name="search" id="search"
                  type="search" style="width: 500px;" placeholder="???????????? ????????? ??????????????????"
                  aria-label="Search">
               <button class="btn btn-outline-success" type="submit">??????</button>
            </form>
         </div>
      </div>
      <c:if test="${ user.id != null }">
         <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
               <li class="nav-item dropdown">
               <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false"> ${user.id}??? ??????????????? </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                     <li><a class="dropdown-item" href="/wishlist">???????????????</a></li> 
                     <li><a class="dropdown-item" href="/update">?????? ?????? ??????</a></li>
                     <li><a class="dropdown-item" href="/logout">????????????</a></li>
                  </ul>
               </li>
            </ul>
         </div>
      </c:if>
      <c:if test="${ user.id == null }">
         <a href="/loginform" id="login" class="btn btn-primary"
            style="width: 100px; height: 35px;">?????????</a>
         <a href="/insert" id="join" class="btn btn-primary"
            style="width: 120px; height: 35px;">????????????</a>
      </c:if>
      
   </nav>   



<br><br><br><br>
	<div id="center">
		<h3>[ ${search} ] ?????? ??????</h3>
		<br> 
		<div class="bd-toc mt-4 mb-5 my-md-0 ps-xl-3 mb-lg-5 text-muted">
			<nav id="TableOfContents" display="flex">
				<a href="#store" type="button" class="btn btn-outline-secondary">STORE</a>
				<a href="#fstory" type="button" class="btn btn-outline-secondary">FSTORY</a> 
				<a href="#mpick" type="button" class="btn btn-outline-secondary">MPICK</a>
			</nav>

			

		</div>
		<br>

		<div id="store">
			<h3>STORE</h3>
			<br>
			<div class="detailinfo showstep1">
				<div class="container">
					<div class="row">
						<c:forEach items="${sList}" var="store">
							<div class="col-md-4 mb-3">
								<div class="card" style="width: 100%">
									<img src="/image/${store.image }" class="card-img-top" alt="">
									<div class="card-body">
										<h5 class="card-title">${ store.category }</h5>
										<p class="count">${store.view_count}</p>
										<p class="likecount">${ allCount }</p>
										<a href="../store/content/${store.no }"
											class="btn btn-primary">${store.name }</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<br>
			<a href="?????????" class="btn_open">?????????</a>
			 <a href="?????????"
				class="btn_close hide">?????????</a>
		</div>

		<br> <br> <br> <br> <br> <br> <br>


		<div id="fstory">
			<h3>FSTORY</h3>
			<br>
			<div class="detailinfo showstep1">
				<div class="content">
					<!-- "?????? ????????? ?????? ??????" -->
					<div class="container">
						<div class="row">
							<c:forEach items="${fList}" var="fstory">
								<div class="col-md-4 mb-3">
									<div class="card" style="width: 100%">
										<img src="/fstory_images/${fstory.image}" class="card-img-top"
											alt="...">
										<div class="card-body">
											<h5 class="card-title">
												<a href="content/${fstory.no}">${fstory.title}??? ??????</a>
											</h5>
											<p class="count">????????? : ${fstory.readcount}</p>
											<a href="content/${fstory.no}">${fstory.title}</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>

			</div>
		<br>
			<a href="?????????" class="btn_open">?????????</a> <a href="?????????"
				class="btn_close hide">?????????</a>
		</div>


		<br> <br> <br> <br> <br> <br> <br>


		<div id="mpick">
			<h3>MPICK</h3>
			<br>
			<div class="detailinfo showstep1">
				<div class="content">
					<!-- "?????? ????????? ?????? ??????" -->
					<div class="container">
						<div class="row">
							<c:forEach items="${mList}" var="mpick">
								<div class="col-md-4 mb-3">
									<div class="card" style="width: 100%">
										<img src="../image/${mpick.image }" class="card-img-top"
											alt="">
										<div class="card-body">
											<h5 class="card-title">${mpick.title }</h5>
											<p class="card-text">${mpick.title }</p>
											<p class="card-count">????????? ${mpick.readcount}</p>
											<a href="../board/mpick/content/${mpick.no}"
												class="btn btn-secondary">????????????</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			<br>
				<a href="#" class="btn_open">?????????</a> <a href="#"
					class="btn_close hide">?????????</a>
			</div>
		</div>

	</div>

	<script type="text/javascript">
		document
				.addEventListener(
						'DOMContentLoaded',
						function() { //DOM ?????? ??? ????????? ????????? ??????
							//????????? ?????? ????????? ?????????
							document
									.querySelector('.btn_open')
									.addEventListener(
											'click',
											function(e) {

												let classList = document
														.querySelector('.detailinfo').classList; // ????????? ???????????? ????????? ?????? ??????
												let contentHeight = document
														.querySelector('.detailinfo > .content').offsetHeight; //????????? ?????? ??????

												// 2???????????? ???????????????
												if (classList
														.contains('showstep2')) {
													classList
															.remove('showstep2');
												}
												// 1???????????? 2?????????
												if (classList
														.contains('showstep1')) {
													classList
															.remove('showstep1');
													if (contentHeight > 600) {
														classList
																.add('showstep2');
													} else {
														document
																.querySelector('.btn_open').classList
																.add('hide');
													}
												}
												//??????????????? ????????? ?????? ????????? & ????????? ?????? ??????
												if (!classList
														.contains('showstep1')
														&& !classList
																.contains('showstep2')) {
													e.target.classList
															.add('hide');
													document
															.querySelector('.btn_close').classList
															.remove('hide');

												}

											});
						});
	</script>
	<script>
		// ????????? ?????? ????????? ?????????
		document.querySelector('.btn_close').addEventListener(
				'click',
				function(e) {
					e.target.classList.add('hide');
					document.querySelector('.btn_open').classList
							.remove('hide'); // ????????? ?????? ??????
					document.querySelector('.detailinfo').classList
							.add('showstep1'); // ?????? ?????? ????????? ??????
				});
	</script>
	<script>
		//????????? ?????? ?????? ??? ?????? ???????????? ????????? ?????????
		window.addEventListener('load', function() {
			let contentHeight = document
					.querySelector('.detailinfo > .content').offsetHeight; //????????? ?????? ??????
			if (contentHeight <= 300) {
				document.querySelector('.detailinfo').classList
						.remove('showstep1'); // ??????????????? ????????? ?????? ????????? ??????
				document.querySelector('.btn_open').classList.add('hide'); // ?????? ??????
			}
		});
	</script>

	<br>
	<br>
	<br>
	<hr>
	<br>
	<br>
	<br>

	<div class="container">
		<footer class="row row-cols-5 py-5 my-5 border-top">
			<div class="col">
				<a href="/"
					class="d-flex align-items-center mb-3 link-dark text-decoration-none">
					<svg class="bi me-2" width="40" height="32">
                  <use xlink:href="#bootstrap" /></svg>
				</a>
				<p class="text-muted">&copy; 2022 YUMMYO Project</p>
			</div>

			<div class="col"></div>
			<div class="col">
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="/footer/tservice"
						class="nav-link p-0 text-muted">????????????</a></li>
					<li class="nav-item mb-2"><a href="/footer/nmembers"
						class="nav-link p-0 text-muted">????????? ????????????</a></li>
					<li class="nav-item mb-2"><a href="/footer/gps"
						class="nav-link p-0 text-muted">???????????? ????????? ????????????</a></li>
				</ul>
			</div>

			<div class="col">
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="/footer/inquiry"
						class="nav-link p-0 text-muted">????????????</a></li>
					<li class="nav-item mb-2"><a href="/footer/privacy"
						class="nav-link p-0 text-muted">???????????? ????????????</a></li>
				</ul>
			</div>
		</footer>
	</div>
	<div class="b-example-divider"></div>

</body>
</html>