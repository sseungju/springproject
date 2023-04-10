<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="container">
	<div class="news_area">
		<div class="news_tab_wrap">
			<button value="전체" id="a1"
				onclick="location.href='/jtbc/news/list.do'">전체</button>
			<button value="상품출시" id="a2">상품출시</button>
			<br>
			<button value="스타벅스와 문화" id="a3">스타벅스와 문화</button>
			<br>
			<button value="스타벅스 사회공헌" id="a4">스타벅스 사회공헌</button>
			<br>
			<button value="스타벅스 카드출시" id="a5">스타벅스 카드출시</button>
			<br>
		</div>
		<div class="news_sch_wrap">
			<p>
				<label for="sch_bar" class="a11y">검색어</label> <input type="text"
					name="sch_bar" id="sch_bar" placeholder="검색어를 입력해 주세요." /> <a
					href="javascript:void(0)" class="newBoardSearchBtn">검색</a>
			</p>
		</div>
		<div class=""></div>
		<dl class="news_content">
			<%-- <p class="news_info">최근(7일)에 등록된 <span class="en">${fn:length(dto.n_id)}</span>개의 게시물이 있습니다.</p> --%>

			<table style="width: 1100px; margin: 50px auto" border="1" summary="새소식" class="news_tb">
				<thead>
					<tr>
						<th width="100" align="center">NO</th>
						<th width="300" align="center">이미지</th>
						<th width="150" align="center">구분</th>
						<th width="400" align="center">내용</th>
						<th width="150" align="center">등록일</th>
					</tr>
				</thead>
				<tbody id="N00">

					<c:if test="${ empty list }">
						<tr class="data">
							<td align="center" colspan="6">
								<h3>작성된 게시글이 없습니다.</h3>
							</td>
						</tr>
					</c:if>

					<c:if test="${ not empty list }">
						<c:forEach items="${ list }" var="dto">
							<tr class="data">
								<td align="center">${ dto.n_id }</td>
								<td><img src="${dto.n_image}" alt="" /></td>
								<td>${dto.n_category }</td>
								<%-- <td><a href="/jtbc/news/view.do?n_id=${dto.n_id}">${dto.n_content}</a> --%>
								<td><a href="noticeDetail.htm?n_id=${dto.n_id}">${dto.n_content}</a>
								</td>
								<td>${dto.n_date }</td>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</dl>
		<p class="article-comment margin-small">
		<a class="btn-write button" href="noticeReg.htm">글쓰기</a>
		</p>
	</div>
</div>

