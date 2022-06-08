<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>Card Detail</title>

<style>
.cardDetail {
	width: 100%;
	height: 850px;
	overflow: scroll;
	overflow-x: hidden;
	border-radius: 2px;
}

.label {
	width: 25px;
	height: 25px;
	border: rgb(240, 240, 240) 1px solid;
	text-align: center;
	line-height: 2;
	cursor: pointer;
}

.fa-check {
	color: black;
}

.cardmenu {
	background-color: whitesmoke;
	border-radius: 10px;
}

.menu {
	font-size: medium;
	color: gray;
}

#testbtn {
	position: relative;
}

.test123 {
	width: 50px;
	height: 30px;
	background-color: gray;
	border-radius: 5px;
	color: white;
	opacity: 0;
	transition: all 0.3s;
	position: absolute;
	top: -5px;
	left: 280px;
	z-index: 999;
	line-height: 30px;
}
/* 임의 스타일 */
.test1234 {
	transition: all 0.2s;
	opacity: 1;
}
/* 카드상세메뉴 - 일정추가, 관리자 지정모달창 */
#add_Dates, #add_Member {
	display: none;
	width: 450px;
	padding: 20px 60px;
	background-color: #fefefe;
	border: 1px solid #888;
	border-radius: 3px;
}

#add_Dates .add_Dates_close_btn, #add_Member .add_Member_close_btn {
	position: absolute;
	top: 10px;
	right: 10px;
}
/* 카드상세메뉴 - 체크리스트추가모달창 */
#add_Check {
	display: none;
	width: 500px;
	padding: 20px 60px;
	background-color: #fefefe;
	border: 1px solid #888;
	border-radius: 3px;
}

#add_Check .add_Check_close_btn {
	position: absolute;
	top: 10px;
	right: 10px;
}
/*카드내용저장버튼*/
.saveDone {
	width: 80px;
	height: 30px;
	background-color: gray;
	border-radius: 5px;
	color: white;
	opacity: 0;
	transition: all 0.3s;
	position: absolute;
	top: -25px;
	left: -15px;
	z-index: 999;
	line-height: 30px;
}

.saveDone123 {
	transition: all 0.2s;
	opacity: 1;
}

.thumbnail {
	box-shadow: 2px 2px 2px 1px #adb5bd;
	width: 200px;
	height: 80px;
	border: solid 1px #D3D3D3;
	line-height: 80px;
	border-radius: 10px;
	overflow: hidden;
}

.thumbnail img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.filedelbtn:hover, .filedownbtn:hover, .cardThema:hover, .fileeditbtn:hover
	{
	text-decoration: underline !important;
	cursor: pointer;
}

.comment__section {
	position: relative;
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
}

@media screen and (min-width: 992px) {
	.comment__section {
		flex: 0 0 38%;
		max-width: 38%;
		margin: 0 auto;
	}
}

.comment__wrap {
	border: 5px solid rgb(235, 235, 235);
	border-radius: 20px;
	padding: 20px 20px 0 20px;
	width: 100%;
	height: auto;
}

.comment__write__box {
	display: flex;
}

.comment__write__profile__img {
	border-radius: 50%;
	vertical-align: middle;
	width: 40px;
	height: 40px;
	aspect-ratio: auto 40/40;
	margin-right: 20px;
}

.comment__write__text__box {
	border: 1px solid rgb(202, 202, 202);
	border-radius: 5px;
	width: 100%;
	box-shadow: 0 2px 4px -1px rgb(9 30 66/ 20%), 0 0 0 1px rgb(9 30 66/ 8%);
	padding: 9px 12px 0px 12px;
	background-color: #fff;
}

.comment__write__textarea {
	width: 100%;
	overflow: hidden;
	overflow-wrap: break-word;
	outline: none;
	border: none;
	resize: none;
	height: 20px;
	padding: 0;
}

.comment__write__tool__box {
	width: 100%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding-bottom: 5px;
}

.comment__write__tools {
	margin-right: 2px;
	display: flex;
	align-items: center;
}

.comment__input__fileName {
	cursor: pointer;
	margin-left: 10px;
}

.comment__write__submitBtn {
	border-radius: 5px;
	background-color: #6777ef;
	color: #fff;
	border: none;
	width: 65px;
	height: 32px;
	text-align: center;
	line-height: 32px;
	cursor: pointer;
	font-weight: bold;
}

.comment__body {
	padding: 0;
}

.comment__body li {
	list-style: none;
	border-bottom: 1px solid rgb(235, 235, 235);
}

.comment {
	display: flex;
	flex-direction: column;
	padding-bottom: 13px;
	padding-top: 13px;
}

.comment__area {
	display: flex;
}

.comment__body li:last-child {
	border-bottom: none;
}

.comment__profile__img__box {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.recomment__btn {
	border: 1px solid rgb(182, 182, 182);
	text-align: center;
	cursor: pointer;
	width: 45px;
	height: 20px;
	font-size: 14px;
	line-height: 20px;
	display: flex;
	justify-content: center;
	border-radius: 4px;
}

.recomment__btn i {
	display: inline-block;
	margin-top: 1.8px;
	font-size: 15px;
	margin-right: 5px;
}

.comment__content {
	display: flex;
	flex-direction: column;
	width: 100%;
}

.comment__writer__box {
	display: flex;
	width: 100%;
	justify-content: space-between;
}

.comment__writer {
	font-weight: bold;
}

.fas.fa-bars {
	cursor: pointer;
	position: relative;
}

.fas__menu {
	display: none;
	position: absolute;
	left: 18px;
	top: -3px;
	width: 45px;
	height: 50px;
	border-radius: 7px;
	border: 1px solid black;
}

.fas__menu__btnC {
	border-radius: 7px 7px 0 0;
	border-bottom: 1px solid black;
}

.fas__menu__btnD {
	border-radius: 0 0 7px 7px;
}

.fas__menu__btnC, .fas__menu__btnD {
	width: 100%;
	height: 50%;
	text-align: center;
	line-height: 25px;
	background-color: #fff;
}

.fas__menu__btn:first-child {
	border-bottom: 1px solid #b1b6b9;
}

.comment__detail {
	min-height: 70px;
	color: #98a6ad;
	font-size: 14px;
}

.comment__additional {
	height: 20px;
	line-height: 20px;
	display: flex;
	justify-content: space-between;
	margin-top: 15px;
}

.goodBtnRow {
	margin-right: 8px;
	cursor: pointer;
}

.badBtnRow {
	cursor: pointer;
}

.hrEl {
	margin-bottom: 0;
}

.recomment__wrap {
	display: none;
	padding: 0 10px 10px 10px;
	background-color: rgb(235, 235, 235);
	border-radius: 20px;
	margin-top: 10px;
}

.recomment__body {
	padding: 0;
}

.recomment__body li {
	list-style: none;
	border-bottom: 1px solid rgb(200, 200, 200);
}

.recomment {
	display: flex;
	padding-top: 10px;
	padding-bottom: 10px;
}

.recomment__icon {
	width: 11px;
	height: 11px;
	border-bottom: 2px solid rgb(104, 104, 104);
	border-left: 2px solid rgb(104, 104, 104);
	margin-top: 10px;
	margin-right: 10px;
	margin-left: 5px;
}

.recomment__area {
	display: flex;
	width: 100%;
}

.recomment__write__box {
	display: flex;
}

.recomment__write__box .comment__write__box {
	width: 100%;
}

.recomment__hrEl {
	margin-top: 10px;
}

#emoji-button {
	position: relative;
	border: none;
	background: none;
	margin-left: 5px;
}

