<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--------------------------------------------------------------
파일명: sidebar.jsp
기능: 마이페이지 내 사이드바 영역
작성자: 황명하

코멘트: 현대몰 내 마이페이지 의 'side-content' 맨 위 마이페이지 배너를 누르면 마이페이지로 
다시 이동, 1:1상담 누르면 상담목록으로 이동
 -------------------------------------------------------------->

<!DOCTYPE html>
			<div class="side-content">
					<h3 class="side-menu-title">
						<!-- 마이페이지 배너를 누르면 다시 마이페이지로 이동 (황명하) -->
						<a href="HmallServlet?command=mypage">마이페이지</a>
					</h3>
					<div class="side-menu-list">
						<ul>
							<li><a href="javascript:;">주문현황</a>
								<ul class="sub-list">
									<li><a href="do_not.html">주문/배송현황</a></li>
									<li><a href="do_not.html">취소/반품/교환/AS현황</a></li>
									<li><a href="do_not.html">영수증/세금계산서</a></li>
								</ul></li>
								
								
							<li><a href="javascript:;">쇼핑통장</a>
								<ul class="sub-list">
									<li><a href="do_not.html">쿠폰</a></li>
									<li><a href="do_not.html">포인트</a></li>
								</ul></li>
								
								
							<li><a href="javascript:;">나의 활동</a>
								<ul class="sub-list">
									<li><a href="do_not.html">찜</a></li>
									<li><a href="do_not.html">방송알리미</a></li>
									<li><a href="do_not.html">참여이벤트</a></li>
									<li><a href="do_not.html">나의 상품평</a></li>
								</ul></li>
								
								
							<li><a href="javascript:;">회원정보</a>
								<ul class="sub-list">
									<li><a href="do_not.html">회원정보관리</a></li>
									<li></li>
									<li><a href="do_not.html">배송지관리</a></li>
									<li><a href="javascript:;" onclick="fn_HppManage();">H.Point
											Pay 관리</a></li>
									<li><a href="do_not.html">개인정보
											이용현황</a></li>
									<li><a href="do_not.html">회원탈퇴</a></li>
								</ul></li>
								
								
							<li><a href="javascript:;">고객센터</a>
								<ul class="sub-list">
									<!-- 1:1상담 게시판을 구현할 페이지로 이동(황명하) -->
									<li><a href="HmallServlet?command=qnaboard">1:1
											상담</a></li>
									<li><a href="do_not.html">상품
											Q&amp;A</a></li>
								</ul></li>
						</ul>
					</div>
				</div>