<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CollaB Memeber</title>


<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


<link rel="stylesheet" href="resources/assets/css/components.css">
<style type="text/css">
.section-header div {
	margin: 0 auto;
	display: flex;
	align-items: center;
}

.section-header div h1 {
	margin: 0;
}

.section-body {
	/* 	margin-top: 50px; */
	
}

.tableTopMenu {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 0;
}

.tableTopMenu__left {
	display: flex;
	width: 300px;
	border: 2px solid rgb(199, 174, 247);
	height: 45px;
	background-color: #FFFFFF;
	border-radius: 5px;

}

.tableTopMenu__left input {
	border: none;
	box-shadow: none;
	outline-style: none;
	width: 100%;
	margin-left: 5px;
	background: none;
	color: black;
	font-size: 14px;
}

.tableTopMenu__left button {
	padding: 0;
	margin: 0;
	height: 100%;
	width: 100px;
	border: none;
	background-color: rgb(199, 174, 247);
	color: white;
	font-weight: bold;
	font-size: 16px;
	border-radius: 5px;
	outline: none;
	 
}

.tableTopMenu__right {

}
label{
margin: 0;
}
.tableTopMenu__right button {
	padding: 0;
	margin: 0;
	height: 50px;
	width: 400px;
	border: 1px solid rgb(199, 174, 247);
	border-radius: 5px;
	background-color: rgb(199, 174, 247);
	color: #FFFFFF;
	font-weight: bold;
	font-size: 18px;
	outline: none;
}

.off-screen {
	display: none;
}

#pagebtn {
	width: 500px;
	text-align: center;
	margin: 0 auto;
	height: 50px;
	line-height: 60px;
}

#pagebtn a {
	all: initial;
	display: inline-block;
	margin-right: 10px;
	border-radius: 3px;
	border: none;
	font-family: Tahoma;
	background: #f9fafe;
	color: #000;
	text-decoration: none;
	height: 40px;
	width: 40px;
	text-align: center;
	line-height: 40px;
	transition: all .5s;
}

#pagebtn a:hover {
	background-color: #6553C1;
}

#pagebtn a.active {
	background: #6553C1;
	color: #fff;
}

/* table css */
.tabletdRow {
	display: flex;
	width: 100%;
	height: 100%;
	justify-content: space-between;
	align-items: center;
	flex-wrap: nowrap;
	overflow: hidden;
}

.tabletdRow:first-child {
	
}

.tdDetails {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-wrap: nowrap;
}

.user__img {
	height: 45px;
	width: 45px;
	border-radius: 100px;
	margin-right: 15px;
	/* text-align: center; */
	overflow: hidden;
}

.user__img img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.user__name {
	font-size: 16px;
}

.tdOptions {
	width: 40%;
	display: flex;
	flex-wrap: nowrap;
	justify-content: flex-end;
}

.tdOptions a {
	display: inline-block;
	width: 100px;
	min-width: 100px;
	height: 35px;
	border: none;
	background-color: #091e420a;
	line-height: 35px;
	margin-right: 20px;
	border-radius: 5px;
	color: #172b4d;
}

.thOptions {
	width: 40%;
	display: flex;
	flex-wrap: nowrap;
	justify-content: flex-end;
}

.thOptions a {
	text-decoration: none;
	display: inline-block;
	width: 100px;
	min-width: 100px;
	height: 35px;
	border: none;
	line-height: 35px;
	margin-right: 20px;
	border-radius: 5px;
	color: black;
	font-size: 16px;
	cursor: default;
}

.tdOptions a:first-child {
	background: none;
}

.tdOptions a:hover {
	background-color: #dee2e7;
}

.modal-wrapper .modalbox {
	opacity: 0;
	transform: scale(0.5);
	min-width: 200px;
	transition: all 0.2s ease-in;
	background: #9F90D9;
	color: #fff;
	height: auto;
	width: 20%;
	padding: 1rem 2rem;
	border: 2px solid #fff;
}

.hs {
	opacity: 0;
	display: none;
}

.modal-wrapper {
	position: fixed;
	display: flex;
	justify-content: center;
	align-items: center;
	opacity: 0;
	transform: scale(0.5);
	transition: all 0.2s ease-in;
	z-index: -10;
	/* z-index: 999; */
	background: rgba(0, 0, 0, .9);
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: hidden;
}

.modals-content {
	display: flex;
	flex-direction: column;
	align-items: center;
	min-width: 200px;
}

.modals-content-body {
	height: 80px;
	font-size: 18px;
}

.modal-footer .modal-changeBtn {
	display: inline-block;
	width: 60px;
	height: 30px;
	background: #20a88b;
	border: 2px solid #fff;
	margin-right: 15px;
	color: #fff;
	text-align: center;
	line-height: 30px;
	border-radius: 4px;
	cursor: pointer;
}

.modalbox .modal-footer .modal-cancleBtn {
	display: inline-block;
	width: 60px;
	height: 30px;
	background: #fb527a;
	border: 2px solid #fff;
	transition: all 0.5s ease-in;
	line-height: 30px;
	text-align: center;
	border-radius: 4px;
	cursor: pointer;
}

/* 초대 모달 */
.modal-wrapper .modalbox2 {
	opacity: 0;
	transform: scale(0.5);
	transition: all 0.2s ease-in;
	position: relative;
	width: 400px;
	height: auto;
	min-width: 400px;
	max-width: 400px;
	margin: 10vmax auto;
	border-radius: 10px;
	padding: 10px;
 	background: rgba(41, 40, 40, 1); 
/* 	background: #9F90D9; */
}

.modals2-content {
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 100%;
	height: auto;
}

.headerRow {
	width: 100%;
	/* display: flex; */
}

.headerTop {
	/* border: 1px solid white; */
	display: flex;
	height: 60px;
	line-height: 60px;
}

.headerTop-icon {
	margin-right: 15px;
	width: 10%;
	height: 100%;
	color: #fff;
	text-align: center;
	cursor: pointer;
	font-size: 18px;
}

.headerTop-icon i {
	font-size: 18px;
	transition: 0.3s;
}

.headerTop-icon i:hover {
	color: #7c72da;
	transform: scale(1.5);
	transition: 0.3s;
}

.headerTop-input {
	width: 90%;
	height: 100%;
	font-size: 18px;
	font-weight: bold;
	color: #fff;
}

.bodyRow {
	padding: 10px 5px;
	width: 100%;
	background-color: rgba(58, 56, 56, 0.8);
	border-radius: 3px;
}

.bodyRow-search {
	display: flex;
	background-color: rgba(90, 85, 85, 0.8);
	border-radius: 3px;
	height: 40px;
	width: 100%;
	margin: 0 auto;
	line-height: 40px;
	margin-bottom: 25px;
}

.bodyRow-search-icon {
	margin-right: 5px;
	width: 10%;
	height: 100%;
	color: #fff;
	text-align: center;
}

.bodyRow-search-icon i {
	font-size: 16px;
}

.bodyRow-search-input {
	width: 75%;
	height: 100%;
	display: flex;
	flex-direction: column;
	position: relative;
}

.bodyRow-search-input input {
	border: none;
	background: none;
	outline: none;
	color: #fff;
	height: 30px;
	margin-top: 5px;
}

.bodyRow-search-input input:focus ~.underline {
	background: #7c72da;
	height: 3px;
	transition: 0.3s;
}

.underline {
	position: absolute;
	bottom: 7px;
	background-color: #fff;
	display: inline-block;
	height: 1px;
	width: 98%;
}

.bodyRow-search-resultBtn {
	width: 15%;
	height: 100%;
}

.bodyRow-search-resultBtn button {
	width: 100%;
	height: 100%;
	border: none;
	background-color: #7c72da;
	color: #fff;
	font-weight: 600;
	border-radius: 5px;
	transition: 0.3s;
}

.bodyRow-search-resultBtn button:hover {
	transition: 0.3s;
	transform: scale(1.08);
}

.bodyRow-content {
	border: 1px dotted rgba(109, 108, 108, 0.8);
	border-radius: 5px;
	min-height: 150px;
	max-height: 150px;
	overflow-y: scroll;
}