.emoji-picker {
	z-index: 999;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.emoji-picker__content {
	border-bottom: none;
}

.emoji-picker__preview {
	padding-top: 25px;
	height: 100%;
	border-top: none;
}

.file__icon {
	margin-bottom: 0;
}

.emojibutEl {
	padding-top: 0;
	padding-bottom: 0;
}

.comment__context__file__prev {
	display: flex;
	align-items: center;
	border: 3px solid rgb(248, 248, 248);
	border-radius: 10px;
	padding: 5px 15px 5px 5px;
}

.context__file__prev__imgBox {
	margin-right: 3px;
	width: 50px;
	height: 50px;
	overflow: hidden;
}

.context__file__prev__imgBox img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.comment__context__file {
	margin-bottom: 10px;
	font-size: 13px;
	display: flex;
	align-items: center;
	border: 3px solid rgb(248, 248, 248);
	border-radius: 10px;
	padding: 5px 15px 5px 5px;
	border: 3px solid rgb(248, 248, 248);
}

.comment__context__file span i {
	font-size: 15px;
}

.comment__context__file a {
	text-decoration: underline;
	font-size: 13px;
	font-weight: 600;
}

.context__file__prev__removeBtn {
	display: none;
	margin-left: auto;
}

.context__file__prev__removeBtn i {
	cursor: pointer;
	font-size: 25px;
}

.img__box__wrap {
	top: 0;
	left: 0;
	position: fixed;
	width: 100%;
	height: 100%;
	display: none;
	z-index: 999;
	background-color: rgba(0, 0, 0, 0.9);
}

.img__box {
	width: auto;
	height: auto;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: 999;
	/* display: none; */
}

.img__box img {
	width: auto;
	height: auto;
	object-fit: cover;
}
</style>
<script type="text/javascript">
//페이지 그려줌과 동시에 실행
document.addEventListener("DOMContentLoaded", function(){
	let color = "${workspace.board_thema}";
	let name = "${workspace.workspace_title}".substring(0, 1);
	boardColorFnc(color);
	changeWKIMG(name);
	
	//워크프페이스 프로필이미지
	function changeWKIMG(newWKname){
		let img = document.querySelector(".wkimg");
		if(name == 'a' || name == 'A'){
			img.setAttribute("src","resources/img/a.jpg");
		}else if(name == 'b' || name == 'B'){
			img.setAttribute("src","resources/img/b.jpg");
		}else if(name == 'c' || name == 'C'){
			img.setAttribute("src","resources/img/c.jpg");
		}else if(name == 'd' || name == 'D'){
			img.setAttribute("src","resources/img/d.jpg");
		}else if(name == 'e' || name == 'E'){
			img.setAttribute("src","resources/img/e.jpg");
		}else if(name == 'f' || name == 'F'){
			img.setAttribute("src","resources/img/f.jpg");
		}else if(name == 'g' || name == 'G'){
			img.setAttribute("src","resources/img/g.jpg");
		}else if(name == 'h' || name == 'H'){
			img.setAttribute("src","resources/img/h.jpg");
		}else if(name == 'i' || name == 'I'){
			img.setAttribute("src","resources/img/i.jpg");
		}else if(name == 'j' || name == 'J'){
			img.setAttribute("src","resources/img/j.jpg");
		}else if(name == 'k' || name == 'K'){
			img.setAttribute("src","resources/img/k.jpg");
		}else if(name == 'l' || name == 'L'){
			img.setAttribute("src","resources/img/l.jpg");
		}else if(name == 'm' || name == 'M'){
			img.setAttribute("src","resources/img/m.jpg");
		}else if(name == 'n' || name == 'N'){
			img.setAttribute("src","resources/img/n.jpg");
		}else if(name == 'o' || name == 'O'){
			img.setAttribute("src","resources/img/o.jpg");
		}else if(name == 'p' || name == 'P'){
			img.setAttribute("src","resources/img/p.jpg");
		}else if(name == 'q' || name == 'Q'){
			img.setAttribute("src","resources/img/q.jpg");
		}else if(name == 'r' || name == 'R'){
			img.setAttribute("src","resources/img/r.jpg");
		}else if(name == 's' || name == 'S'){
			img.setAttribute("src","resources/img/s.jpg");
		}else if(name == 't' || name == 'T'){
			img.setAttribute("src","resources/img/t.jpg");
		}else if(name == 'u' || name == 'U'){
			img.setAttribute("src","resources/img/u.jpg");
		}else if(name == 'v' || name == 'V'){
			img.setAttribute("src","resources/img/v.jpg");
		}else if(name == 'w' || name == 'W'){
			img.setAttribute("src","resources/img/w.jpg");
		}else if(name == 'x' || name == 'X'){
			img.setAttribute("src","resources/img/x.jpg");
		}else if(name == 'y' || name == 'Y'){
			img.setAttribute("src","resources/img/y.jpg");
		}else if(name == 'z' || name == 'Z'){
			img.setAttribute("src","resources/img/z.jpg");
		}else if(name == '0'){
			img.setAttribute("src","resources/img/0.jpg");
		}else if(name == '1'){
			img.setAttribute("src","resources/img/1.jpg");
		}else if(name == '2'){
			img.setAttribute("src","resources/img/2.jpg");
		}else if(name == '3'){
			img.setAttribute("src","resources/img/3.jpg");
		}else if(name == '4'){
			img.setAttribute("src","resources/img/4.jpg");
		}else if(name == '5'){
			img.setAttribute("src","resources/img/5.jpg");
		}else if(name == '6'){
			img.setAttribute("src","resources/img/6.jpg");
		}else if(name == '7'){
			img.setAttribute("src","resources/img/7.jpg");
		}else if(name == '8'){
			img.setAttribute("src","resources/img/8.jpg");
		}else if(name == '9'){
			img.setAttribute("src","resources/img/9.jpg");
		}else{
			img.setAttribute("src","resources/img/workspace_default_profile.png");
		}
	}
	
	//카드아이템
	//현재 페이지에 있는 리스트 내 카드 아이디들을 cardIds배열에다 담아줌
	let listId = document.querySelector("#selectedList").getAttribute("data-listId");
	const cardIds = new Array();
	const cards = document.querySelectorAll(".cards");
	for(let i = 0; i<cards.length; i++){
		cardIds[i] = cards[i].getAttribute("data-cardId");
	}
	
	//for문돌면서 카드아이템들 장착해주기~!
	for(let cardId of cardIds){
		$.ajax({
			url : "AjaxCardDetail_CardItemsCheck",
			type : "POST",
			data : {
				cardId : cardId
			},
			dataType : "json",
			success : function(data){
				if(data.managerImg != null){
					document.querySelector(".profimg"+cardId).setAttribute("src","/profilePic/"+data.managerImg);					
				}
				if(data.file == "YES"){
					document.querySelector(".files"+cardId).style.color="tomato";
				}
				if(data.checkList == "YES"){
					document.querySelector(".check"+cardId).style.color="tomato";
				}
			},
			error : function(){
				console.log("AjaxCardDetail_CardItemsCheck 카드아이템체크 실패")
			}
		})
	}
	
	//현재카드의 체크리스트 아이디 목록
	let cardId = document.querySelector("#selectedCard").getAttribute("data-cardId");
	$.ajax({
		url : "AjaxSelectedCardCheckList",
		type : "POST",
		data : {
			card_id : cardId
		},
		dataType : "json",
		success : function(datas){
			const checkIds = new Array();
			for(let i=0; i<datas.length; i++){
				checkIds[i] = datas[i].checklist_id; 
			}//아이디목록 checkIds 배열에 담아주고
			
			checkIds.forEach((checkId)=>{
				const items = document.querySelectorAll(".checkitem"+checkId); //총 아이템
				let checkedCnt = 0; //체크된 아이템 수 
				items.forEach((item)=>{
					if(item.getAttribute("checked") == "checked"){
						checkedCnt += 1;
					}	
				})
				let itemCnt = items.length;  //총 아이템 수
				let width = Math.ceil(checkedCnt/itemCnt*100);
				if(itemCnt != 0){
					document.querySelector(".checkChart"+checkId).innerHTML = "&nbsp;&nbsp;&nbsp;"+width+"%";
					document.querySelector(".checkChart"+checkId).style.color="white";
					document.querySelector(".checkChart"+checkId).style.width=width+"%";
					if(itemCnt == checkedCnt){
						document.querySelector(".checkChart"+checkId).style.backgroundColor="#A9E81F";						
					}else{
						document.querySelector(".checkChart"+checkId).style.backgroundColor="tomato";						
					}
				}else if(itemCnt == 0){
					document.querySelector(".checkChart"+checkId).innerHTML = "&nbsp;&nbsp;&nbsp;"+0+"%";
				}
			})
		},
		error : function(){
			console.log("AjaxSelectedCardCheckList 실패");
		}
	})
})
</script>
</head>
<body>
	<div id="app">
		<div class="main-wrapper">

			<!-- add CheckList 모달창 -->
			<div id="add_Check" class="card">
				<a class="add_Check_close_btn fa fa-times" style="cursor: pointer;" onclick="closeAddCheck()"></a>
				<div class="mb-4 mt-1 text-center">
					<h5>Add a Checklist</h5>
				</div>
				<div class="form-group">
					<label style="font-size: 15px;">Title</label> <input type="text" class="form-control" id="checklist_title" name="checklist_title">
				</div>
				<div>
					<a id="ChecklistSectionMove" href="#checklistAppendTarget"><button id="checkAddBtn" class="btn btn-secondary" style="width: 100%;">ADD</button></a>
				</div>
			</div>

			<!-- add Dates 모달창 -->
			<div id="add_Dates" class="card">
				<a class="add_Dates_close_btn fa fa-times" style="cursor: pointer;" onclick="closeAddDates()"></a>
				<div class="mb-4">
					<div class="d-flex justify-content-between mt-2 mb-2">
						<label class="mt-2" style="font-size: 15px;">START DATE</label> <input id="cardStartDate" type="date" style="width: 60%;" onclick="startDateLimit()">
					</div>
					<div class="d-flex justify-content-between mt-2 mb-2">
						<label class="mt-2" style="font-size: 15px;">DUE DATE</label> <input id="cardEndDate" type="date" style="width: 60%;" onclick="endDateLimit()">
					</div>
				</div>
				<div>
					<button id="datesSaveBtn" onclick="cardDateSave(${cardinfo.card_id})" class="btn btn-secondary" style="width: 100%;">SAVE</button>
				</div>
			</div>

			<!-- 카드 관리자 추가 모달창 -->
			<div id="add_Member" class="card">
				<a class="add_Member_close_btn fa fa-times" style="cursor: pointer;" onclick="closeAddMember()"></a>
				<div class="card" style="height: 350px; overflow: scroll; overflow-x: hidden;">
					<label class="ml-3">Your Partners 👫</label>
					<!-- 해당 보드에 초대된 멤버목록 -->
					<c:forEach items="${boardJoinMembers}" var="member">
						<span class="member ml-3 mt-1 mb-1" style="font-size: 15px;">
							<button class="btn btn-light" style="width: 95%;" data-memid="${member.id}" onclick="managerSelect('${member.id}')">${member.name}(${member.id})</button>
						</span>
					</c:forEach>
				</div>
				<hr>
				<div class="card selectedMember">
					<label class="ml-3">Manager </label>
					<button id="cardManager" class="ml-3 mb-3 btn btn-light" style="width: 90%;">${cardinfo.manager}</button>
					<c:if test="${cardinfo.manager ne null}">
						<span class="ml-2" style="font-size: 13px; color: tomato;">* If you click this button, the manager will be deleted.</span>
					</c:if>
				</div>
				<div>
					<button id="managerSaveBtn" class="btn btn-secondary" style="width: 100%;">SAVE</button>
				</div>
			</div>

			<!-- Main Content -->
			<div class="main-content" style="min-height: 829px;">
				<section class="section">
					<div class="row">
						<!--사용자가 선택한 리스트-->
						<div id="selectedList" class="col-lg-2 cardDetail" data-listId="${listinfo.list_id}" style="background-color: rgb(252, 250, 250);">
							<div class="card.h-100 listnameAppendTarget">
								<h4 class="listName${listinfo.list_id} mt-5 mb-4 ml-4" onclick="renameList(${listinfo.list_id})">${listinfo.list_title}</h4>
								<!--리스트 이름 표시-->
								<div class="cardArea">
									<!--해당 리스트안에 카드리스트-->
									<c:forEach items="${samelistcards}" var="card">
										<div id="card${card.card_id}" style="cursor: pointer;" data-cardId="${card.card_id}" onclick="location.href='cardDetail?list=${card.list_id}&card=${card.card_id}'" class="cards card card-${card.card_label} ml-2 mr-2">
											<!--라벨표시-->
											<div class="card-header d-flex justify-content-between">
												<span class="cardName${card.card_id} ml-0">${card.card_title}</span>
												<!--카드이름-->
											</div>
											<c:if test="${card.manager ne null}">
												<div class="ml-2 mt-1 text-right card-owner" style="font-weight: bold; height: 50px;">
													<img style="height: 25px; width: 25px;" class="rounded-circle mr-1 ml-1 mb-1 profimg${card.card_id}">
												</div>
											</c:if>
											<div class="ml-3">
												<!--옵션표시(file,checklist,dates)-->
												<i class="fa fa-check-square check${card.card_id}" style="color: #e9ecef;"></i>
												<c:if test="${card.card_start_date ne null}">
													<i class="fa fa-calendar ml-1 dates${card.card_id}" style="color: tomato;"></i>
												</c:if>
												<c:if test="${card.card_start_date eq null}">
													<i class="fa fa-calendar ml-1 dates${card.card_id}" style="color: #e9ecef;"></i>
												</c:if>
												<i class="fa fa-paperclip ml-1 files${card.card_id}" style="color: #e9ecef;"></i>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
						<!--사용자가 선택한 카드 상세-->
						<div class="col-lg-10 cardDetail" style="background-color: white;">
							<div class="row" style="float: right;">
								<!--카드상세조회 닫기버튼-->
								<h4 class="closeCardDetail mr-3 mt-3" style="cursor: pointer;" onclick="location.href='boardDetail?boardID=${workspace.board_id}'">
									<i class="fa fa-window-close" title="close_card" aria-hidden="true"></i>
								</h4>
							</div>
							<div class="row" id="selectedCard" data-cardId="${cardinfo.card_id}" data-cardManager="${cardinfo.manager}">
								<!--카드상세내용-->
								<div class="col-lg-7 ml-3" style="border-right: whitesmoke 1px solid;">
									<!--카드이름 & 책임자-->
									<div id="cardTitleAppendTarget" class="d-flex justify-content-between">
										<h4 id="card_Title" class="cardName mt-5 mb-4" onclick="renameCard(${cardinfo.card_id})">${cardinfo.card_title}</h4>
										<!-- 책임자 존재할때만 뜨도록 -->
										<c:if test="${cardinfo.manager ne null}">
											<span class="btn mt-5 mb-5 ml-5" style="font-size: 17px;">📌Manager. ${manager}</span>
										</c:if>
										<c:if test="${cardinfo.manager eq null}">
											<span class="btn mt-5 mb-5 ml-5" style="font-size: 17px; visibility: hidden"></span>
										</c:if>
									</div>
									<!--카드메뉴-->
									<div class="row d-flex justify-content-center mr-2 cardmenu">
										<button class="btn menu" onclick="cardDatesSet('add_Dates')">Dates</button>
										<button class="btn menu" onclick="cardCheckListSet('add_Check',${cardinfo.card_id})">CheckList</button>
										<label class="btn menu mt-2" for="input-file"> Attachments </label> <input type="file" id="input-file" style="display: none;">
										<button class="btn menu" onclick="cardMemberSet('add_Member')">Member</button>
									</div>
									<!--카드아이템 : 라벨, 일정-->
									<div class="row mt-4">
										<div class="card">
											<div style="width: 370px;"></div>
											<div class="card-header">
												<div class="row">
													<h4>Label</h4>
													<div class="label light" style="background-color: white;" onclick="selectLabel('None',${cardinfo.card_id})"></div>
													<div class="label danger" style="background-color: rgb(253, 38, 38);" onclick="selectLabel('Red',${cardinfo.card_id})"></div>
													<div class="label warning" style="background-color: rgb(255, 184, 52);" onclick="selectLabel('Orange',${cardinfo.card_id})"></div>
													<div class="label success" style="background-color: rgb(58, 231, 95);" onclick="selectLabel('Green',${cardinfo.card_id})"></div>
													<div class="label info" style="background-color: rgb(0, 217, 255);" onclick="selectLabel('SkyBlue',${cardinfo.card_id})"></div>
													<div class="label primary" style="background-color: rgb(85, 73, 248);" onclick="selectLabel('Blue',${cardinfo.card_id})"></div>
													<div class="label secondary" style="background-color: rgb(165, 165, 165);" onclick="selectLabel('Gray',${cardinfo.card_id})"></div>
													<div class="label dark" style="background-color: rgb(7, 7, 7);" onclick="selectLabel('Black',${cardinfo.card_id})"></div>
													<c:if test="${cardinfo.card_label eq 'light'}">
														<input id="testbtn" class="selectedLabel form-control ml-1 mr-1" type="text" style="width: 80px; height: 25px;" value="None" readonly>
													</c:if>
													<c:if test="${cardinfo.card_label eq 'danger'}">
														<input id="testbtn" class="selectedLabel form-control ml-1 mr-1" type="text" style="width: 80px; height: 25px;" value="Red" readonly>
													</c:if>
													<c:if test="${cardinfo.card_label eq 'warning'}">
														<input id="testbtn" class="selectedLabel form-control ml-1 mr-1" type="text" style="width: 80px; height: 25px;" value="Orange" readonly>
													</c:if>
													<c:if test="${cardinfo.card_label eq 'success'}">
														<input id="testbtn" class="selectedLabel form-control ml-1 mr-1" type="text" style="width: 80px; height: 25px;" value="Green" readonly>
													</c:if>
													<c:if test="${cardinfo.card_label eq 'info'}">
														<input id="testbtn" class="selectedLabel form-control ml-1 mr-1" type="text" style="width: 80px; height: 25px;" value="SkyBlue" readonly>
													</c:if>
													<c:if test="${cardinfo.card_label eq 'primary'}">
														<input id="testbtn" class="selectedLabel form-control ml-1 mr-1" type="text" style="width: 80px; height: 25px;" value="Blue" readonly>
													</c:if>
													<c:if test="${cardinfo.card_label eq 'secondary'}">
														<input id="testbtn" class="selectedLabel form-control ml-1 mr-1" type="text" style="width: 80px; height: 25px;" value="Gray" readonly>
													</c:if>
													<c:if test="${cardinfo.card_label eq 'dark'}">
														<input id="testbtn" class="selectedLabel form-control ml-1 mr-1" type="text" style="width: 80px; height: 25px;" value="Black" readonly>
													</c:if>
													<div class="test123">&nbsp;SAVE!</div>
												</div>
											</div>
										</div>
										<div class="card">
											<div id="datesAppendTarget" style="width: 350px;"></div>
											<c:if test="${cardinfo.card_start_date ne null}">
												<div class="card-header" id="cardDates">
													<h4>Dates</h4>
													<div>
														<span id="cardDatesSpan" style="background-color: rgb(235, 251, 252); border-radius: 3px; font-size: 15px;">${cardinfo.card_start_date} - ${cardinfo.card_end_date}</span>
													</div>
													<div class="fa fa-times ml-3 mb-1" style="cursor: pointer;" onclick="deleteDates(${cardinfo.card_id})"></div>
												</div>
											</c:if>
										</div>
									</div>
									<!--카드아이템 : 카드내용-->
									<div class="row">
										<div class="card">
											<div style="width: 740px;"></div>
											<div class="card-header" style="font-size: large;">
												<i class="fa fa-align-left" aria-hidden="true">&nbsp;&nbsp;Description</i>
											</div>
											<div class="card-body">
												<textarea onclick="contentsEdit()" class="cardContents" rows="4" style="width: 100%;" readonly>${cardinfo.card_contents}</textarea>
												<button class="saveBtn btn btn-secondary mt-1" style="position: relative;" onclick="contentsSave(${cardinfo.card_id})">
													SAVE
													<div class="saveDone">SUCCESS !</div>
												</button>
											</div>
										</div>
									</div>
									<!--카드아이템 : 체크리스트-->
									<div class="row">
										<div class="card">
											<div style="width: 740px;"></div>
											<div class="card-header" style="font-size: large;">
												<i class="fa fa-check-square" aria-hidden="true">&nbsp;&nbsp;CheckList</i>
											</div>
											<div class="card-body" id="checklistAppendTarget">
												<c:forEach items="${checkList}" var="check">
													<!--여기서부터-->
													<div class="card ckDIV${check.checklist_id}">
														<div class="card-body" id="checkbody${check.checklist_id}">
															<div class="d-flex justify-content-between" onclick="checklistTitleRename(${check.checklist_id})" style="font-size: 18px; font-weight: bold; color: #868e96;" id="checklistTitle${check.checklist_id}">
																${check.checklist_title}
																<button class="btn ml-2 fa fa-times col-rg" onclick="checklistDelete(${check.checklist_id})"></button>
															</div>
															<div class="progress mb-2">
																<c:set var="itemCnt" value="0"></c:set>
																<c:forEach items="${checkItems}" var="item">
																	<c:if test="${item.checklist_id eq check.checklist_id}">
																		<c:if test="${item.item_status eq 'Y'}">
																			<c:set var="itemCnt" value="${itemCnt+1}"></c:set>
																		</c:if>
																	</c:if>
																</c:forEach>
																<span class="checkChart${check.checklist_id}" style="font-weight: bold;"> <c:if test="${itemCnt eq 0}">&nbsp;&nbsp;&nbsp;0%</c:if>
																</span>
															</div>
															<c:forEach items="${checkItems}" var="item">
																<c:if test="${item.checklist_id eq check.checklist_id}">
																	<c:if test="${item.item_status eq 'Y'}">
																		<input type="checkbox" checked="checked" onclick="checkItem(${item.checklist_id},${item.item_id})" class="ckitem${item.item_id} mt-1 mb-1 checkitem${item.checklist_id}">
																		<span id="ckItemTitle${item.item_id}" class="ckitem${item.item_id}" onclick="itemTitleRename(${item.item_id})">${item.item_title}</span>
																		<i class="ml-5 fa fa-times ckitem${item.item_id}" style="color: #ced4da; cursor: pointer;" onclick="ckItemDelete(${item.item_id})"></i>
																		<br>
																	</c:if>
																	<c:if test="${item.item_status eq 'N'}">
																		<input type="checkbox" onclick="checkItem(${item.checklist_id},${item.item_id})" class="ckitem${item.item_id} mt-1 mb-1 checkitem${item.checklist_id}">
																		<span id="ckItemTitle${item.item_id}" class="ckitem${item.item_id}" onclick="itemTitleRename(${item.item_id})">${item.item_title}</span>
																		<i class="ml-5 fa fa-times ckitem${item.item_id}" style="color: #ced4da; cursor: pointer;" onclick="ckItemDelete(${item.item_id})"></i>
																		<br>
																	</c:if>
																</c:if>
															</c:forEach>
														</div>
														<button class="btn btn-secondary fa fa-plus ml-4 mb-5 additem${check.checklist_id}" style="width: 15%;" onclick="addCheckListItems(${check.checklist_id})">item</button>
													</div>
													<!--여기까지가 하나의 체크리스트-->
												</c:forEach>
											</div>
										</div>
									</div>
									<!--카드아이템 : 파일첨부-->
									<div class="row mb-5">
										<div class="card">
											<div style="width: 740px;"></div>
											<div class="card-header" style="font-size: large;">
												<i class="fa fa-paperclip ml-1 files">&nbsp;&nbsp;Attachments</i>
											</div>
											<div class="card-body" id="file_append_target">
												<c:forEach items="${fileinfoList}" var="file">
													<c:if test="${file.pfile_name ne null}">
														<!--여기서부터-->
														<div class="card" id="file${file.file_id}">
															<div class="card-body d-flex">
																<div style="box-shadow: 2px 2px 2px 1px #adb5bd; width: 200px; height: 80px; border: solid 1px #D3D3D3; line-height: 80px; border-radius: 10px;" class="mr-2 text-center thumbnail">
																	<c:if test="${fn:substringAfter(file.pfile_name,'.') eq 'jpg' 
                          	|| fn:substringAfter(file.pfile_name,'.') eq 'png' 
                          	|| fn:substringAfter(file.pfile_name,'.') eq 'gif'}">
																		<img id="thumbnailImg${file.file_id}" src="/cardFile/${file.pfile_name}">
																	</c:if>
																	<h5 style="display: inline-block;">${fn:substringAfter(file.pfile_name,'.')}</h5>
																</div>
																<div class="ml-3 mt-2">
																	<div class="row mb-2">
																		<span>&nbsp;&nbsp;&nbsp;${file.file_name}</span>
																	</div>
																	<div class="row">
																		<span class="btn filedelbtn" onclick="fileDelete(${file.file_id})">Delete</span> <a class="btn filedownbtn" href="cardFileDownload?file_name=${file.file_name}&pfile_name=${file.pfile_name}">Download</a>
																		<!-- <label class="btn fileeditbtn" for="input-fileEdit${file.file_id}" onclick="cardFileEdit(${file.file_id})">Edit</label>
                    				<input type="file" id="input-fileEdit${file.file_id}" style="display:none;">  -->
																		<c:if test="${fn:substringAfter(file.pfile_name,'.') eq 'jpg' 
		                          	|| fn:substringAfter(file.pfile_name,'.') eq 'png' 
		                          	|| fn:substringAfter(file.pfile_name,'.') eq 'gif'}">
																			<c:if test="${cardinfo.card_thema ne file.file_id}">
																				<span class="btn cardThema" onclick="cardThemaSelect(${file.file_id},${file.card_id})">Make Cover</span>
																			</c:if>
																			<c:if test="${cardinfo.card_thema eq file.file_id}">
																				<span class="btn cardThema" onclick="cardThemaRemove(${file.file_id},${file.card_id})">Remove Cover</span>
																			</c:if>
																		</c:if>
																	</div>
																</div>
															</div>
														</div>
													</c:if>
												</c:forEach>
												<!--여기까지가 하나의 첨부파일-->
											</div>
										</div>
									</div>
								</div>
								<!--카드댓글-->
								<!--/////////////////////////////////////////////-->

								<div class="mt-5 comment__section">
									<h4 class="cardName ml-2">
										Activity <i class="fa fa-comment" aria-hidden="true"></i>
									</h4>
									<div class="comment__wrap">
										<div class="comment__write__box">
											<img src="resources/assets/img/avatar/${prof_pic }" alt="" class="comment__write__profile__img">
											<div class="comment__write__text__box">
												<div class="comment__write__text">
													<textarea name="" id="" class="comment__write__textarea"></textarea>
												</div>
											</div>
										</div>
										<hr class="hrEl">
										<ul class="comment__body">
											<c:forEach items="${commentList }" var="comment">
												<li class="comment" data-commentId="${comment.comment_id }" data-commentGroup="${comment.comment_group}" data-commentOrder="${comment.comment_order}">
													<div class="comment__area">
														<div class="comment__profile__img__box">
															<img src="resources/assets/img/avatar/${comment.prof_pic }" alt="" class="comment__write__profile__img">
															<div class="recomment__btn" onclick="recommentViewFn(${comment.comment_group},${comment.card_id},this)">
																<i class="fas fa-comment-medical"></i> <span class="recomment__num">${comment.gcnt-1}</span>
															</div>
														</div>
														<div class="comment__content">
															<div class="comment__writer__box">
																<div class="comment__writer">${comment.nickname}</div>
																<div class="comment__write__menu__box">
																	<div class="fas fa-bars">
																		<div class="fas__menu">
																			<div class="fas__menu__btnC">수정</div>
																			<div class="fas__menu__btnD">삭제</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="comment__detail">${comment.comment_content}</div>
															<c:if test="${comment.pfile_name ne null}">
																<c:choose>
																	<c:when test="${fn:substringAfter(comment.pfile_name,'.') eq 'jpg' 
                          	|| fn:substringAfter(comment.pfile_name,'.') eq 'png' 
                          	|| fn:substringAfter(comment.pfile_name,'.') eq 'gif'}">
																		<div class="comment__context__file__prev">
																			<div class="context__file__prev__imgBox">
																				<img src="resources/commentFile/${comment.pfile_name}" alt="">
																			</div>
																			<div class="context__file__prev__text">
																				파일명 : <a href="commentDownload.do?pfile_name=${comment.pfile_name}&file_name=${comment.file_name}" class="fileContent">${comment.file_name}</a>
																			</div>
																			<span class="context__file__prev__removeBtn" onclick=""><i class="fas fa-times"></i> </span>
																		</div>
																	</c:when>

																	<c:otherwise>
																		<div class="comment__context__file">
																			파일명 : <a href="commentDownload.do?pfile_name=${comment.pfile_name}&file_name=${comment.file_name}" class="fileContent">${comment.file_name}</a> <span class="context__file__prev__removeBtn" onclick=""> <i class="fas fa-times"></i>
																			</span>
																		</div>
																	</c:otherwise>

																</c:choose>
															</c:if>
															<div class="comment__additional">
																<span class="comment__date">${comment.comment_date}</span> <span class="comment__evaluation__btn"> <span class="goodBtnRow"><span class="goodBtn__icon">👍🏻</span> <c:set var="goodnum" value="0" /> <c:if test="${comment.goodnumb ne null}">
																			<c:set var="goodnum" value="${comment.goodnumb }" />
																		</c:if> <span class="goodBtn__num">${goodnum }</span></span> <span class="badBtnRow"><span class="badBtn__icon">👎🏻</span> <c:set var="badnum" value="0" /> <c:if test="${comment.badnumb ne null}">
																			<c:set var="badnum" value="${comment.badnumb }" />
																		</c:if> <span class="badBtn__num">${badnum}</span> </span>
																</span>
															</div>
														</div>
													</div>
													<div class="recomment__wrap">
														<ul class="recomment__body">

														</ul>
														<hr class="recomment__hrEl">
														<div class="recomment__write__box">
															<div class="recomment__icon"></div>
															<div class="comment__write__box">
																<img src="resources/assets/img/avatar/${prof_pic }" alt="" class="comment__write__profile__img">
																<div class="comment__write__text__box">
																	<div class="comment__write__text">
																		<textarea name="" id="" class="comment__write__textarea"></textarea>
																	</div>
																</div>
															</div>

														</div>
													</div>
												</li>
											</c:forEach>
										</ul>
									</div>
								</div>


							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>



	<div class="comment__template" style="display: none">
		<li class="comment" data-commentId="">
			<div class="comment__area">
				<div class="comment__profile__img__box">
					<img src="resources/assets/img/avatar/" alt="" class="comment__write__profile__img">
					<div class="recomment__btn" onclick="">
						<i class="fas fa-comment-medical"></i> <span class="recomment__num">0</span>
					</div>
				</div>
				<div class="comment__content">
					<div class="comment__writer__box">
						<div class="comment__writer"></div>
						<div class="comment__write__menu__box">
							<div class="fas fa-bars">
								<div class="fas__menu">
									<div class="fas__menu__btnC">수정</div>
									<div class="fas__menu__btnD">삭제</div>
								</div>
							</div>
						</div>
					</div>
					<div class="comment__detail"></div>
					<div class="comment__context__file__prev">
						<div class="context__file__prev__imgBox">
							<img src="resources/commentFile/" alt="">
						</div>
						<div class="context__file__prev__text">
							파일명 : <a href="" class="fileContent"></a>
						</div>
						<span class="context__file__prev__removeBtn" onclick=""><i class="fas fa-times"></i> </span>
					</div>
					<div class="comment__context__file">
						파일명 : <a href="" class="fileContent"></a> <span class="context__file__prev__removeBtn" onclick=""> <i class="fas fa-times"></i>
						</span>
					</div>
					<div class="comment__additional">
						<span class="comment__date"></span> <span class="comment__evaluation__btn"> <span class="goodBtnRow"><span class="goodBtn__icon">👍🏻</span> <span class="goodBtn__num">0</span></span> <span class="badBtnRow"><span class="badBtn__icon">👎🏻</span> <span class="badBtn__num">0</span> </span>
						</span>
					</div>
				</div>
			</div>
			<div class="recomment__wrap">
				<ul class="recomment__body">

				</ul>
				<hr class="recomment__hrEl">
				<div class="recomment__write__box">
					<div class="recomment__icon"></div>
					<div class="comment__write__box">
						<img src="resources/assets/img/avatar/" alt="" class="comment__write__profile__img">
						<div class="comment__write__text__box">
							<div class="comment__write__text">
								<textarea name="" id="" class="comment__write__textarea"></textarea>
							</div>
						</div>
					</div>

				</div>
			</div>
		</li>
	</div>

	<div class="recomment__template" style="display: none">
		<li class="recomment">
			<div class="recomment__icon"></div>
			<div class="recomment__area">
				<div class="comment__profile__img__box">
					<img src="../assets/img/avatar/avatar-2.png" alt="" class="comment__write__profile__img">
				</div>
				<div class="comment__content">
					<div class="comment__writer__box">
						<div class="comment__writer"></div>
						<div class="comment__write__menu__box">
							<div class="fas fa-bars">
								<div class="fas__menu">
									<div class="fas__menu__btnC">수정</div>
									<div class="fas__menu__btnD">삭제</div>
								</div>
							</div>
						</div>
					</div>
					<div class="comment__detail"></div>
					<div class="comment__context__file__prev">
						<div class="context__file__prev__imgBox">
							<img src="" alt="">
						</div>
						<div class="context__file__prev__text">
							파일명 : <a href="#" class="fileContent"></a>
						</div>
						<span class="context__file__prev__removeBtn"> <i class="fas fa-times"></i>
						</span>
					</div>
					<div class="comment__context__file">
						파일명 : <a href="#" class="fileContent"></a> <span class="context__file__prev__removeBtn"> <i class="fas fa-times"></i>
						</span>
					</div>
					<div class="comment__additional">
						<span class="comment__date">2022/04/11</span> <span class="comment__evaluation__btn"> <span class="goodBtnRow"><span class="goodBtn__icon">👍🏻</span> <span class="goodBtn__num">0</span></span> <span class="badBtnRow"><span class="badBtn__icon">👎🏻</span> <span class="badBtn__num">0</span></span>
						</span>
					</div>
				</div>
			</div>
		</li>
	</div>



	<div class="comment__write__tool__box__template" style="display: none;">
		<div class="comment__write__tool__box" style="display: none;">
			<div class="comment__write__tools">
				<label for="comment__write__input" class="file__icon fa fa-paperclip files"></label> <input type="file" id="comment__write__input" class="comment__input" style="display: none;">
				<button id="emoji-button" class="emojibutEl">😀</button>
				<div class="comment__input__fileName"></div>
			</div>
			<div class="comment__write__submitBtn">SAVE</div>
		</div>
	</div>

	<!-- 댓글 사진 미리보기-->
	<div class="img__box__wrap">
		<div class="img__box">
			<img src="" alt="" class="img_preview">
		</div>
	</div>


	<div class="comment__write__text__box__template" style="display: none;">
		<div class="comment__write__text__box">
			<div class="comment__write__text">
				<textarea name="" id="" class="comment__write__textarea"></textarea>
			</div>
		</div>
	</div>


	<div class="modifyFilePrev__template" style="display: none">
		<div class="comment__context__file__prev">
			<div class="context__file__prev__imgBox">
				<img src="" alt="">
			</div>
			<div class="context__file__prev__text">
				파일명 : <a href="#" class="fileContent"></a>
			</div>
			<span class="context__file__prev__removeBtn"> <i class="fas fa-times"></i>
			</span>
		</div>
		<div class="comment__context__file">
			파일명 : <a href="#" class="fileContent"></a> <span class="context__file__prev__removeBtn"> <i class="fas fa-times"></i>
			</span>
		</div>
	</div>




	<input type="hidden" id="currentUserProfPic" value="${prof_pic }">
	<input type="hidden" id="currentCardId" value="${cardinfo.card_id}">

	<script src="https://cdn.jsdelivr.net/npm/emoji-button@0.6.0/dist/index.min.js"></script>
	<script type="text/javascript">
	
	
		let imgTag = document.querySelectorAll('.rounded-circle');
		console.log(imgTag);
		let prof_picTag = "${prof_pic}";
		let imgSrc = "/profilePic/" + prof_picTag;
		
		imgTag.forEach(function(val, ind) {
	        console.log(val);
	        if(prof_picTag.substring(0, 4) == 'http') {
	            val.setAttribute("src", prof_picTag);
	        } else {
	            val.setAttribute("src", imgSrc);
	        }
	    }) 
	</script>
	<script type="text/javascript">
