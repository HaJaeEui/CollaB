//Element 에 style 한번에 오브젝트로 설정하는 함수 추가 
Element.prototype.setStyle = function(styles) {
    for (var k in styles) this.style[k] = styles[k];
    return this;
};

//워크스페이스 만드는 모달 띄우기 
function create_workspaceModal(){
    wkModal('create_wk');
}

//워크스페이스 만드는 모달 
function wkModal(id){
    document.getElementById('modal-workspace-title').value = "";

    var zIndex = 9999;
    var modal = document.getElementById(id);

    // 모달 div 뒤 레이어
    var bg = document.createElement('div');
    bg.setAttribute("id","modal-back");
    bg.setStyle({
        position: 'fixed',
        zIndex: zIndex,
        left: '0px',
        top: '0px',
        width: '100%',
        height: '100%',
        overflow: 'auto',
        // 레이어 색갈은 여기서 바꾸기
        backgroundColor: 'rgba(0,0,0,0.4)'
    });
    document.body.append(bg);

    modal.setStyle({
        position: 'fixed',
        display: 'block',
        boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

        // 시꺼먼 레이어 보다 한칸 위에 보이기
        zIndex: zIndex + 1,

        // div center 정렬
        top: '50%',
        left: '50%',
        transform: 'translate(-50%, -50%)',
        msTransform: 'translate(-50%, -50%)',
        webkitTransform: 'translate(-50%, -50%)'
    });
}

//워크스페이스생성 모달 속 CREATE버튼 처리 
function createWK(){
    let wkspaceName = document.querySelector("#modal-workspace-title").value;
    //사용자가 만든 워크스페이스 이름으로 워크스페이스 생성 후,
    //해당 워크스페이스의 boards페이지로 이동하기
	$.ajax({
		url : "AjaxCreateWorkspace",
		data : {
			wkspaceName : wkspaceName
		},
		type : "POST",
		dataType : "text",
		success : function(data){
			if(data == "NO"){
				console.log("워크스페이스 생성 실패");
			}else{
				console.log("워크스페이스 생성 성공");
				closeWKModal();
				location.href="Boards?wkid="+Number(data);
			}
		},
		error : function(){
			console.log("AjaxCreateWorkspace 아작스 실패");
		}
	})
}

//워크스페이스 모달 닫기버튼처리 
function closeWKModal(){
    document.querySelector("#modal-back").remove();
    document.querySelector("#create_wk").style.display="none";
}

//보드 만드는 모달 띄우기 
function create_boardModal(){
    bdmodal('create_board');
}

//보드 만드는 모달 
function bdmodal(id) { 
    document.getElementById('modal-board-background').value = "";
    document.getElementById('modal-board-title').value = "";

    var zIndex = 9999;
    var modal = document.getElementById(id);

    //boardBackground color
    modal.querySelector("#bkcolor").onclick=function(){
        let background = document.querySelector("#modal-board-background");
        if(event.target.nodeName == "SPAN"){
            let color = String(event.target.id);
            background.value = color;
            console.log(color);
        }
    }

    // 모달 div 뒤 레이어
    var bg = document.createElement('div');
    bg.setAttribute("id","modal-back");
    bg.setStyle({
        position: 'fixed',
        zIndex: zIndex,
        left: '0px',
        top: '0px',
        width: '100%',
        height: '100%',
        overflow: 'auto',
        // 레이어 색갈은 여기서 바꾸기
        backgroundColor: 'rgba(0,0,0,0.4)'
    });
    document.body.append(bg);

    modal.setStyle({
        position: 'fixed',
        display: 'block',
        boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

        // 시꺼먼 레이어 보다 한칸 위에 보이기
        zIndex: zIndex + 1,

        // div center 정렬
        top: '50%',
        left: '50%',
        transform: 'translate(-50%, -50%)',
        msTransform: 'translate(-50%, -50%)',
        webkitTransform: 'translate(-50%, -50%)'
    });
}

//보드생성 모달 속 CREATE버튼 처리 
function createBoard(){
    let workspaceID = document.querySelector("#select-workspace").value;
    console.log("이동할 boards페이지의 워크스페이스ID : "+workspaceID)
    //사용자가 선택한 컬러,제목,워크스페이스에 보드 만들어준 후
    //해당 워크스페이스의 boards페이지로 이동하기
}

//보드생성 모달 속 닫기 버튼 처리 
function closeModal(){
    document.querySelector("#modal-back").remove();
    document.querySelector("#create_board").style.display="none";
}

//보드만들려고하면 워크스페이스부터 만들라고 alert창 띄우기
function plzMakeWorkspace(){
	alert("There is no workspace to store the board.\nPlease create a workspace.")
	closeModal();
	create_workspaceModal();
	document.querySelector("#modal-workspace-title").focus();
}