.bodyRow-member {
	display: flex;
	justify-content: space-between;
	margin: 13px 0;
	height: 35px;
	align-items: center;
	padding-left: 5px;
}

.member-img {
	width: 30px;
	border-radius: 200%;
	height: 90%;
	text-align: center;
	overflow: hidden;
}

.member-img img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.member-id {
	width: 200px;
	color: #fff;
}

.member-plusBtn button {
	border: 3px solid yellowgreen;
	background: none;
	border-radius: 5px;
	color: yellowgreen;
	font-size: 13px;
	width: 80px;
	height: 32px;
	font-weight: bold;
	margin: 0;
	padding: 0;
	outline: none;
	transition: 0.3s;
	margin-right: 10px;
}

.member-plusBtn button:hover {
	transition: 0.3s;
	transform: scale(1.08);
}

.footerRow {
	margin-top: 30px;
	border: 1px dotted rgba(109, 108, 108, 0.8);
	border-radius: 5px;
	width: 100%;
}

.footerRow-content {
	min-height: 150px;
	max-height: 150px;
	overflow-y: scroll;
	margin: 0 5px;
}

.footerRow-member {
	display: flex;
	justify-content: space-between;
	margin: 13px 0;
	height: 35px;
	align-items: center;
	padding-left: 5px;
}

.result-member-img {
	width: 30px;
	border-radius: 200%;
	height: 85%;
	text-align: center;
	overflow: hidden;
}

.result-member-img img {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.result-member-id {
	width: 250px;

	color: #fff;
}

.result-member-minusBtn {
	margin-right: 20px;
}

.result-member-minusBtn i {
	font-size: 20px;
	cursor: pointer;
}

.modal2-resultBtn {
	transition: 0.3s;
	margin-top: 40px;
	width: 100%;
	height: 40px;
	border: none;
	text-align: center;
	line-height: 40px;
	border-radius: 5px;
	background-color: #7c72da;
	color: #fff;
	font-size: 15px;
	font-weight: 600;
	cursor: pointer;
}

.modal2-resultBtn:hover {
	transition: 0.3s;
	font-size: 16px;
	background-color: #6b5fd1;
	transform: scale(1.01);
}

input[id^="modal"]:checked+.modal-wrapper {
	opacity: 1;
	z-index: 999;
	transform: scale(1);
	transition: all 0.2s ease-out;
	height: 100vh;
}

input[id^="modal"]:checked+.modal-wrapper>.modalbox {
	opacity: 1;
	z-index: 999;
	transform: scale(1);
	transition: all 0.3s ease-out 0.2s;
}

input[id^="modal"]:checked+.modal-wrapper>.modalbox2 {
	opacity: 1;
	z-index: 999;
	transform: scale(1);
	transition: all 0.3s ease-out 0.2s;
}

.bodyRow-content::-webkit-scrollbar, .footerRow-content::-webkit-scrollbar
	{
	width: 10px;
}

.bodyRow-content::-webkit-scrollbar-thumb, .footerRow-content::-webkit-scrollbar-thumb
	{
	background: yellowgreen;
	border-radius: 6px;
}

.Workspace__boards {
	width: 350px;
	display: flex;
	flex-direction: column;
	align-items: center;
	padding: 0 10px;
	border-radius: 5px;
	background-color: #fff;
	box-shadow: 1px 1px 5px gray;
	max-height: 192px;
	overflow: auto;
	min-height: 192px;
}

.Workspace__boards::-webkit-scrollbar, .footerRow-content::-webkit-scrollbar
	{
	width: 10px;
}

.Workspace__boards::-webkit-scrollbar-thumb, .footerRow-content::-webkit-scrollbar-thumb
	{
	background: #dee2e7;;
	border-radius: 6px;
}

.Workspace__boards__header {
	width: 100%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	height: 40px;
	line-height: 40px;
	border-bottom: 1px dotted gray;
}

.header__hiddenBox {
	visibility: hidden;
}

.Workspace__boards__headerCon {
	font-size: 18px;
}

.Workspace__boards__cancelBtn {
	height: 40px;
	line-height: 45px;
	cursor: pointer;
}

.Workspace__boards__cancelBtn i {
	font-size: 17px;
}

.Workspace__boards__body {
	padding: 10px 0;
	width: 100%;
	height: auto;
}

.Workspace__boards__body__boardsList {
	width: 100%;
}

.Workspace__boards__body__boardsList__row {
	width: 100%;
	display: flex;
	align-items: center;
	padding: 6px 8px;
	border-radius: 5px;
}

.boardsList__row__img {
	width: 38px;
	height: 32px;
	border-radius: 8px;
	margin-right: 10px;
}

.boardsList__row__img img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	overflow: hidden;
}

.boardsList__row__name {
	margin-right: 10px;
}

.boardsList__row__removeBtn {
	display: none;
	margin-left: auto;
	height: 32px;
	width: 80px;
	background-color: #CB4523;
	text-align: center;
	line-height: 32px;
	border-radius: 5px;
	color: #fff;
	cursor: pointer;
}

.Workspace__boards__body__boardsList__row:hover {
	background-color: #dee2e7;
}

.Workspace__boards__body__boardsList__row:hover .boardsList__row__removeBtn
	{
	display: block;
}

.boardsList__row__removeBtn:hover {
	background-color: #ca2e06;
}

.pop_over_boards, .pop_over_author {
	width: 355px;
	position: absolute;
	right: -9999px;
	top: -9999px;
	z-index: 999;
}

.Change__permissions {
	width: 350px;
	height: auto;
	display: flex;
	flex-direction: column;
	align-items: center;
	padding: 0 10px;
	border-radius: 5px;
	background-color: #fff;
	box-shadow: 1px 1px 5px gray;
	position: relative;
	/* max-height: 310px; */
	/* overflow: auto; */
}

.Change__permissions__header {
	width: 100%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	height: 40px;
	line-height: 40px;
	border-bottom: 1px dotted gray;
	font-size: 18px;
}

.header__hiddenBox {
	visibility: hidden;
}

.Change__permissions__cancelBtn {
	height: 40px;
	line-height: 45px;
	cursor: pointer;
}

.Change__permissions__cancelBtn i {
	font-size: 17px;
}

.change__permissions__body {
	padding: 5px 0;
}

.change__adminRow {
	margin-bottom: 5px;
}

.change__adminRow, .change__userRow {
	padding: 9px 0 9px 9px;
	height: auto;
	width: auto;
	display: block;
	cursor: pointer;
}

.change__adminRow:hover:not([disabled]), .change__userRow:hover:not([disabled])
	{
	border-radius: 4px;
	background-color: #dee2e7;
}

.change__adminRow[disabled], .change__userRow[disabled] {
	border-radius: 4px;
	background-color: #dee2e7;
	cursor: default;
	/* color: #bdc1c7; */
}

.change__adminRow[disabled] .adminchkicon, .change__userRow[disabled] .userchkicon
	{
	display: inline-block;
}

.change__admin, .change__user {
	width: 100%;
	display: flex;
	height: 27px;
}

.change__admin span, .change__user span {
	display: none;
	width: 100%;
	height: 100%;
	padding-top: 3px;
	margin-left: 8px;
	box-sizing: border-box;
}

/* remove버튼 */
.remove__member {
	width: 350px;
	height: 150px;
	display: flex;
	flex-direction: column;
	align-items: center;
	padding: 0 10px;
	border-radius: 5px;
	background-color: #fff;
	box-shadow: 1px 1px 5px gray;
	
}

.remove__member__header {
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: space-between;
	height: 40px;
	line-height: 40px;
	border-bottom: 1px dotted gray;
	font-size: 18px;
}

.header__hiddenBox {
	visibility: hidden;
}

.remove__member__cancelBtn {
	height: 40px;
	line-height: 45px;
	cursor: pointer;
}

.remove__member__cancelBtn i {
	font-size: 17px;
}

.remove__member__body {
	width: 100%;
	height: 100%;
}

.remove__memberRow:hover {
	border-radius: 4px;
	background-color: #dee2e7;
	cursor: pointer;
}

.remove__memberRow {
	margin-top: 5px;
	padding: 5px 10px;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	width: 100%;
	height: auto;
}

.remove__member__con {
	height: 25px;
	width: 100%;
	font-size: 15px;
	line-height: 25px;
	box-sizing: content-box;
	font-weight: 600;
}

