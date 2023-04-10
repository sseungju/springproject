<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="headerWrap">
	<div class="header">
		<div class="sub_header_wrap">
			<div class="sub_header_wrap_inner">
				<h1 class="logo">
					<a href="#" title="스타벅스 메인페이지">스타벅스코리아</a>
				</h1>
				<nav class="util_nav">
					<ul>
						<li class="util_nav01">
							<% if(session.getAttribute("signUsername")==null){  %> <a
							href="http://localhost/jtbc/stabucks/login.jsp">Sign In</a> <% }else{  %>
							<a href="stabucks/logout_process.jsp">Sign Out</a> <% } %>

						</li>
						<li class="util_nav02">
							<% if(session.getAttribute("signUsername")==null){  %> <a
							href="http://localhost/jtbc/stabucks/login.jsp">My Starbucks</a>
							<% }else{  %> <a
							href="http://localhost/jtbc/stabucks/my_starbucks.jsp">My
								Starbucks</a> <% } %>

						</li>
						<li class="util_nav03"><a href="#">Customer Service &
								Ideas</a></li>
						<li class="util_nav04"><a href="/jtbc/store/store_whole.do">Find
								a Store</a></li>
					</ul>
				</nav>
				<p class="btn_search">
					<a href="#"> <img alt="통합검색"
						src="https://image.istarbucks.co.kr/common/img/common/icon_magnifier_black.png">
					</a>
				</p>
			</div>
			<!-- sub_header_wrap_inner -->
			<nav class="sub_header_nav">
				<div class="sub_header_nav_inner">
					<ul>
						<li class="header_nav01">
							<h2>
								<a href="/jtbc/coffee_main.do">COFFEE</a>
							</h2>
							<div class="header_sub_wrap">
								<div class="header_sub">
									<div class="header_sub_inner">
										<ul>
											<li class="header_sub_tit"><a
												href="/jtbc/coffee.do?categoty=스타벅스 원두">커피</a></li>
											<li><a href="#">스타벅스 원두</a></li>
											<li><a href="#">스타벅스 비아</a></li>
											<li><a href="#">스타벅스앳홈 by 캡슐</a></li>
											<li><a href="/jtbc/productFinder.do">나와 어울리는 커피</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a
												href="/jtbc/coffee_story.do">커피 이야기</a></li>
											<li><a href="#">농장에서 우리의 손으로</a></li>
											<li><a href="#">최상의 아라비카 원두</a></li>
											<li><a href="#">스타벅스 로스트 스펙트럼</a></li>
											<li><a href="#">스타벅스 디카페인</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a href="/jtbc/reserve.do">스타벅스
													리저브</a></li>
											<li><a href="/jtbc/reserve_magazine.do">RESERVE
													MAGAZINE</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a href="/jtbc/espresso.do">에스프레소
													음료</a></li>
											<li><a href="/jtbc/doppio.do">도피오</a></li>
											<li><a href="/jtbc/espresso_macchiato.do">에스프레소 마키아또</a>
											</li>
											<li><a href="/jtbc/americano.do">아메리카노</a></li>
											<li><a href="/jtbc/caramel_macchato.do">마키아또</a></li>
											<li><a href="/jtbc/cappuccino.do">카푸치노</a></li>
											<li><a href="/jtbc/latte.do">라떼</a></li>
											<li><a href="/jtbc/mocha.do">모카</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a
												href="/jtbc/higher_enjoy.do">최상의 커피를 즐기는 법</a></li>
											<li><a href="#">커피 프레스</a></li>
											<li><a href="#">푸어 오버</a></li>
											<li><a href="#">아이스 푸어 오버</a></li>
											<li><a href="#">커피 메이커</a></li>
										</ul>
									</div>
								</div>
							</div>
						</li>
						<li class="header_nav02">
							<h2>
								<a href="/jtbc/menu/menu_main.do">MENU</a>
							</h2>
							<div class="header_sub_wrap">
								<div class="header_sub">
									<div class="header_sub_inner">
										<ul>
											<li class="header_sub_tit"><a href="/jtbc/drink.do">음료</a>
											</li>
											<li><a href="#">콜드 브루</a></li>
											<li><a href="#">브루드 커피</a></li>
											<li><a href="#">에스프레소</a></li>
											<li><a href="#">프라푸치노</a></li>
											<li><a href="#">블렌디드</a></li>
											<li><a href="#">스타벅스 리프레셔</a></li>
											<li><a href="#">스타벅스 피지오</a></li>
											<li><a href="#">티(티바나)</a></li>
											<li><a href="#">기타 제조 음료</a></li>
											<li><a href="#">스타벅스 주스(병음료)</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a href="/jtbc/food.do">푸드</a>
											</li>
											<li><a href="#">브레드</a></li>
											<li><a href="#">케이크</a></li>
											<li><a href="#">샌드위치 & 샐러드</a></li>
											<li><a href="#">따뜻한 푸드</a></li>
											<li><a href="#">과일 & 요거트</a></li>
											<li><a href="#">스낵 & 미니 디저트</a></li>
											<li><a href="#">아이스크림</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a href="/jtbc/item.do">상품</a>
											</li>
											<li><a href="#">머그</a></li>
											<li><a href="#">글라스</a></li>
											<li><a href="#">플라스틱 텀블러</a></li>
											<li><a href="#">스테인리스 텀블러</a></li>
											<li><a href="#">보온병</a></li>
											<li><a href="#">액세서리</a></li>
											<li><a href="#">선물세트</a></li>
											<li><a href="#">커피 용품</a></li>
											<li><a href="#">패키지 티(티바나)</a></li>
											<li><a href="#">시럽</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a href="#">카드</a></li>
											<li><a href="#">실물카드</a></li>
											<li><a href="#">e_Gift 카드</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a href="#">나이트로 콜드브루</a></li>
											<li><a href="#">콜드브루</a></li>
											<li><a href="#">스타벅스 티바나</a></li>
										</ul>
									</div>
								</div>
							</div>
						</li>
						<li class="header_nav03">
							<h2>
								<a href="/jtbc/store/store_main.do">STORE</a>
							</h2>
							<div class="header_sub_wrap">
								<div class="header_sub">
									<div class="header_sub_inner">
										<ul>
											<li class="header_sub_tit"><a
												href="/jtbc/store/store_whole.do">매장 찾기</a></li>
											<li><a href="#">퀵 검색</a></li>
											<li><a href="#">지역 검색</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a
												href="/jtbc/store/store_drivethru.do">드라이브 스루 매장</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a
												href="/jtbc/store/store_reserve.do">스타벅스 리저브 매장</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a
												href="/jtbc/store/store_community.do">커뮤니티 스토어 매장</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a
												href="/jtbc/store/store_teavana.do">매장 이야기</a></li>
											<li><a href="/jtbc/store/store_teavana.do">티바나 바 매장</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</li>
						<li class="header_nav04">
							<h2>
								<a href="/jtbc/responsibility/responsibility_main.do">RESPONSIBILTY</a>
							</h2>
							<div class="header_sub_wrap">
								<div class="header_sub">
									<div class="header_sub_inner">
										<ul>
											<li class="header_sub_tit"><a
												href="/jtbc/responsibility/social_contribution.do">사회공헌
													캠페인 소개</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a
												href="/jtbc/responsibility/hope_delivery.do">지역 사회 참여 활동</a>
											</li>
											<li><a href="/jtbc/responsibility/hope_delivery.do">희망배달
													캠페인</a></li>
											<li><a href="/jtbc/responsibility/talent_donation.do">재능기부
													카페 소식</a></li>
											<li><a href="/jtbc/responsibility/community_store.do">커뮤니티
													스토어</a></li>
											<li><a href="/jtbc/responsibility/youth.do">청년 지원
													프로그램</a></li>
											<li><a href="/jtbc/responsibility/our_agriculture.do">우리
													농산물 사람 캠페인</a></li>
											<li><a href="/jtbc/responsibility/culture.do">우리 문화
													지키기</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a
												href="/jtbc/responsibility/environment.do">환경보호 활동</a></li>
											<li><a href="/jtbc/responsibility/environment.do">친환경
													활동</a></li>
											<li><a href="/jtbc/responsibility/no_disposable_cup.do">일회용
													컵 없는 매장</a></li>
											<li><a href="/jtbc/responsibility/bean_recycling.do">커피
													원두 재활용</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a
												href="/jtbc/responsibility/bean_buy.do">윤리 구매</a></li>
											<li><a href="/jtbc/responsibility/bean_buy.do">윤리적
													원두 구매</a></li>
											<li><a href="/jtbc/responsibility/fair_trade.do">공정무역
													인증</a></li>
											<li><a href="/jtbc/responsibility/coffee_support.do">커피
													농가 지원 활동</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a
												href="/jtbc/responsibility/ethical_report.do">글로벌 사회 공헌</a>
											</li>
											<li><a href="/jtbc/responsibility/ethical_report.do">윤리경영
													보고서</a></li>
											<li><a href="/jtbc/responsibility/star_foundation.do">스타벅스
													재단</a></li>
											<li><a href="/jtbc/responsibility/global_month.do">지구촌
													봉사의 달</a></li>
										</ul>
									</div>
								</div>
							</div>
						</li>
						<li class="header_nav05">
							<h2>
								<a href="#">STARBUCKS REWARDS</a>
							</h2>
							<div class="header_sub_wrap">
								<div class="header_sub">
									<div class="header_sub_inner">
										<ul>
											<li class="header_sub_tit"><a
												href="/jtbc/starbucks/reward.do">스타벅스 리워드</a></li>
											<li><a href="/jtbc/starbucks/reward.do">스타벅스 리워드 소개</a>
											</li>
											<li><a href="/jtbc/starbucks/level_benefit.do">등급 및
													혜택</a></li>
											<li><a href="/jtbc/starbucks/star.do">스타벅스 별</a></li>
											<li><a href="#">자주 하는 질문</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a
												href="/jtbc/starbucks/scard.do">스타벅스 카드</a></li>
											<li><a href="/jtbc/starbucks/scard.do">스타벅스 카드 소개</a></li>
											<li><a href="#">스타벅스 카드 갤러리</a></li>
											<li><a href="/jtbc/starbucks/register.do">등급 및 조회</a></li>
											<li><a href="/jtbc/starbucks/charge_information.do">충전
													및 이용안내</a></li>
											<li><a href="/jtbc/starbucks/lost_report.do">분실신고/환불신청</a>
											</li>
											<li><a href="#">자주하는 질문</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a href="#">스타벅스 e-Gift
													Card</a></li>
											<li><a href="#">스타벅스 e-Gift Card 소개</a></li>
											<li><a href="#">이용안내</a></li>
											<li><a href="#">선물하기</a></li>
											<li><a href="#">자주하는 질문</a></li>
										</ul>
									</div>
								</div>
							</div>
						</li>
						<li class="header_nav06">
							<h2>
								<a href="#">CORPORATE SALES</a>
							</h2>
							<div class="header_sub_wrap">
								<div class="header_sub">
									<div class="header_sub_inner">
										<ul>
											<li class="header_sub_tit"><a href="#">단체 및 기업 구매 안내</a>
											</li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a href="#">단체 주문 배달 안내</a></li>
											<li><a href="#">단체 주문 배달 안내</a></li>
											<li><a href="#">단체 주문 신청</a></li>
											<li><a href="#">신청 내역 조회</a></li>
										</ul>
									</div>
								</div>
							</div>
						</li>
						<li class="header_nav07">
							<h2>
								<a href="#">WHAT'S NEW</a>
							</h2>
							<div class="header_sub_wrap">
								<div class="header_sub">
									<div class="header_sub_inner">
										<ul>
											<li class="header_sub_tit"><a href="#">이벤트</a></li>
											<li><a href="#">전체</a></li>
											<li><a href="#">스타벅스 카드</a></li>
											<li><a href="#">스타벅스 리워드</a></li>
											<li><a href="#">온라인</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a href="/jtbc/news/list.do">뉴스</a>
											</li>
											<li><a href="#">전체</a></li>
											<li><a href="#">상품 출시</a></li>
											<li><a href="#">스타벅스와 문화</a></li>
											<li><a href="#">스타벅스 사회공헌</a></li>
											<li><a href="#">스타벅스 카드 출시</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a
												href="/jtbc/storeevent/list.do">매장별 이벤트</a></li>
											<li><a href="#">일반 매장</a></li>
											<li><a href="#">신규 매장</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a href="#">공지사항</a></li>
										</ul>
										<ul>
											<li class="header_sub_tit"><a href="#">월페이퍼</a></li>
										</ul>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</nav>
		</div>
		<!-- sub_header_wrap -->
	</div>
	<!-- header -->
</div>
<!-- headerWrap -->