//카드 파일업로드
$("#input-file").on("change", function(){
	let cardId = $("#selectedCard").attr("data-cardId");
	var form = new FormData();
	form.append("file", $("#input-file")[0].files[0]);
	form.append("card_id", $("#selectedCard").attr("data-cardId"));
	$.ajax({
		url : "AjaxCardFileUpload",
		type : "POST",
		data : form,
		dataType : "json",
		contentType : false,
		processData : false,
		success : function(data){
			file_append_target.innerHTML=""
			let file_end = (data.file_name).substring((data.file_name).lastIndexOf(".")+1); //확장자명
			
			let card = document.createElement("div");
			card.setAttribute("class","card");
			card.setAttribute("id","file"+data.file_id);
			let hhhhead = document.createElement("div");
			hhhhead.setAttribute("class","card-body d-flex");
			let thumbnail = document.createElement("div");
			thumbnail.setAttribute("class","mr-2 text-center thumbnail");
			
			let cardbody = document.createElement("div");
			cardbody.setAttribute("class","ml-3 mt-2");
			let frow = document.createElement("div");
			frow.setAttribute("class","row mb-2");
			let filename = document.createElement("span");
			filename.innerHTML = "&nbsp;&nbsp;&nbsp;"+data.file_name;
			let srow = document.createElement("div");
			srow.setAttribute("class","row");
			let delbtn = document.createElement("span");
			delbtn.setAttribute("class","btn filedelbtn");
			delbtn.innerHTML = "Delete";
			delbtn.onclick = function(){
				fileDelete(data.file_id,cardId);
			}
			let downbtn = document.createElement("a");
			downbtn.removeAttribute("data-toggle");
			downbtn.setAttribute("class","btn filedownbtn");
			downbtn.setAttribute("href","cardFileDownload?file_name="+data.file_name+"&pfile_name="+data.pfile_name);
			downbtn.innerHTML = "Download";

			//let editbtn = document.createElement("label");
			//editbtn.setAttribute("class","btn filedelbtn");
			//editbtn.setAttribute("for","input-fileEdit"+data.file_id);
			//editbtn.innerHTML = "Edit";
			//editbtn.onclick = function(){
			//	cardFileEdit(data.file_id);
			//}
			//let fileInput = document.createElement("input");
			//fileInput.setAttribute("type","file")
			//fileInput.setAttribute("id","input-fileEdit"+data.file_id);
			//fileInput.style.display = "none";
			
			frow.append(filename);
			srow.append(delbtn);
			srow.append(downbtn);
			//editbtn.append(fileInput);
			//srow.append(editbtn);
			
			let input = document.querySelector("#input-file");
			if(input.files[0].type.match(/image\//)){
				let img = document.createElement("img");
				img.setAttribute("id","thumbnailImg"+data.file_id);
				getFileSrc(input,img);
				thumbnail.append(img);
				let themaBtn = document.createElement("span");
				themaBtn.setAttribute("class","btn cardThema");
				themaBtn.innerHTML = "Make cover";
				themaBtn.onclick = function(){
					cardThemaSelect(data.file_id, data.card_id);
				}
				srow.append(themaBtn);
			}else{
				let thumbname = document.createElement("h5");
				thumbname.style.display="inline-block";
				thumbname.innerText=file_end;
				thumbnail.append(thumbname);
			}
			
			cardbody.append(frow);
			cardbody.append(srow);
			hhhhead.append(thumbnail);
			hhhhead.append(cardbody);
			card.append(hhhhead);
			
			file_append_target.prepend(card);
			document.querySelector(".files"+cardId).style.color="tomato";
		},
		error : function(){
			console.log("AjaxCardFileUpload 실패");
		}
	})
})
 
function getFileSrc(input,img){
      var reader = new FileReader();
      
      reader.onload = function (e) {
      	img.setAttribute("src", e.target.result)
      }
      reader.readAsDataURL(input.files[0])
 }
 
//카드 첨부파일 편집
//function cardFileEdit(file_id){
//	$("#input-fileEdit"+file_id).on("change", function(){
//		var form = new FormData();
//		form.append("file",$("#input-fileEdit"+file_id)[0].files[0]);
//		form.append("file_id", file_id);
//		$.ajax({
//			url : "AjaxCardFileEdit",
//			type : "POST",
//			data : form,
//			dataType : "text",
//			contentType : false,
//			processData : false,
//			success : function(data){
//				if(data != "NO"){
//					var reader = new FileReader();
//			        reader.onload = function (e) {
//			        	document.querySelector("#thumbnailImg"+file_id).setAttribute("src", e.target.result)
//			        }
//			        reader.readAsDataURL($("#input-fileEdit"+file_id)[0].files[0]);
//				}else{
//					alert("파일수정이 실패하였습니다.\n관리자에게 문의하세요.");
//				}
//			},
//			error : function(){
//				console.log("카드첨부파일 변경 실패");
//			}
//		})
//	})
//}
	



 	const currentCardId = $('#currentCardId').val();
    const currentUserProfPic = $('#currentUserProfPic').val();

    
    //파일 확장자 체크 함수-----------------------------------------------------------------------------------------
    function checkFile(str) {

      var ext = str.split('.').pop().toLowerCase();
      if ($.inArray(ext, ['jpg', 'jpeg', 'gif', 'bmp', 'png', 'tiff', 'svg', 'ico']) == -1) {
        return false;
      }
      return true;
    }
	//----------------------------------------------------------------------------------------------------------
    
	
    //날짜 변환 함수-----------------------------------------------------------------------------------------------
    function getDateStr(date) {
      var sYear = date.getFullYear();
      var sMonth = date.getMonth() + 1;
      var sDate = date.getDate();
      sMonth = sMonth > 9 ? sMonth : "0" + sMonth;
      sDate = sDate > 9 ? sDate : "0" + sDate;
      return sYear + "/" + sMonth + "/" + sDate;
    }
    //----------------------------------------------------------------------------------------------------------
	
    
    //텍스트에리어 포커스 이벤트--------------------------------------------------------------------------------------
    $(document).on('focus', '.comment__write__textarea', textareaFocusFn)
    
    function textareaFocusFn() {

      let textareaChk = $(event.target).closest('.comment__write__text__box').find('.comment__write__tool__box');
      let eventTarget = $(event.target)
      
      if (textareaChk.length) {

        return;
      }

      if ($('.textareaTarget').length) {
        $(".textareaTarget").closest('.comment__write__text__box').find('.comment__write__tool__box').slideUp(200);
        setTimeout(function () {
          $('.textareaTarget').closest('.comment__write__text__box').find('.comment__write__tool__box')
            .remove();
          $('.textareaTarget').removeClass('textareaTarget')
        }, 200);

        setTimeout(function () {

          eventTarget.addClass('textareaTarget');
          let targetParent = eventTarget.parent().parent();

          let tool__box = $('.comment__write__tool__box__template');
          targetParent.append(tool__box.html());
          EmojiButton(document.querySelector('.emojibutEl'), function (emoji) {

            document.querySelector('.textareaTarget').value += emoji;
          });
          $(".textareaTarget").closest('.comment__write__text__box').find('.comment__write__tool__box').slideDown();

        }, 210)

      } else {
        eventTarget.addClass('textareaTarget');
        let targetParent = eventTarget.parent().parent();
        let tool__box = $('.comment__write__tool__box__template');
        targetParent.append(tool__box.html());
        EmojiButton(document.querySelector('.emojibutEl'), function (emoji) {

          document.querySelector('.textareaTarget').value += emoji;
        });
        $(".textareaTarget").closest('.comment__write__text__box').find('.comment__write__tool__box').slideDown();

      }

    }
 	//----------------------------------------------------------------------------------------------------------
    
 	 
 	//텍스트에리어 Height 이벤트 함수-----------------------------------------------------------------------------------
 	 $(document).on('keydown keyup', '.textareaTarget', textareaHeightFn)
 	 
 	 function textareaHeightFn(event) {
      var textEl = $(event.target);
      textEl[0].style.height = '20px';
      var textElHeight = textEl.prop('scrollHeight');
      textEl.css('height', textElHeight)
    }
 	//----------------------------------------------------------------------------------------------------------
 	
 	 
    //파일 Input 이벤트 함수----------------------------------------------------------------------------------------
    $(document).on('change', '.comment__input', comment__fileInputFn)
    
     function comment__fileInputFn(event) {
 		
      let tgInput = event.target

      $(tgInput).closest('.comment__write__tool__box').find('.comment__input__fileName').text("파일명 : " + tgInput.files[
        0].name);
      $(tgInput).closest('.comment__write__tool__box').find('.comment__input__fileName').css('display', 'block');

    }
 	//----------------------------------------------------------------------------------------------------------
 	
 	
 	//파일 업로드 전 미리보기 함수------------------------------------------------------------------------------------
    $(document).on('click', '.comment__input__fileName', fileNameClickFn)
    
     function fileNameClickFn() {
      let input = event.target.parentNode.querySelector('input');

      if (!input.files[0].type.match(/image\//)) {
        return;
      }

      var reader = new FileReader();

      reader.onload = function (e) {
        var image = $('.img_preview');
        image.attr('src', e.target.result)

        $('.img__box__wrap').css('display', 'block')

      }
      reader.readAsDataURL(input.files[0])
    }
  	//----------------------------------------------------------------------------------------------------------
  	
 
  	//업로드 된 파일 미리보기 함수------------------------------------------------------------------------------------
    $(document).on('click', '.context__file__prev__imgBox', commentImgprevFn)
	
    function commentImgprevFn() {

      let src = $(event.target).attr('src');
      var image = $('.img_preview');
      image.attr('src', src)

      $('.img__box__wrap').css('display', 'block')

    }
 	//----------------------------------------------------------------------------------------------------------
    
 	 
 	//화면 로딩후 리댓글 아이콘 클릭----------------------------------------------------------------------------------
  	function recommentViewFn(comment_group, card_id, e){
    	
    	 if($(e).attr('data')=="yes"){
    		 
        		$(e).closest('.comment').find('.recomment__wrap').slideToggle()
    	    		
        		return;
        	}
    		 
    	 if(!ajaxRecommentSelect(comment_group, card_id, e)){
    			 
    		 $(e).closest('.comment').find('.recomment__wrap').slideToggle()
    		 
    		}
	    }
  	 //----------------------------------------------------------------------------------------------------------

  	 
  	 //화면 로딩후 리댓글 아이콘 클릭 - 리댓글 Select Ajax---------------------------------------------------------------
    	function ajaxRecommentSelect(comment_group, card_id, e){
    			let flag = false;
 
				$.ajax({
		    		url : 'ajaxRecommentSelect.do',
		    		type : 'post',
		    		dataType : 'json',
		    		async : false,
		    		data : {
		    			card_id : card_id,
		    			comment_group : comment_group
		    		},
		    		success: function(data){
						if(data){
							flag = true;
							recommentViewCreate(data, e);
						}  			
		    		}
		    	})	
		    	
		    	return flag;
 	   }
    //----------------------------------------------------------------------------------------------------------
    
    
    //화면 로딩후 리댓글 아이콘 클릭 - 리댓글 Create--------------------------------------------------------------------
  	 	 function recommentViewCreate(data, e){
    		
    		let target = $(e).closest('.comment').find('.recomment__body');
    		let recomment__wrap = $(e).closest('.comment').find('.recomment__wrap');
    		let submitBtn = false;
    		let file = false;
  	 		 for(let recomment of data){
  	 			
  	 			reCommentCreateRow(recomment, target, submitBtn, file)
  	 		 }

  	 		recomment__wrap.slideToggle()
  	 		$(e).attr('data' , 'yes');
  
   		 } 
   //----------------------------------------------------------------------------------------------------------
    
   
   //댓글, 리댓글 Create(SAVE 버튼 클릭)---------------------------------------------------------------------------- 
 	$(document).on('click', '.comment__write__submitBtn', commentRecommentCreateFn)
 	
 	 function commentRecommentCreateFn(){
    	 let target = $(event.target);
    	 if($('.textareaTarget').attr('data-state')=="modify"){
    		 commentModifyFn(target)
    		 return
    	 }
    	 
  		 let textareaVal = $('.textareaTarget').val().replace(/(?:\r\n|\r|\n)/g, '<br/>');
  		 let compare = target.closest('ul').length;
  		 
  		 if(!compare){
  			 commentCreate(target, textareaVal);
  			 
  		 }else{
  			 recommentCreate(target, textareaVal)
  			 let recommentNum = target.closest('.comment').find('.recomment__num').text()
  			 target.closest('.comment').find('.recomment__num').text(Number(recommentNum)+1);
  		 }
  		 
  		target.closest('.comment__write__text__box').find('.comment__write__textarea').val('');
  		target.closest('.comment__write__text__box').find('.comment__input__fileName').text('');
  		target.closest('.comment__write__text__box').find('#comment__write__input').val('');
  		target.closest('.comment__write__text__box').find('.comment__write__textarea')[0].style.height = '20px';
  	 }
 	//----------------------------------------------------------------------------------------------------------
   
    
    //댓글 create 함수----------------------------------------------------------------------------------------
     function commentCreate(target, textareaVal){
    	 let databaseTypeToday = new Date();
    	 let comment_date = getDateStr(databaseTypeToday)
    	 
    	 let emptyFile = target.parent().find('.comment__input').val()
    	 let commentMaxGroup = ajaxCommentMaxGroup();
    	 let file;
    	 let result;
    	 if(emptyFile){
    		 file = target.parent().find('.comment__input')
    		 result = formCommentFileInsert(textareaVal, commentMaxGroup, databaseTypeToday, file)
    			  
    	 }else{
    		 file = null;
    		 result = ajaxCommentInsert(textareaVal, commentMaxGroup, databaseTypeToday)
    	
    	 }

    	 if(result) commentCreateRow(comment_date, file, result)
     }
   //------------------------------------------------------------------------------------------------------
   
   
   //댓글 작성후 DB insert ajax----------------------------------------------------------------------
     function ajaxCommentInsert(textareaVal, commentMaxGroup, databaseTypeToday){

    		let flag;
    		$.ajax({
    			url : 'ajaxCommentInsert.do',
    			type : 'post',
    			dataType : 'json',
    			async : false,
    			data : {
    				card_id : currentCardId,
    				comment_content : textareaVal,
    				comment_group : commentMaxGroup,
    				comment_date : databaseTypeToday
    			},
    			success : function(data){
    				
    				flag = (data != null) ? data : null;
    			}
    		})
    		
    		return flag;
    	}
    //------------------------------------------------------------------------------------------------------
     
     
    //파일/댓글 작성후 fomr 태그 입력후 DB insert ajax------------------------------------------------------------
     function formCommentFileInsert(textareaVal, commentMaxGroup, databaseTypeToday, file){
    		var form = new FormData()
    		let result = null;

    		form.append("comment_group", commentMaxGroup)
    		
    		form.append("comment_content", textareaVal)
    		
    		form.append("comment_date", databaseTypeToday)
    		
    		form.append("card_id", currentCardId)
    		
    		form.append("file", $(file)[0].files[0]);

    		
    		result = ajaxCommentFileInsert(form)
    		return result;
    	}
     
     function ajaxCommentFileInsert(form){
    		let flag = null;
    		$.ajax({
    			url : 'ajaxCommentFileInsert.do',
    			type : 'post',
    			dataType : 'json',
    			data : form,
    			contentType :false,
    			processData : false,
    			async : false,
    			success : function(data){
    				flag = (data != null) ? data : null 
    			}
    		})
    		
    		return flag;
    	}
    //--------------------------------------------------------------------------------------------------------
    
    
    //리댓글 create 함수-------------------------------------------------------------------------------------------
     function recommentCreate(target, textareaVal){
    	 let databaseTypeToday = new Date();
    	 let comment_date = getDateStr(databaseTypeToday)
    	 let nemptyFile = target.parent().find('.comment__input').val()
    	 let targetGroup = target.closest('.comment').attr("data-commentgroup")
    	 let targetOrder = ajaxRecommentMaxOrder(targetGroup);
    	 let targetEl = $(target).closest('.comment').find('.recomment__body');
    	 let submitBtn = true;
    	 let file;
    	 let result;
    	 
    	 if(nemptyFile){
    		 file = target.parent().find('.comment__input')
    		 result = formRecommentFileInsert(textareaVal, targetGroup, databaseTypeToday, file, targetOrder)
    		 
    	 }else{
    		 file = null;
    		 result = ajaxRecommentInsert(textareaVal, targetGroup, databaseTypeToday, targetOrder)
    		 
    	 }
    	 
    	 if(result) reCommentCreateRow(result, targetEl, submitBtn, file)
     }
     
     
     function ajaxRecommentInsert(textareaVal, targetGroup, databaseTypeToday, targetOrder){
 	 	let result;
	 	$.ajax({
	 		url : 'ajaxRecommentInsert.do',
	 		type : 'post',
	 		dataType : 'json',
	 		async : false,
	 		data : {
	 			comment_group : targetGroup,
	 			comment_content : textareaVal,
	 			card_id : currentCardId,
	 			comment_date : databaseTypeToday,
	 			comment_order : targetOrder		
	 		},
	 		success : function(data){
	 			result = (data != null)? data : null;
	 		}
	 		
	 	})
	 	return result;
	 }
     
  	//----------------------------------------------------------------------------------------------------------
  	
  	
    //리댓글(파일업로드) 작성후 form 입력후 DB insert ajax------------------------------------------------
     function formRecommentFileInsert(textareaVal, targetGroup, databaseTypeToday, file, targetOrder){
    		var form = new FormData()
    		let result = null;
    		
    		form.append("comment_group", targetGroup)
    		
    		form.append("comment_content", textareaVal)
    		
    		form.append("comment_date", databaseTypeToday)
    		
    		form.append("card_id", currentCardId)
    		
    		form.append("comment_order", targetOrder)
    		
    		form.append("file", $(file)[0].files[0]);

    		
    		result = ajaxRecommentFileInsert(form)
    		return result;
    	}
     
     function ajaxRecommentFileInsert(form){
    		let flag = null;
    		$.ajax({
    			url : 'ajaxReCommentFileInsert.do',
    			type : 'post',
    			dataType : 'json',
    			data : form,
    			contentType :false,
    			processData : false,
    			async : false,
    			success : function(data){
    				flag = (data != null) ? data : null 
    			}
    		})
    		
    		return flag;
    	}
    //------------------------------------------------------------------------------------------------------
   
   
   //입력한 댓글 화면 노출------------------------------------------------------------------------------------------
     function commentCreateRow(comment_date, file, result){
    	 
    	 let template = $('.comment__template');
    	 let nickname = ajaxGetSessionUserNickname();
    	 
    	 template.find('.comment').attr({"data-commentId" : result.comment_id, "data-commentGroup" : result.comment_group, "data-commentOrder" : result.comment_order})
    	 template.find('.comment__write__profile__img').attr("src", "resources/assets/img/avatar/"+currentUserProfPic)
    	 template.find('.recomment__btn').attr("onclick", "recommentViewFn("+result.comment_group+", "+result.card_id+", this)")
    	 template.find('.recomment').attr("onclick", "recommentViewFn("+result.comment_group, result.card_id+")")
    	 template.find('.comment__writer').text(nickname)
    	 template.find('.comment__detail').html(result.comment_content)
    	 template.find('.comment__date').text(comment_date)
    	 
    	 if(file){
    		 
    		 if(checkFile(result.file_name)){
    	    		let img = template.find('.context__file__prev__imgBox').find('img')
    	    		img.addClass("imgTarget");
    	    		file.addClass("fileTarget");
    	    		commentCreateFilePrev()
    	    		template.find('.context__file__prev__text').find('.fileContent').text(result.file_name)
    	    		template.find('.context__file__prev__text').find('.fileContent').attr("href", "commentDownload.do?pfile_name="+result.pfile_name+"&file_name="+result.file_name)
    	    		template.find('.comment__context__file').css('display', 'none');
    	    		template.find('.comment__context__file__prev').css('display', 'flex');
    	    		
    	    	 }else{
    	    		 
    	    		 template.find('.comment__context__file').find('.fileContent').text(result.file_name)
    	    		 template.find('.comment__context__file').find('.fileContent').attr('href', "commentDownload.do?pfile_name="+result.pfile_name+"&file_name="+result.file_name)
    	    		 template.find('.comment__context__file__prev').css('display', 'none');
    	    		 template.find('.comment__context__file').css('display', 'flex');
    	    	 }
    	    	 
    	 }else{
    		 template.find('.comment__context__file__prev').css('display', 'none');
    		 template.find('.comment__context__file').css('display', 'none');
    	 }
    	 
    	 $('.comment__body').append(template.html());
    	 
     }
   //-----------------------------------------------------------------------------------------------------------
     
   //입력한 리댓글 화면 노출-----------------------------------------------------------------------------------------
     function reCommentCreateRow(data, target, submitBtn, file){
  		
    	let template = $('.recomment__template')
    	let recommentDate = new Date(data.comment_date);
    	 
    	if(!submitBtn){
    		
    		template.find('.comment__write__profile__img').attr('src', "resources/assets/img/avatar/"+data.prof_pic)
    		template.find('.comment__writer').text(data.nickname)
    	}else{
    		let nickname = ajaxGetSessionUserNickname();
    		template.find('.comment__writer').text(nickname)
    		template.find('.comment__write__profile__img').attr('src', "resources/assets/img/avatar/"+currentUserProfPic)
    		
    	}
  		 		
 			template.find('.recomment').attr({"data-commentId" : data.comment_id, "data-commentOrder" : data.comment_order, "data-commentgroup" : data.comment_group})
 			template.find('.comment__detail').html(data.comment_content)	
 			template.find('.comment__date').text(getDateStr(recommentDate))
 				
 			if(data.goodnumb == null || data.goodnumb == 0){
 				template.find('.goodBtn__num').text(0)
 			}else{
 				template.find('.goodBtn__num').text(data.goodnumb)
 			}
 		
	 		if(data.badnumb == null || data.badnumb == 0){
	 			template.find('.badBtn__num').text(0)
	 		}else{
	 			template.find('.badBtn__num').text(data.badnumb)
	 		}
 		
 		
 		if(data.file_name != null){
 		
 			if(checkFile(data.file_name)){
 				if(submitBtn) {
 					let img = template.find('.context__file__prev__imgBox').find('img')
 					img.addClass("imgTarget");
 					file.addClass("fileTarget");
 					commentCreateFilePrev()
 				}else{
 					template.find('.context__file__prev__imgBox>img').attr('src', "resources/commentFile/"+data.pfile_name);
 				}
				template.find('.context__file__prev__text>a').text(data.file_name);
 				template.find('.context__file__prev__text>a').attr('href', "commentDownload.do?pfile_name="+data.pfile_name+"&file_name="+data.file_name);
 				template.find('.comment__context__file__prev').css('display', 'flex');
 				template.find('.comment__context__file').css('display', 'none');
 			
 			}else{
 				template.find('.comment__context__file>a').attr('href', "commentDownload.do?pfile_name="+data.pfile_name+"&file_name="+data.file_name);
 				template.find('.comment__context__file>a').text(data.file_name);
 				template.find('.comment__context__file__prev').css('display', 'none');
 				template.find('.comment__context__file').css('display', 'flex');
 			}
 		}else{
 			template.find('.comment__context__file__prev').css('display', 'none');
 			template.find('.comment__context__file').css('display', 'none');
 		}
 			
   		target.append(template.html())
   	 }
   //-----------------------------------------------------------------------------------------------------------
   
     	 
   //(수정/삭제)메뉴 버튼 클릭 이벤트 함수----------------------------------------------------------------------------
    $(document).on('click', '.comment__write__menu__box', comment__write__menu__boxFn)
    
     function comment__write__menu__boxFn() {
 		if($('.menuTarget').length & !$(event.target).find('.menuTarget').length){
 			$('.menuTarget').css('display', 'none');
 			$('.menuTarget').removeClass('menuTarget')
 		}
    	$(event.target).find('.fas__menu').addClass('menuTarget');
 		$(event.target).find('.fas__menu').toggle();

    }
   //----------------------------------------------------------------------------------------------------------
 	
 	
   //(수정/삭제)메뉴 클릭시 권한 체크 ajax---------------------------------------------------------------------------
  	 function ajaxCommentAuthorChk(commentId){
 		 let flag = false;
 		 $.ajax({
 			 url : 'ajaxCommentAuthorChk.do',
 			 type : 'post',
 			 dataType : 'text',
 			 async : false,
 			 data : {
 				 comment_id : commentId
 			 },
 			 success : function(data){
 				 if(data) flag = true;
 			 }
 			 
 		 })
 		 return flag;
 	 }
   //----------------------------------------------------------------------------------------------------------
  	 
  	
   //수정 버튼 클릭 이벤트 함수--------------------------------------------------------------------------------------
  	 $(document).on('click', '.fas__menu__btnC', commentModifyBtnFn)
  	 
  	 function commentModifyBtnFn(){
  		let commentId = $(event.target).closest('li').attr('data-commentId');
    	let flag = ajaxCommentAuthorChk(commentId)
    	if(!flag){
    		alert("권한이 없습니다.")
    		return;
    	}

    	if($(event.target).closest('.comment__content').find('.comment__context__file__prev').css('display') == "flex"){
    		$(event.target).closest('.comment__content').find('.comment__context__file__prev>span').css('display', 'flex');
  
    	}else if($(event.target).closest('.comment__content').find('.comment__context__file').css('display') == "flex"){
    		$(event.target).closest('.comment__content').find('.comment__context__file>span').css('display', 'flex');
    		
    	}
    	
    	let Text = $(event.target).closest('.comment__content').find('.comment__detail').html()
    	
    	let brNum = Text.split('<br>').length + 1;
    	Text = Text.replace(/(<br>|<br\/>|<br \/>)/g, '\r\n');
 

    	let template = $('.comment__write__text__box__template');

    	template.find('.comment__write__textarea').html(Text)
    	template.find('.comment__write__textarea').attr('data-state', 'modify');
    	template.find('.comment__write__textarea').css('height', 20*brNum);
    	$(event.target).closest('.comment__content').find('.comment__detail').html('');
    	$(event.target).closest('.comment__content').find('.comment__detail').append(template.html())
    	
  	 }
  	//----------------------------------------------------------------------------------------------------------
  	 
  	
  	//수정 버튼 클릭 후 파일 X(removeBtn)클릭 이벤트 함수---------------------------------------------------------------
  	 $(document).on('click', '.context__file__prev__removeBtn', fileRemoveBtnFn)
  	 
  	 function fileRemoveBtnFn(){
  		 let commentId = $(event.target).closest('li').attr('data-commentid');
  		 ajaxFileRemove(commentId)
  		 $(event.target).parent().parent().remove()
  	 }
  	//----------------------------------------------------------------------------------------------------------
  	 
  	
  	//파일 삭제 ajax----------------------------------------------------------------------------------------------
  	 function ajaxFileRemove(commentId){
  		 $.ajax({
  			url : 'ajaxFileRemove.do',
  			type : 'post',
  			dataType : 'text',
  			data : {
  				comment_id : commentId
  			},
  			success : function(data){
  				
  			}
  		 })
  	 }
  	//----------------------------------------------------------------------------------------------------------
  	
  	
  	//수정하기 함수------------------------------------------------------------------------------------------------
     function commentModifyFn(target){
    	 let text = $('.textareaTarget').val().replace(/(?:\r\n|\r|\n)/g, '<br/>');
    	 let commentId = target.closest('li').attr('data-commentid')
    	 let input = target.closest('.comment__write__tool__box').find('.comment__input')
    	 let databaseTypeToday = new Date();
    	 if(input.val()){
    		 ajaxFileRemove(commentId)
    		
    		 let result = formCommentFileUpdate(text, input, commentId, databaseTypeToday)
    		 let template = $('.modifyFilePrev__template')
    		 if(checkFile(result.file_name)){
    			 target.closest('.comment__content').find('.comment__context__file').remove()
    			 let img = template.find('img')
    			 input.addClass("fileTarget");
 				 img.addClass("imgTarget");
 				 commentCreateFilePrev()
 				
 				 
 				 template.find('.context__file__prev__text>a').text(result.file_name);
  				 template.find('.context__file__prev__text>a').attr('href', "commentDownload.do?pfile_name="+result.pfile_name+"&file_name="+result.file_name);
  				 template.find('.comment__context__file__prev').css('display', 'flex');
  				 template.find('.comment__context__file').css('display', 'none');
    		 }else{
    			 target.closest('.comment__content').find('.comment__context__file__prev').remove()
    			 
    			 template.find('.comment__context__file>a').attr('href', "commentDownload.do?pfile_name="+result.pfile_name+"&file_name="+result.file_name);
  				 template.find('.comment__context__file>a').text(result.file_name);
  				 template.find('.comment__context__file__prev').css('display', 'none');
  				 template.find('.comment__context__file').css('display', 'flex');
    		 }
    		 target.closest('.comment__detail').after(template.html())
    	 }else{
    		 ajaxCommentModify(text, commentId);
    	 }
    	 
    	 target.closest('.comment__detail').html(text)
    	 
    	 $('.textareaTarget').removeAttr('data-state')
    	 target.closest('.comment__write__text__box').remove();
     }
    //----------------------------------------------------------------------------------------------------------
     
    
 	// 수정하기 파일 업로드 ajax-------------------------------------------------------------------------------------
     function formCommentFileUpdate(textareaVal, input, commentId, databaseTypeToday){
	
		var form = new FormData()
		let result;
		form.append("comment_id", commentId)
		form.append("comment_content", textareaVal)
		form.append("comment_date", databaseTypeToday)
		form.append("file", input[0].files[0]);
		console.log("fkldjlfkjk")
		console.log(input[0].files[0])
		result = ajaxFormCommentFileUpdate(form)
		return result;
	}
    
     function ajaxFormCommentFileUpdate(form){
    		let result = null;
    		$.ajax({
    			url : 'ajaxFormCommentFileUpdate.do',
    			type : 'post',
    			dataType : 'json',
    			data : form,
    			contentType : false,
    			processData : false,
    			async : false,
    			success : function(data){
    				
    				result = (data != null) ? data : null 
    				
    			}
    		})
    		
    	return result;
    	}
   //----------------------------------------------------------------------------------------------------------
   
   
   //댓글/리댓글 수정 DB update ajax-------------------------------------------------------------------------------
     function ajaxCommentModify(textareaVal, commentId){
  	   
  	   $.ajax({
  		 url : 'ajaxCommentModify.do',
  		 type : 'post',
  		 dataType : 'text',
  		 data : {
  			 comment_content : textareaVal,
  			 comment_id : commentId
  		 },
  		 success : function(data){
  			 
  		 }
  	   })
     }
   //----------------------------------------------------------------------------------------------------------
  	
   
   //삭제 버튼 클릭 이벤트 함수-------------------------------------------------------------------------------------
  	 $(document).on('click', '.fas__menu__btnD', commentDeleteBtnFn)
  	 
  	 function commentDeleteBtnFn(){
  		 
  		let commentId = $(event.target).closest('li').attr('data-commentId');
    	let flag = ajaxCommentAuthorChk(commentId)
    	console.log("falg : "+ flag)
    	if(!flag){
    		alert("권한이 없습니다.")
    		return;
    	}
  		
  		let commentOrder = $(event.target).closest('li').attr('data-commentOrder');
  		let commentgroup = $(event.target).closest('li').attr('data-commentgroup');
		console.log(commentOrder)
  		console.log(commentgroup)
		if(commentOrder == 0) {
			ajaxRemoveComment(commentgroup)
			$('[data-commentId="'+commentId+'"]').remove();
		}
		else {
			
			let recommentNum = $(event.target).closest('.comment').find('.recomment__num').text();
			$(event.target).closest('.comment').find('.recomment__num').text(Number(recommentNum)-1);
			ajaxRemoveRecomment(commentId);
			$('[data-commentId="'+commentId+'"]').remove();
		}
		
		
  	 }
  	//----------------------------------------------------------------------------------------------------------
  	 
  	
  	//최상위 댓글 삭제 ajax----------------------------------------------------------------------------------------
  	 function ajaxRemoveComment(commentgroup){
  		 
		$.ajax({
			url : 'ajaxRemoveComment.do',
			type : 'post',
			dataType : 'text',
			data : {
				comment_group : commentgroup
			}
		})
	}
  	//----------------------------------------------------------------------------------------------------------
  	
  	
  	//대댓글 삭제 ajax---------------------------------------------------------------------------------------------
  	function ajaxRemoveRecomment(commentId){
  		
  		$.ajax({
  			url : 'ajaxRemoveRecomment.do',
  			type : 'post',
  			dataType : 'text',
  			data : {
  				comment_id : commentId
  			}
  		})
 
  	}
 	//----------------------------------------------------------------------------------------------------------
 	
 	
  	//좋아요 나빠요 버튼 클릭 이벤트-----------------------------------------------------------------------------------
  	 $(document).on('click', '.goodBtnRow', goodBtnRowFn);
  	 $(document).on('click', '.badBtnRow', badBtnRowFn);
  	 
  	 function goodBtnRowFn(){
  		 let comment_id = $(event.target).closest('li').attr('data-commentId');
  		 let currentGoodNub = $(event.target).parent().find('.goodBtn__num').text();
  	
  		 if(!ajaxGoodBtnClickChk(comment_id)){
  			$(event.target).parent().find('.goodBtn__num').text(Number(currentGoodNub)+1);
  			ajaxGoodInsert(comment_id);
  		 }else{
  			$(event.target).parent().find('.goodBtn__num').text(Number(currentGoodNub)-1);
  			ajaxGoodDelete(comment_id);
  		 }
  		 
  	 }
  	 
	  	function ajaxGoodBtnClickChk(targetCommentId){
	  		
	  		let flag = false;
	  		$.ajax({
	  			url : 'ajaxGoodBtnClickChk.do',
	  			type : 'post',
	  			dataType: 'text',
	  			async : false,
	  			data : {
	  				comment_id : targetCommentId,
	  			}, 
	  			success : function(data){
	  				if(data == "Yes") flag = true;
	  			
	  			}
	  		
	  		})
	  		return flag;
	  	}
	  	 
	  	function ajaxGoodInsert(targetCommentId){
	  		
	  		$.ajax({
	  			url : 'ajaxGoodInsert.do',
	  			type : 'post',
	  			dataType : 'text',
	  			data : {
	  				comment_id : targetCommentId,
	  			},
	  			success : function(data){
	  				
	  			}
	  		})
	  	}
	  	
	  	function ajaxGoodDelete(targetCommentId, userId){
	  		
	  		$.ajax({
	  			url : 'ajaxGoodDelete.do',
	  			type : 'post',
	  			dataType : 'text',
	  			data : {
	  				comment_id : targetCommentId,
	  			},
	  			success : function(data){
	  			
	  			}
	  		})
	  	}
	  	
	  	function badBtnRowFn(){
	  		 let comment_id = $(event.target).closest('li').attr('data-commentId');
	 		 let currentBadNub = $(event.target).parent().find('.badBtn__num').text();
	 		
	 		 if(!ajaxBadBtnClickChk(comment_id)){
	 			$(event.target).parent().find('.badBtn__num').text(Number(currentBadNub)+1);
	 			ajaxBadInsert(comment_id);
	 		 }else{
	 			$(event.target).parent().find('.badBtn__num').text(Number(currentBadNub)-1);
	 			ajaxBadDelect(comment_id);
	 		 }
	  	}
	  	 
	  	
	  	function ajaxBadBtnClickChk(targetCommentId){
			let flag = false;
			$.ajax({
				url : 'ajaxBadBtnClickChk.do',
				type : 'post',
				dataType : 'text',
				async : false,
				data : {
					comment_id : targetCommentId,
				},
				success : function(data){
					if(data == "Yes") flag = true;
				}
			})
			return flag;
		
	}
	  	function ajaxBadInsert(targetCommentId){
	
			$.ajax({
				url : 'ajaxBadInsert.do',
				type : 'post',
				dataType : 'text',
				data : {
					comment_id : targetCommentId,
				},
				success : function(data){
					
				}
			})
		}
	  	
	  	function ajaxBadDelect(targetCommentId){
	  		
	  		$.ajax({
	  			url : 'ajaxBadDelect.do',
	  			type : 'post',
	  			dataType : 'text',
	  			data : {
	  				comment_id : targetCommentId,
	  			},
	  			success : function(data){
	  				
	  			}
	  		})
	  		
	  	}	
	//----------------------------------------------------------------------------------------------------------
  	 
	 
	
	//현재 닉네임 getAjax------------------------------------------------------------------------------------------
     function ajaxGetSessionUserNickname(){
    		let currentUserNickname;
    		
    		$.ajax({
    			url : 'ajaxGetSessionUserNickname.do',
    			type : 'post',
    			dataType : 'text',
    			async : false,
    			success : function(data){

    				currentUserNickname = (data !="false")? data : false;
    			}
    		})
    		return currentUserNickname;
    	}
  	 
 	 //----------------------------------------------------------------------------------------------------------
 	 
 	 
 	 //댓글 그룹 최대수 ajax---------------------------------------------------------------------------------------
     function ajaxCommentMaxGroup(){
    		let commentMaxGroup;
    		
    		$.ajax({
    			url : 'ajaxCommentMaxGroup.do',
    			type : 'post',
    			dataType : 'text',
    			async : false,
    			data : {
    				card_id : currentCardId
    			},
    			success : function(data){
    			
    				commentMaxGroup = data;
    			}
    		})
    		
    		return commentMaxGroup;
    	}
  	//----------------------------------------------------------------------------------------------------------
     
  	
   	//리댓글 순서 ajax---------------------------------------------------------------------------------------------
     function ajaxRecommentMaxOrder(targetGroup){
    		
    		let targetOrder;
    		$.ajax({
    			url : 'ajaxRecommentMaxOrder.do',
    			type : 'post',
    			dataType: 'text',
    			async : false,
    			data : {
    				comment_group : targetGroup,
    					card_id : currentCardId
    			},
    			success : function(data){
    			
    				targetOrder = data;
    			}
    		})
    		
    		return targetOrder;
    	}
   //----------------------------------------------------------------------------------------------------------
   
   
   //댓글 페이지에 create 할때 이미지 노출 함수------------------------------------------------------------------------
     function commentCreateFilePrev(){
   	  var file = document.querySelector('.fileTarget')
         var reader = new FileReader();
        
         reader.onload = function (e) {
       	  let imgtarget = $('.imgTarget')
       	  imgtarget.attr('src', e.target.result)
       	  let filetarget =$('.fileTarget')
       	  imgtarget.removeClass('imgTarget')
       	  filetarget.removeClass('fileTarget')
         }
         reader.readAsDataURL(file.files[0])
    }
   //----------------------------------------------------------------------------------------------------------
   
   
   //화면 클릭시 이벤트--------------------------------------------------------------------------------------------    

    $('body').on('click', function (e) {
      var tgPoint = $(e.target);
      var preview = tgPoint.hasClass('img_preview');
	 
	  if(!tgPoint.closest('.comment__write__menu__box').length){
		  $('.fas__menu').css('display', 'none');
	  }
      if (!tgPoint.closest('.comment__write__text__box').length && $('.textareaTarget').val() == '' && $(
          '.comment__input__fileName').text() == '') {

        $(".textareaTarget").closest('.comment__write__text__box').find('.comment__write__tool__box').slideUp();
        setTimeout(function () {
          $('.textareaTarget').closest('.comment__write__text__box').find('.comment__write__tool__box')
            .remove();
          $('.textareaTarget').removeClass('textareaTarget')
        }, 300);
      }


      if (preview) {
        $('.img__box__wrap').css('display', 'none')
      }


    })
	//----------------------------------------------------------------------------------------------------------


 </script>

	<!-- 은지 코드 -->
	<script src="resources/js/card/card-details.js"></script>
</body>
</html>