.remove__member__Btn {
	display: flex;
	width: 100%;
	height: 100%
}

.yesBtn {
	border: 1px solid #ca2e06;
	background-color: #ca2e06;
	margin-right: 15px;
}

.noBtn {
	border: 1px solid black;
	background-color: black;
}

.yesBtn, .noBtn {
	width: 80px;
	height: 30px;
	text-align: center;
	line-height: 30px;
	color: #fff;
	font-weight: bold;
	border-radius: 3px;
	cursor: pointer;
}

.yesBtn:hover {
	background-color: #af2502;
}

.noBtn:hover {
	background-color: rgb(54, 50, 50);
}

.pop_over_remove {
	width: 355px;
	position: absolute;
	right: -9999px;
	top: -9999px;
	z-index: 999;
}

.theadTh {
	width: 131px;
	text-align: center;
	font-size: 16px;
	color: black;
	font-weight: normal;
}

.wkimg-body {
	width: 60px;
	height: 60px;
	border-radius: 5px;
	border: 3px solid rgb(228, 227, 227);
}

.displaynone {
	display: none;
}

.permissionChange__toolTip {
	visibility: hidden;
	/* width: 120px; */
	background-color: #dee2e7;
	text-align: center;
	border-radius: 6px;
	padding: 7px 10px;
	position: absolute;
	z-index: 1000;
	top: -50px;
	left: 50%;
	transform: translate(-50%, -50%);
	color: #6c757d;
	left: 50%;
}

.permissionChange__toolTip::after {
	content: "";
	position: absolute;
	top: 100%;
	left: 50%;
	margin-left: -5px;
	border-width: 5px;
	border-style: solid;
	border-color: #dee2e7;
}

.permissionChange__toolTip__title {
	margin-bottom: 5px;
}

.permissionChange__Btns button {
	border: none;
	padding: 0;
	width: 35px;
	height: 20px;
	border-radius: 3px;
	cursor: pointer;
}

.permissionChange__Btns__yes {
	background-color: #6777ef;
	color: #ffffff;
	margin-right: 5px;
}

.permissionChange__Btns__No {
	background-color: darkorange;
	color: #ffffff;
}

.swal-modal {
	border-radius: 10px;
}

.swal-title {
	font-size: 20px;
	color: black;
}

.swal-text {
	font-weight: bold;
	color: black;
}

.searchNoen{
	opacity: 0.0;
	display: none;
}
.main-sidebar{
	z-index: 200;
}
</style>
</head>

<body style="background-color: rgb(204, 195, 226); overflow:scroll; overflow-x:hidden;">



	<!-- Main Content -->
	<div class="main-content">
		<section class="section">

			<div class="row">
				<div class="col-12">
					<div class="card" style="height: 100vh;">
						<div class="section-body">
							<div class="card-header d-flex justify-content-center"
								style="text-align: center;">
								<div id="workspace-body"
									class="card-body col-lg-3 mt-5 mb-5 d-flex justify-content-center">
									<div class="row workspaceNAME">
										<img class="img-fluid mr-2 mt-2 wkimg-body">
										<h3 class="mt-4" id="WsName"
											data-wkid="${workspace.workspace_id}">${workspace.workspace_title}</h3>
									</div>
								</div>
							</div>
							<div class="card-body">
								<div class="tableTopMenu">
									<div class="tableTopMenu__left">
										<input type="text" id="nameSearchInput" placeholder="이름 검색">
										<button type="button" onclick="nameSearch()">검색</button>
									</div>
									<div class="tableTopMenu__right">
										<label for="modal-2" class="modal2_label"><button
												type="button" onclick="labelClick()">Workspace 초대하기</button></label>
									</div>
								</div>

								<div class="clearfix mb-3"></div>

								<div class="table-responsive" style="text-align: center;">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>
													<div class="tabletdRow">
														<div class="tdDetails">
															<div class="theadTh">Name</div>
														</div>
														<div class="thOptions">
															<a href="#" class="">Boards</a> <a href="#" class="">Author</a>
															<a href="#" class="">Remove</a>
														</div>
													</div>
												</th>
											</tr>

										</thead>
										<tbody class="tbodyEl">



										</tbody>
									</table>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="pop_over_boards">
				<div class="Workspace__boards">
					<div class="Workspace__boards__header">
						<span class="header__hiddenBox"></span> <span
							class="Workspace__boards__headerCon">Workspace boards</span> <span
							class="Workspace__boards__cancelBtn cancelB"><i
							class="fas fa-times"></i></span>
					</div>
					<div class="Workspace__boards__body">
						<div class="Workspace__boards__body__boardsList"></div>
					</div>
					<div class="Workspace__boards__footer"></div>
				</div>
			</div>

			<div class="pop_over_author">

				<div class="Change__permissions">
					<div class="permissionChange__toolTip">
						<div class="permissionChange__toolTip__title">Change ?</div>
						<div class="permissionChange__Btns">
							<button class="permissionChange__Btns__yes">Yes</button>
							<button class="permissionChange__Btns__No">No</button>

						</div>
					</div>
					<div class="Change__permissions__header">
						<span class="header__hiddenBox"></span> <span
							class="Change__permissions__headerCon">Change permissions</span>
						<span class="Change__permissions__cancelBtn cancelB"><i
							class="fas fa-times"></i></span>
					</div>
					<div class="change__permissions__body">
						<div class="change__adminRow" disabled='disabled'>

							<div class="change__admin">
								Admin <span class="adminchkicon"> <ion-icon
										name="checkmark-outline"></ion-icon>
								</span>
							</div>
							<div class="adminExplain">Can view, create and edit
								Workspace boards, and change settings for the Workspace. Will
								have admin rights on all boards in this Workspace.</div>
						</div>
						<div class="change__userRow">

							<div class="change__user">
								User <span class="userchkicon"> <ion-icon
										name="checkmark-outline"></ion-icon>
								</span>
							</div>
							<div class="userExplain">Can view, create and edit
								Workspace boards, and change settings for the Workspace. Will
								have admin rights on all boards in this Workspace.</div>
						</div>
					</div>
				</div>
			</div>

			<div class="pop_over_remove">
				<div class="remove__member">
					<div class="remove__member__header">
						<span class="header__hiddenBox"></span> <span
							class="remove__member__headerCon">Remove memeber</span> <span
							class="remove__member__cancelBtn cancelB"><i
							class="fas fa-times"></i></span>
					</div>
					<div class="remove__member__body">
						<div class="remove__memberRow">
							<div class="remove__member__con">Remove from Workspace</div>
							<div class="remove__member__Btn">Remove all access to the
								Workspace. The member will remain on all their boards in this
								Workspace. They will receive a notification.</div>
						</div>
					</div>
				</div>
			</div>



		</section>
	</div>






	<input type="checkbox" id="modal-1" class="hs" />
	<div class="modal-wrapper">
		<div class="modalbox">
			<div class="modals-content">
				<div class="modal-header">
					<h2>권한 변경</h2>
				</div>
				<div class="modal-content-body">
					<p>홍길동님의 권한을 admin으로 변경하시겠습니까?</p>
				</div>
				<div class="modal-footer">
					<span class="modal-changeBtn">변경</span> <label for="modal-1"><span
						class="modal-cancleBtn">취소</span></label>
				</div>

			</div>
		</div>
	</div>


	<input type="checkbox" id="modal-2" class="hs" />
	<div class="modal-wrapper">
		<div class="modalbox2">
			<div class="modals2-content">
				<div class="headerRow">
					<div class="headerTop">
						<label for="modal-2">
							<div class="headerTop-icon">
								<i class="fas fa-arrow-left"></i>
							</div>
						</label>
						<div class="headerTop-input">workspace 초대하기</div>
					</div>
				</div>
				<div class="bodyRow">
					<div class="bodyRow-search">
						<div class="bodyRow-search-icon">
							<i class="fas fa-search"></i>
						</div>
						<div class="bodyRow-search-input">
							<input type="text" id="workspaceInviteInputVal"
								placeholder="검색하기"> <span class="underline"></span>
						</div>
						<div class="bodyRow-search-resultBtn">
							<button type="button" id="inviteBtn"
								onclick="workspaceInviteBtnFn()">검색</button>
						</div>
					</div>
					<div class="bodyRow-content"></div>
				</div>
				<div class="footerRow">
					<div class="footerRow-content"></div>
				</div>
				<div class="modal2-resultBtn" onclick="workspaceInviteResultBtn()">초대 보내기</div>
			</div>
		</div>
	</div>

	<div style="display: none;" id="memPlusTemplate">
		<div class="footerRow-member">
			<div class="result-member-img">
				<img src="" alt="">
			</div>
			<div class="result-member-id"></div>
			<div class="result-member-minusBtn">
				<i class="fas fa-minus-square" id="minusBtn"></i>
			</div>
		</div>
	</div>

	<div style="display: none;" id="memMinusTemplate">
		<div class="bodyRow-member">
			<div class="member-img">
				<img src="" alt="">
			</div>
			<div class="member-id"></div>
			<div class="member-plusBtn">
				<button type="button" id="plusBtn">추가하기</button>
			</div>
		</div>
	</div>

	<div style="display: none;" class="userTrTemplate">
		<div class="tabletdRow">
			<div class="tdDetails">
				<div class="user__img">
					<img src="" alt="">
				</div>
				<div class="user__name"></div>
			</div>
			<div class="tdOptions">
				<a href="#" class="boardsNum a_tag">On <span></span> boards
				</a> <a href="#" class="userAuthor a_tag"> &#183;&#183;&#183; </a> <a
					href="#" class="userRemoveBtn a_tag">Remove...</a>
			</div>
		</div>
	</div>
	<div style="display: none;" class="boardsListRowTemplate">
		<div class="Workspace__boards__body__boardsList__row">
			<div class="boardsList__row__img"></div>
			<div class="boardsList__row__name">test1</div>
			<!-- 			<div class="boardsList__row__name__author">(Normal)</div> -->
			<div class="boardsList__row__removeBtn">Remove</div>
		</div>
	</div>
	<input type="hidden" id="hWorkspace_id" value="${workspace.workspace_id}">
	<input type="hidden" id="hWorkspace_title" value="${workspace.workspace_title}">

