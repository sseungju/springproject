<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="container">
	<div class="wn_cont">
		<section class="news_veiw_wrap">
			<header>
				<h3>${newsdto.n_content}</h3>
				<ul class="sns_wrap">
					<li><img
						src="https://image.istarbucks.co.kr/common/img/whatsnew/icon_cpv_f.png"
						alt="페이스북 공유하기 새창"></li>
				</ul>
			</header>
			<article class="news_veiw_info">
				<div class="news_veiw_info_inner">
					<br> <img src="${newsdto.n_ctimage }">
				</div>
			</article>
			<div class="btn_news_wrap">
				<p class="btn_news_list">
					<a href="notice.htm">목록</a>					
				</p>
			</div>
		</section>
		<table summary="새소식 윗글, 아랫글" class="pn_content_tb">
			<caption class="hid">새소식 윗글, 아랫글 테이블</caption>
			<colgroup>
				<col width="18.181818%">
				<col width="89.818182%">
			</colgroup>
			<tbody id="next">
				<tr>
					<th class="fth" scope="row" id="next_title">윗글</th>
					<td class="ftd" id="after"><a
						href="noticeDetail.htm?n_id=${newsdto.n_id - 1}">윗글</a></td>
				</tr>
				<tr>
					<th class="lth" scope="row" id="prev_title">아랫글</th>
					<td class="ltd" id="befor"><a
						href="noticeDetail.htm?n_id=${newsdto.n_id + 1}">아랫글</a></td>
				</tr>
			</tbody>
		</table>
		<p class="article-comment-margin-small">		
		<a class="btn-del-button" href="noticeDel.htm?n_id=${newsdto.n_id}">삭제</a>
			<script>
				$(".btn-del-button").on("click", function() {
					if (!window.confirm("정말 삭제?")) {
						event.preventDefault();
					}
				});
			</script>
		</p>
	</div>
</div>