</body>



<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

//워크프페이스 프로필이미지

$(function(){
	
	let name = $("#hWorkspace_title").val();
	
	changeWKIMG(name);
})
function changeWKIMG(newWKname) {
	let name = newWKname.substring(0, 1);
	let img = document.querySelector(".wkimg");
	let img2 = document.querySelector(".wkimg-body");
	if (name == 'a' || name == 'A') {
		img.setAttribute("src", "resources/img/a.jpg");
		img2.setAttribute("src", "resources/img/a.jpg");
	} else if (name == 'b' || name == 'B') {
		img.setAttribute("src", "resources/img/b.jpg");
		img2.setAttribute("src", "resources/img/b.jpg");
	} else if (name == 'c' || name == 'C') {
		img.setAttribute("src", "resources/img/c.jpg");
		img2.setAttribute("src", "resources/img/c.jpg");
	} else if (name == 'd' || name == 'D') {
		img.setAttribute("src", "resources/img/d.jpg");
		img2.setAttribute("src", "resources/img/d.jpg");
	} else if (name == 'e' || name == 'E') {
		img.setAttribute("src", "resources/img/e.jpg");
		img2.setAttribute("src", "resources/img/e.jpg");
	} else if (name == 'f' || name == 'F') {
		img.setAttribute("src", "resources/img/f.jpg");
		img2.setAttribute("src", "resources/img/f.jpg");
	} else if (name == 'g' || name == 'G') {
		img.setAttribute("src", "resources/img/g.jpg");
		img2.setAttribute("src", "resources/img/g.jpg");
	} else if (name == 'h' || name == 'H') {
		img.setAttribute("src", "resources/img/h.jpg");
		img2.setAttribute("src", "resources/img/h.jpg");
	} else if (name == 'i' || name == 'I') {
		img.setAttribute("src", "resources/img/i.jpg");
		img2.setAttribute("src", "resources/img/i.jpg");
	} else if (name == 'j' || name == 'J') {
		img.setAttribute("src", "resources/img/j.jpg");
		img2.setAttribute("src", "resources/img/j.jpg");
	} else if (name == 'k' || name == 'K') {
		img.setAttribute("src", "resources/img/k.jpg");
		img2.setAttribute("src", "resources/img/k.jpg");
	} else if (name == 'l' || name == 'L') {
		img.setAttribute("src", "resources/img/l.jpg");
		img2.setAttribute("src", "resources/img/l.jpg");
	} else if (name == 'm' || name == 'M') {
		img.setAttribute("src", "resources/img/m.jpg");
		img2.setAttribute("src", "resources/img/m.jpg");
	} else if (name == 'n' || name == 'N') {
		img.setAttribute("src", "resources/img/n.jpg");
		img2.setAttribute("src", "resources/img/n.jpg");
	} else if (name == 'o' || name == 'O') {
		img.setAttribute("src", "resources/img/o.jpg");
		img2.setAttribute("src", "resources/img/o.jpg");
	} else if (name == 'p' || name == 'P') {
		img.setAttribute("src", "resources/img/p.jpg");
		img2.setAttribute("src", "resources/img/p.jpg");
	} else if (name == 'q' || name == 'Q') {
		img.setAttribute("src", "resources/img/q.jpg");
		img2.setAttribute("src", "resources/img/q.jpg");
	} else if (name == 'r' || name == 'R') {
		img.setAttribute("src", "resources/img/r.jpg");
		img2.setAttribute("src", "resources/img/r.jpg");
	} else if (name == 's' || name == 'S') {
		img.setAttribute("src", "resources/img/s.jpg");
		img2.setAttribute("src", "resources/img/s.jpg");
	} else if (name == 't' || name == 'T') {
		img.setAttribute("src", "resources/img/t.jpg");
		img2.setAttribute("src", "resources/img/t.jpg");
	} else if (name == 'u' || name == 'U') {
		img.setAttribute("src", "resources/img/u.jpg");
		img2.setAttribute("src", "resources/img/u.jpg");
	} else if (name == 'v' || name == 'V') {
		img.setAttribute("src", "resources/img/v.jpg");
		img2.setAttribute("src", "resources/img/v.jpg");
	} else if (name == 'w' || name == 'W') {
		img.setAttribute("src", "resources/img/w.jpg");
		img2.setAttribute("src", "resources/img/w.jpg");
	} else if (name == 'x' || name == 'X') {
		img.setAttribute("src", "resources/img/x.jpg");
		img2.setAttribute("src", "resources/img/x.jpg");
	} else if (name == 'y' || name == 'Y') {
		img.setAttribute("src", "resources/img/y.jpg");
		img2.setAttribute("src", "resources/img/y.jpg");
	} else if (name == 'z' || name == 'Z') {
		img.setAttribute("src", "resources/img/z.jpg");
		img2.setAttribute("src", "resources/img/z.jpg");
	} else if (name == '0') {
		img.setAttribute("src", "resources/img/0.jpg");
		img2.setAttribute("src", "resources/img/0.jpg");
	} else if (name == '1') {
		img.setAttribute("src", "resources/img/1.jpg");
		img2.setAttribute("src", "resources/img/1.jpg");
	} else if (name == '2') {
		img.setAttribute("src", "resources/img/2.jpg");
		img2.setAttribute("src", "resources/img/2.jpg");
	} else if (name == '3') {
		img.setAttribute("src", "resources/img/3.jpg");
		img2.setAttribute("src", "resources/img/3.jpg");
	} else if (name == '4') {
		img.setAttribute("src", "resources/img/4.jpg");
		img2.setAttribute("src", "resources/img/4.jpg");
	} else if (name == '5') {
		img.setAttribute("src", "resources/img/5.jpg");
		img2.setAttribute("src", "resources/img/5.jpg");
	} else if (name == '6') {
		img.setAttribute("src", "resources/img/6.jpg");
		img2.setAttribute("src", "resources/img/6.jpg");
	} else if (name == '7') {
		img.setAttribute("src", "resources/img/7.jpg");
		img2.setAttribute("src", "resources/img/7.jpg");
	} else if (name == '8') {
		img.setAttribute("src", "resources/img/8.jpg");
		img2.setAttribute("src", "resources/img/8.jpg");
	} else if (name == '9') {
		img.setAttribute("src", "resources/img/9.jpg");
		img2.setAttribute("src", "resources/img/9.jpg");
	} else {
		img.setAttribute("src","resources/img/workspace_default_profile.png");
		img2.setAttribute("src","resources/img/workspace_default_profile.png");
	}
}






const currentWorkspaceId = $('#hWorkspace_id').val();	

const boardBg = {
		red : "rgb(247,123,123)",
		orange : "rgb(247,217,189)",
		yellow : "rgb(248,244,204)",
		green : "rgb(218,247,228)",
		skyblue : "rgb(203, 248, 250)",
		blue : "rgb(209, 231, 241)",
		darkblue : "rgb(192, 193, 250)",
		purple : "rgb(204, 195, 226)",
		pink : "rgb(248,233,247)",
		gray : "rgb(241,241,241)",
		darkgray : "rgb(119,116,116)",
		black : "rgb(12,12,12)",
		base : "#ECE9FE"
}


	
	$(function(){
		let workspaceId = $('#hWorkspace_id').val();
		let flag = ajaxMemPageUserList(workspaceId)
		if(flag){
			page(pagenumber, pageCount, currentPage);
		}
	})

	//해당 워크스페이스에 참여된 유저List ajax------------------------------------------------------
	function ajaxMemPageUserList(workspaceId) {
	
		let flag = false;
	
		$.ajax({
			url : 'ajaxMemPageUserList.do',
			type : 'post',
			async: false,
			data : {	
				workspace_id : workspaceId
			},
			success : function(data){
			
				let userList = data.userList;
				let usersAuthor = data.userAuthor;
		
				flag = createTrRow(userList, usersAuthor)
			}
			
		})
		return flag;
	}
	//---------------------------------------------------------------------------------------

	
	//table에 검색된 유저 List tr Create--------------------------------------------------------
	function createTrRow(userList, usersAuthor){
		
		let tbodyEl = $('.tbodyEl');
		
		for(let user of userList){
			let tr = $('<tr>')
			let td = $('<td>')
			tbodyEl.append(tr.append(td.append(trRow(user, usersAuthor).html())))
		}	
		return true;
	}
	
	function trRow(user, usersAuthor){
			
			let userTrTemplate = $('.userTrTemplate');
			let sessionId = ajaxSessionId();
			let userId = user.id;
			let userRemoveBtnText = "Remove...";
			let boardsNub = ajaxBoardsNub(userId);
			 
			var userAuthorVal;
			for(let userAuthor of usersAuthor){
				
				if(userAuthor['id'] == userId){
					userAuthorVal = userAuthor['permissions']
				}
			}
		
			userTrTemplate.find('.tabletdRow').attr('data', user.id);

			if(user.prof_pic.substring(0, 4) == 'http') {
				userTrTemplate.find('.user__img>img').attr('src', user.prof_pic);
			} else {
	// 			userTrTemplate.find('.user__img>img').attr('src', "/profilePic/" + user.prof_pic);
				userTrTemplate.find('.user__img>img').attr('src', "resources/assets/img/avatar/" + user.prof_pic);
			}
	
	
			userTrTemplate.find('.user__name').text(user.nickname);
			userTrTemplate.find('.userAuthor').text(userAuthorVal)
			userTrTemplate.find('.boardsNum>span').text(boardsNub);
			if(user.id == sessionId){
				userRemoveBtnText = "Leave...";
			
			}
			userTrTemplate.find('.userRemoveBtn').text(userRemoveBtnText);
			
			return userTrTemplate;
		}
	//---------------------------------------------------------------------------------------
	
	
	//각 해당 유저들이 가입된 보드 ajax------------------------------------------------------------
	function ajaxBoardsNub(userId){

		let num;
		$.ajax({
			url : 'ajaxBoardsNub.do',
			type : 'post',
			dataType : 'json',
			async: false,
			data : {
				id : userId,
				workspace_id : currentWorkspaceId
			},
			success : function(data){		
				
					num = data.length;
					
			}
		})
		return num;
	}
	//---------------------------------------------------------------------------------------
	

	var boardsNum = $('.boardsNum');
	var userAuthor = $('.userAuthor');
	var userRemoveBtn = $('.userRemoveBtn');
	
	//회원 table에 각 기능 버튼 클릭 이벤트---------------------------------------------------------
	$(document).on('click', '.a_tag', a_tageventFn)
	
	function a_tageventFn(e) {
		if ($('.target').length) {
			a_tagcancelFn()
		}
		$(e.target).addClass('target');
		let target = $('.target')
		return contentShowFn(target)
	}
	//---------------------------------------------------------------------------------------
	
		
	//각 기능 모달창 Show 함수-------------------------------------------------------------------
	function contentShowFn(target) {

		let className = target.attr('class');
		let topminu = 0;
		let leftminu = 0;
		let tagName;
		if (className.includes('boardsNum')) {
			tagName = $('.pop_over_boards');
			let tagHeight = $('.Workspace__boards').css('height').substring(0,
					3)
			topminu = 272
			leftminu = 280
			
			contentInputFn(tagName, target);
		} else if (className.includes('userAuthor')) {
			tagName = $('.pop_over_author')
			topminu = 351
			leftminu = 530
			
			authorContentInputFn(tagName, target);
		} else if (className.includes('userRemoveBtn')) {
			tagName = $('.pop_over_remove')
			topminu = 230
			leftminu = 530
		} else {

		}
		
		let targetTop = target.offset().top;
		let targetLeft = target.offset().left;

		tagName.css({
			"top" : targetTop - topminu,
			"left" : targetLeft - leftminu
		})

	}
	//---------------------------------------------------------------------------------------
	
	
	//각 회원의 Boards 리스트 노출----------------------------------------------------------------
	function contentInputFn(tagName, target){
		let userId = $('.target').closest('.tabletdRow').attr('data')
		
		let data = ajaxMemBoardsListRow(userId);
		
		MemBoardsListRowCreate(data, tagName)
		
	}
	
	
	//회원이 가입된 보드 List 검색 ajax-----------------------------------------------------------
	function ajaxMemBoardsListRow(userId){
		let result;
		$.ajax({
			
			url : 'ajaxMemBoardsListRow.do',
			dataType : 'json',
			async: false,
			type :  'post',
			data : {
				id : userId,
				workspace_id : currentWorkspaceId
			},
			success : function(data){
				result = data;
			}
		})
		
		return result;
	}
	
	
	//검색된 보드 List를 통해 목록 create----------------------------------------------------------
	function MemBoardsListRowCreate(data, tagName){
		
		let Workspace__boards__body__boardsList = tagName.find('.Workspace__boards__body__boardsList')
		let workspaceId = $('#hWorkspace_id').val();
		Workspace__boards__body__boardsList.find('.Workspace__boards__body__boardsList__row').remove();

		for(let board of data){
				
			if(board.workspace_id == workspaceId){
				let boardsListRowTemplate = $('.boardsListRowTemplate')
				
				boardsListRowTemplate.find('.boardsList__row__img').css('background-color', boardBg[board.board_thema])
				boardsListRowTemplate.find('.boardsList__row__name').attr("data", board.board_id).text(board.board_Title)
				Workspace__boards__body__boardsList.append(boardsListRowTemplate.html());	
		
			}
		}
	}
	//---------------------------------------------------------------------------------------
	
	
	//권한 변경 및 확인 (Author)버튼 클릭시 모달 노출 함수--------------------------------------------
		function authorContentInputFn(tagName, target){
			let userId = $('.target').closest('.tabletdRow').attr('data')
			let hWorkspace_id = $('#hWorkspace_id').val()
		
			let data = ajaxMemPermissionsList(userId, hWorkspace_id);

			authorChkdFn(data.permissions, tagName);
		}

	
	//해당 유저의 권한 검색 ajax------------------------------------------------------------------
		function ajaxMemPermissionsList(userId, hWorkspace_id){
			let result;
			$.ajax({
				url : 'ajaxMemPermissionsList.do',
				type : 'post',
				dataType : 'json',
				async: false,
				data : {
					id : userId,
					workspace_id : hWorkspace_id
				},
				success : function(data){
					
					result = data;
				}
			})
			
			return result;
		}
		
		
	//모달의 권한 표시-----------------------------------------------------------------------
		function authorChkdFn(author, tagName){
	
			if(author.includes("ADMIN") || author.includes("admin")){
				$('.change__adminRow').attr('disabled', true);
				$('.change__userRow').attr('disabled', false);
			}else if(author.includes("USER") || author.includes("user")){
				$('.change__adminRow').attr('disabled', false);
				$('.change__userRow').attr('disabled', true);
			}
		}
	//---------------------------------------------------------------------------------------

	
	//(권한변경모달) 권한 변경 이벤트--------------------------------------------------------------
	$(document).on('click', '.change__adminRow', changeadminFn)
	$(document).on('click', '.change__userRow', changeuserFn)
	
	
	//User 권한으로 변경-----------------------------------------------------------------------
		 function changeuserFn(){
			let targetCurrentPermission = "USER";	
			 if($('.change__userRow').attr('disabled') !='disabled'){
				 swal({
						title: "권한을 "+targetCurrentPermission+"로 변경 하시겠습니까?",
						icon : "warning",
						buttons : ["취소", "확인"]
					})
					.then(function(value) {
						if(value) {
							
							permissionChangFn(targetCurrentPermission)
							
						}
					})
			 }
		
		}
	
	//Admin 권한으로 변경----------------------------------------------------------------------
		 function changeadminFn(){
			 let targetCurrentPermission = "ADMIN";
			 if($('.change__adminRow').attr('disabled') !='disabled'){
				 swal({
						title: "권한을 "+targetCurrentPermission+"로 변경 하시겠습니까?",
						icon : "warning",
						buttons : ["취소", "확인"]
					})
					.then(function(value) {
						if(value) {
							
				permissionChangFn(targetCurrentPermission)
							
						}
					})
			 }					
		}
	
	//권한 변경 함수--------------------------------------------------------------------------
		function permissionChangFn(targetCurrentPermission){

			let currentUserPermissinChk = ajaxCuerrentUserPermissionChk()

				if(currentUserPermissinChk){
					let targetUserId = $('.target').closest('.tabletdRow').attr('data');
					targetUserPermissionChange(targetUserId, targetCurrentPermission)
				}else{
					swal({
		                icon: 'error',
		                title:'권한이 없습니다.',
		                text: '',
		            })
				}
			
		}

	//권한 변경 후 모달창 목록 변경------------------------------------------------------------
		function targetUserPermissionChange(targetUserId, targetCurrentPermission){
			let flag = false;
			let currentWorkspacePermissionChk = ajaxCurrentWorkspacePermissionChk()
	
			if(targetCurrentPermission == "USER" && currentWorkspacePermissionChk){
				flag = ajaxTargetUserPermissionChange(targetUserId, currentWorkspaceId, targetCurrentPermission);
			}else if(targetCurrentPermission == "ADMIN"){
				flag = ajaxTargetUserPermissionChange(targetUserId, currentWorkspaceId, targetCurrentPermission);
			}
			
			if(flag){
				$('.target').text(targetCurrentPermission)
				
				if(targetCurrentPermission=="ADMIN"){
				
					$('.change__adminRow').attr('disabled', true);
					$('.change__userRow').attr('disabled', false);
				}else{
			
					$('.change__adminRow').attr('disabled', false);
					$('.change__userRow').attr('disabled', true);
				}
				swal({
	                icon: 'success',
	                title: targetCurrentPermission+'로 권한 변경 완료.',
	                text: '',
	            })
			}else{
				swal({
	                icon: 'error',
	                title:'최소 한명의 ADMIN 권한자가 있어야 합니다.',
	                text: '',
	            })
			}
		}
		
		
		//권한 변경 ajax----------------------------------------------------------------------------------------------
		function ajaxTargetUserPermissionChange(targetUserId, currentWorkspaceId, targetCurrentPermission){
			let flag = false;
			$.ajax({
				url : 'ajaxTargetUserPermissionChange.do',
				type : 'post',
				dataType : 'text',
				async: false,
				data : {
					workspace_id : currentWorkspaceId,
					id : targetUserId,
					permissions : targetCurrentPermission
				},
				success : function(data){
					flag = data;
				}
				
			})
			return flag;
		}
		
			
	 	//해당 워크스페이스의 관리자 권한이 한개 이상인지 chk ajx---------------------------------------
		 function ajaxCurrentWorkspacePermissionChk(){
			 let flag = false;
			 
			 $.ajax({
				url : 'ajaxCurrentWorkspacePermissionChk.do',
				type : 'post',
				dataType : 'text',
				async: false,
				data : {
					workspace_id : currentWorkspaceId
				},
				success : function(data){
					flag = (data=="true") ? true : false;
				}
			 })
			 return flag;
			 
		 }

		 
		//현재 접속 유저의 권한 체크 ajax------------------------------------------------------------
		 function ajaxCuerrentUserPermissionChk(){
			let flag = false;
			
			$.ajax({
				url : 'ajaxCuerrentUserPermissionChk.do',
				type : 'post',
				dataType : 'text',
				async: false,
				data : {
					workspace_id : currentWorkspaceId
				},
				success : function(data){
					
					flag = (data=="true") ? true : false
					
				}
			})
			return flag;
		}

		//----------------------------------------------------------------------------------
	
	
	//모달의 각 Cancel 버튼 클릭 이벤트-----------------------------------------------------------
	$(document).on('click', '.cancelB', a_tagcancelFn)
	
	function a_tagcancelFn() {
		let tagName;
		let target = $('.target')

		let className = $('.target').attr('class');

		if (className.includes('boardsNum')) {
			tagName = $('.pop_over_boards');

		} else if (className.includes('userAuthor')) {
			tagName = $('.pop_over_author')

		} else if (className.includes('userRemoveBtn')) {
			tagName = $('.pop_over_remove')
		} else {

		}
		tagName.css({
			top : -9999,
			left : -9999
		})
		target.removeClass('target')

	}


	//화면 크기 조정시 모달 위치 변경--------------------------------------------------------
	$(window).resize(function() {
		windowResize()
	});

	function windowResize() {
		if ($('.target').length) {
			let target = $('.target');

			return contentShowFn(target)
		}

	}
	//---------------------------------------------------------------------------------


	//(회원의 보드List모달) 보드 탈퇴 이벤트--------------------------------------------------
	function ajaxSessionIdChk(targetUserId){
		let flag = false;
		$.ajax({
			url : 'ajaxSessionIdChk.do',
			dataType : 'text',
			async: false,
			type : 'post',
			data : {
				chkId : targetUserId
			},
			success : function(data){
				
				flag = (data == "true") ? true : false;
			}
			
		})
		
		return flag;
	}


	//초대하기 모달 이름 검색 함수----------------------------------------------------------------------
	function workspaceInviteBtnFn(){
		let workspaceInviteInputVal = $('#workspaceInviteInputVal').val()
		
	
		ajaxWorkspaceInviteInputValSearch(workspaceInviteInputVal)
		$('#workspaceInviteInputVal').val('')
	}
	

	function ajaxWorkspaceInviteInputValSearch(workspaceInviteInputVal){
		
		$.ajax({
			url : 'ajaxWorkspaceInviteInputValSearch.do',
			type : 'post',
			dataType : 'json',
			data : {
				email : workspaceInviteInputVal
			},
			success : function(data){
				createInviteUserRow(data)
			}
		})
	}
	
	
	$('#workspaceInviteInputVal').on("keyup",function(key){
		if(key.keyCode==13){
			workspaceInviteBtnFn();
		}
	})
	//----------------------------------------------------------------------------------------------------------
	
	
	//초대하기모달 검색된 이름으로 목록 Create--------------------------------------------------------------------------
	function createInviteUserRow(data){
		
		let bodyRow = $('.bodyRow-content');
		let footerBoxRowData = $('.footerRow').find('.footerRow-member')
		let bodyBoxRowData = bodyRow.find('.bodyRow-member')
	

		for(let user of data){
			let workspaceChk = 	ajaxWorkspaceInviteInputValWorkspaceChk(user, currentWorkspaceId)
			if(workspaceChk){
				let bodyFlag = bodyRowChkFn(user, bodyBoxRowData)
				
				let footerFlag = footerRowChkFn(user, footerBoxRowData)
				if(bodyFlag && footerFlag){
					let workspaceInviteUserTemplate = $('#memMinusTemplate');
					workspaceInviteUserTemplate.find('.bodyRow-member').attr('data', user.id)
					
					if(user.prof_pic.substring(0, 4) == 'http') {
						workspaceInviteUserTemplate.find('.member-img>img').attr('src', user.prof_pic);
					} else {
						workspaceInviteUserTemplate.find('.member-img>img').attr('src', "/profilePic/" + user.prof_pic);
					}
					workspaceInviteUserTemplate.find('.member-id').text(user.email)
					bodyRow.append(workspaceInviteUserTemplate.html());
					
				}
			}
		}
		
	}

	
	//검색된 이름이 해당 워크스페이스에 가입되어있는지 chk ajax-------------------------------------------------------------
	function ajaxWorkspaceInviteInputValWorkspaceChk(user, currentWorkspaceId){
		let falg = false;
		$.ajax({
			url : 'ajaxWorkspaceInviteInputValWorkspaceChk.do',
			type: 'post',
			dataType : 'text',
			async: false,
			data : {
				id : user.id,
				workspace_id : currentWorkspaceId
			},
			success : function(data){
				falg = (data =="true") ? true : false;
			}
			
		})
		return falg;
	}
	//----------------------------------------------------------------------------------------------------------
	
	
	//(초대하기모달) 목록추가창에 새로 검색된 이름이 추가되어있는지 chk------------------------------------------------------
	function footerRowChkFn(user, footerBoxRowData){
		let flag = true;

		for(let rowData of footerBoxRowData){
	
			if($(rowData).attr('data') == user.id){
				
				flag = false;
			}
		}
	
		return flag;
	}
	//----------------------------------------------------------------------------------------------------------

	
	//(초대하기모달) 검색된 목록창에 새로 검색된 이름이 추가되어있는지 chk---------------------------------------------------
	function bodyRowChkFn(user, bodyBoxRowData){
		let flag = true;
		for(let rowData of bodyBoxRowData){
			if($(rowData).attr('data') == user.id){
				flag = false;
			}
			
		}
		return flag;
	}
	//----------------------------------------------------------------------------------------------------------
	
	
	//보드 탈퇴 이벤트--------------------------------------------------------------------------------
	$(document).on('click', '.boardsList__row__removeBtn', boardsRemoveFn);
	
	
	function boardsRemoveFn(){
		let targetEl = $(event.target)
		let targetRowEl = targetEl.closest('.Workspace__boards__body__boardsList__row')
		let targetUserId = $('.target').closest('.tabletdRow').attr('data');
		let targetBoardTitle = targetRowEl.find('.boardsList__row__name').text();
		let chkd = ajaxSessionIdChk(targetUserId)
		if(chkd){
			swal({
				title: '',
				text: targetBoardTitle+'를 나가시겠습니까?',
				icon : "info",
				buttons : ["취소", "확인"]
			})
			.then(function(value) {
				if(value) {
					let targetBoardId = targetEl.closest('.Workspace__boards__body__boardsList__row').find('.boardsList__row__name').attr('data');
					boardRemoveFn(targetBoardId , targetRowEl)
					let num = $('.target>span').text()
					
						
					$('.target>span').text(Number(num)-1)
					
					a_tagcancelFn()
				}
			})
		
		
		}else{
			swal({
                icon: 'error',
                title:'권한이 없습니다.',
                text: '',
            })
		}
		
	}
	
	//보드 탈퇴 함수-----------------------------------------------------------------------------------------------------
	function boardRemoveFn(targetBoardId, targetRowEl){
		
		let removeResult = ajaxMemPageBoardRemove(targetBoardId, currentWorkspaceId)
		if(removeResult){
			targetRowEl.remove();
			swal({
                icon: 'success',
                title:'탈퇴완료',
                text: '',
            })
		}else{
			swal({
                icon: 'error',
                title:'시스템 에러',
                text: '',
            })
		}
	}

	//보드 탈퇴 ajax------------------------------------------------------------------------------------------------------
	function ajaxMemPageBoardRemove(targetBoardId, currentWorkspaceId){
		let flag = false;
		$.ajax({
			url : "ajaxMemPageBoardRemove.do",
			dataType : 'text',
			type : 'post',
			async: false,
			data : {
				board_id : targetBoardId,
				workspace_id : currentWorkspaceId
			},
			success : function(data){
				flag = (data == "true") ? true : false;
			}
			
		})
		return flag;
	}
	//-------------------------------------------------------------------------------------------------------------------
	
	
	//워크스페이스 탈퇴/추방 버튼 클릭 이벤트-------------------------------------------------------------------------------------
	$(document).on('click', '.remove__memberRow', workSpaceUserOutFn)
	
	function workSpaceUserOutFn(){
		let targetId = $('.target').closest('.tabletdRow').attr('data');
		let targetNickName = $('.target').closest('.tabletdRow').find('.user__name').text();
		let currentId = ajaxSessionId();
		if(targetId==currentId){
			swal({
                icon: 'warning',
                title:'현재 WorkSpace를 나가시겠습니까?',
                text: '',
            	buttons : ["취소", "확인"]
            })
            .then(function(value) {
			if(value) {
				ajaxWorkspaceLeave(targetId)

				a_tagcancelFn();
				location.href="index.do"
			}
		})
		
		return;
		}
		let currentUserPermission = ajaxCuerrentUserPermissionChk();
		if(currentUserPermission){
			
			targetUserWorkspaceRemove(targetId, targetNickName)
			a_tagcancelFn();
		}else{
			swal({
                icon: 'error',
                title:'권한이 없습니다.',
                text: ''
            })
		}
		
		
		let targetEl = $(event.target);
	
	}
	//-------------------------------------------------------------------------------------------------------------------
	
	
	//워크스페이스 탈퇴 ajax-------------------------------------------------------------------------------------------------
	function ajaxWorkspaceLeave(targetId){
		
		$.ajax({
			url : 'ajaxWorkspaceLeave.do',
			dataType : 'text',
			type : 'post',
			data : {
				id : targetId,
				workspace_id : currentWorkspaceId
			},
			success : function(data){
				if(data == "true"){
					$('.target').closest('.tabletdRow').parent().parent().remove()
					swal({
		                icon: 'success',
		                title:'Workspace가 탈퇴 되었습니다.',
		                text: '',
		            })
		            .then(function(value) {
			if(value) {
				
				location.href="index.do"
			}
		})
				}else{
					swal({
		                icon: 'error',
		                title:'시스템 에러',
		                text: '',
		            })
				}
			}
		})
	}
	//-------------------------------------------------------------------------------------------------------------------
	
		
	//워크스페이스 추방 함수--------------------------------------------------------------------------------------------------
	function targetUserWorkspaceRemove(targetId, targetNickName){
		swal({
            icon: 'warning',
            title: targetNickName+'님을 추방하겠습니까?',
            text: '',
        	buttons : ["취소", "확인"]
        })
        .then(function(value) {
			if(value) {
				ajaxWorkspaceTargetUserRemove(targetId, targetNickName)
				
			}
        })
	}
	//-------------------------------------------------------------------------------------------------------------------
	
	
	//워크스페이스 추방 ajax-------------------------------------------------------------------------------------------------
	function ajaxWorkspaceTargetUserRemove(targetId, targetNickName){
		
		$.ajax({
			url : 'ajaxWorkspaceTargetUserRemove.do',
			dataType : 'text',
			type : 'post',
			data : {
				id : targetId,
				workspace_id : currentWorkspaceId
			},
			success : function(data){
				if(data == "true"){
					$('.target').closest('.tabletdRow').parent().parent().remove()
					swal({
		                icon: 'success',
		                title: targetNickName+'님이 추방되었습니다.',
		                text: '',
		            })
		            
				}else{
					swal({
		                icon: 'error',
		                title:'시스템 에러',
		                text: '',
		            })
				}
			}
		})
	}
	//-------------------------------------------------------------------------------------------------------------------
	

	//워크스페이스 초대하기 모달 목록 추가(+버튼) 이벤트----------------------------------------------------------------------------
	$(document).on('click', '#plusBtn', plusBtnHandle);
	
	function plusBtnHandle() {
		let targetParentEl = $(event.target).closest('.bodyRow-member');
		let memberimg = targetParentEl.find('.member-img>img').attr('src')
			
		let memberEmail = targetParentEl.find('.member-id').text()
	
		let memberId = targetParentEl.attr('data')
		let memTemplate = $('#memPlusTemplate');
		let members = $('.footerRow-content');
		
		memTemplate.find('.footerRow-member').attr('data', memberId)
		memTemplate.find('.result-member-img').find('img').attr('src',
				memberimg)
	
		memTemplate.find('.result-member-id').text(memberEmail)
		members.append(memTemplate.html())
		targetParentEl.remove();
	}
	//-------------------------------------------------------------------------------------------------------------------
	
	
	//워크스페이스 초대하기 모달 목록 삭제(-버튼) 이벤트----------------------------------------------------------------------------
	$(document).on('click', '#minusBtn', minusBtnHandle);
	function minusBtnHandle() {
		
		let targetParentEl = $(event.target).closest('.footerRow-member');
			
		let memberimg = targetParentEl.find('.result-member-img>img').attr('src');
	
		let memberEmail = targetParentEl.find('.result-member-id').text();
	
		let memberid = targetParentEl.attr('data')
		
		let memTemplate = $('#memMinusTemplate')
		let members = $('.bodyRow-content')
		memTemplate.find('.bodyRow-member').attr('data', memberid)
		memTemplate.find('.member-img>img').attr('src', memberimg)
		memTemplate.find('.member-id').text(memberEmail)
		members.append(memTemplate.html())
		targetParentEl.remove();
	}
	//-------------------------------------------------------------------------------------------------------------------
	

	//---------------------------------------------------------------------------------------------------
	
	
	//워크스페이스 초대보내기 함수------------------------------------------------------------------------------
	function workspaceInviteResultBtn(){
		let targetClosestEl = $(event.target).closest('.modals2-content');
		let userRow = targetClosestEl.find('.footerRow-member')
		swal({
                icon: 'warning',
                title:'',
                text: '선택하신 멤버를 해당 워크스페이스로 초대하시겠습니까?',
            	buttons : ["취소", "확인"]
            })
            .then(function(value) {
			if(value) {
				workspaceMemberInviteSubmit(userRow)
				
			}
		})
	}
	//--------------------------------------------------------------------------------------------------
	
	
	//워크스페이스 초대하기 초대메일 발송 alert-----------------------------------------------------------------
	function workspaceMemberInviteSubmit(userRow){
		let chk = 0;
		for(let userInfo of userRow){
		let flagChk = ajaxWorkspaceMemberInvite(userInfo);
		if(flagChk) chk++;
		}
		
		
		if(chk != 0){
			swal({
	            icon: 'success',
	            title:'총 : '+ chk+ '권의 초대장이 정상 발송',
	            text: '',
	        })
	        
	        $('.modals2-content').find('.bodyRow-member').remove();
	        $('.modals2-content').find('.footerRow-member').remove();
	        $('.headerTop-icon').click();
		}else{
			swal({
	            icon: 'error',
	            title:'시스템 에러',
	            text: '',
	        })
	        $('.modals2-content').find('.bodyRow-member').remove();
	        $('.modals2-content').find('.footerRow-member').remove();
	        $('.headerTop-icon').click();
			
		}
	}
	//------------------------------------------------------------------------------------------------
	
	
	//워크스페이스 초대하기 초대메일 발송 ajax----------------------------------------------------------------
	function ajaxWorkspaceMemberInvite(userInfo){
		let flag = false;
		let inviteUserId = $(userInfo).attr('data');
		let inviteUserEmail = $(userInfo).find('.result-member-id').text()
	
		$.ajax({
			
			url : 'ajaxWorkspaceMemberInvite.do',
			type : 'post',
			dataType : 'text',
			async: false,
			data : {
				id : inviteUserId,
				email : inviteUserEmail,
				workspace_id : currentWorkspaceId
			},
			success : function(data){
				
				flag = (data =="true") ? true : false;
				
			}
			
		})
	
			return flag;
	}
	//------------------------------------------------------------------------------------------------
	
	
	//멤버페이지 이름 검색 함수-----------------------------------------------------------------------------
	function nameSearch(){
		let searchTrEl = $('.user__name')
		for(let val of searchTrEl){
			$(val).parent().parent().parent().removeClass('searchNoen')
		}
		
		let nameSearchInput = $("#nameSearchInput").val()
		for(let val of searchTrEl){
			if($(val).text().includes(nameSearchInput)){
				continue;
			}
			$(val).parent().parent().parent().addClass('searchNoen')
		}
		$("#nameSearchInput").val('')
		page(pagenumber, pageCount, currentPage);
	}
	
    $("#nameSearchInput").on("keyup",function(key){
        if(key.keyCode==13) {
        	nameSearch();
        }
    });
   //--------------------------------------------------------------------------------------------------

   
   //페이징----------------------------------------------------------------------------------------------
	var pagenumber = 5	
	var pageCount = 3
	var currentPage = 1;

	function page(pagenumber, pageCount, currentPage) {
		var tableEl = $('.table-striped');
		var tr = tableEl.find('tbody>tr');
		var trtotal = tr.length;	
		if (trtotal == 0)
			return;
		var pagetotal = Math.ceil(trtotal / pagenumber);
		var pageGroup = Math.ceil(currentPage / pageCount);
		var last = pageGroup * pageCount;
		if (last > pagetotal) {
			last = pagetotal;
		}
		var first;
		if (last % pageCount == 0) {
			first = last - (pageCount - 1);
		} else {
			first = last + 1 - last % pageCount
		}
		var next = last + 1;
		var prev = first - 1;
		$('#pagebtn').remove();
		tableEl.after('<div id="pagebtn">');
		if (prev > 0) {
			$('<a href="#"></a>').attr('data', 'prev').html("<").appendTo(
					'#pagebtn');
		}

		for (let i = first; i <= last; i++) {
			$('<a href="#"></a>').attr('data', i).html(i).appendTo('#pagebtn');
		}
		if (last < pagetotal) {
			$('<a href="#"></a>').attr('data', 'next').html(">").appendTo(
					'#pagebtn');
		}
		var paginglink = $('#pagebtn a');
		paginglink.removeClass('active');
		$("[data=" + currentPage + "]").addClass("active")
		var startval = (currentPage - 1) * pagenumber;
		var endval = startval + pagenumber;

		tr.css('opacity', '0.0').addClass('off-screen').slice(startval, endval)
				.removeClass('off-screen').animate({
					opacity : 1
				}, 500);

		paginglink.on('click', function(e) {
			e.preventDefault();
			var thisval = $(this);
			var data = thisval.attr("data");
			var selectedPage = thisval.text();
			if (data == "next")
				selectedPage = next;
			if (data == "prev")
				selectedPage = prev;

			page(pagenumber, pageCount, selectedPage);

		});
	}
	//---------------------------------------------------------------------------------------------------

		
	//현재 접속 id Select----------------------------------------------------------------------
	function ajaxSessionId(){
		let currentId;
		
		$.ajax({
			url : 'ajaxSessionId.do',
			dataType : 'text',
			type : 'post',
			async: false,
			success : function(data){
				
				currentId = data;
			}
		})
		return currentId;
	}
	//---------------------------------------------------------------------------------------

	
	$('.headerTop-icon').on("click", function(){
		   $('.modals2-content').find('.bodyRow-member').remove();
	        $('.modals2-content').find('.footerRow-member').remove();
	})
	
	function labelClick() {
		$('.modal2_label').click();
	}
	
	const label = $('.label');
	const options = $('.optionItem');

	label.on('click', function(e) {

		$(e.target).parent().toggleClass('active');
	})

	$.each(options, function(index, option) {
		$(option).on('click', function(e) {
			$(e.target).parent().prev().text($(option).text())
			$(e.target).parent().parent().removeClass('active');
		})
	})




</script>
<script src="resources/js/jay/confirmForm.js"></script>
</html>