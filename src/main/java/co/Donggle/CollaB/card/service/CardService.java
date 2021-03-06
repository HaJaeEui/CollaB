package co.Donggle.CollaB.card.service;

import java.util.List;

import co.Donggle.CollaB.list.service.ListVO;

public interface CardService {
	//카드 아이템 조회-체크리스트 : 0초과면 존재 
	int cardCheckListExist(CardVO vo);
	//카드 아이템 조회-파일 : 0초과면 존재
	int cardFileExist(CardVO vo);
	//카드 매니저 프로필이미지경로
	String cardManagerProfIMG(CardVO vo);
	//카드 추가
	int createCard(CardVO vo);
	//방금 만든 카드 조회
	CardVO selectCurrentCard();
	//카드상세조회
	CardVO selectCard(CardVO vo);
	//카드상세조회-해당카드가있는리스트의 모든 카드정보
	List<CardVO> selectCardList(CardVO vo);
	//카드상세조회-해당카드가 있는 리스트정보
	CardVO selectListinfo(CardVO vo);
	//카드 라벨수정
	int cardLabelUpdate(CardVO vo);
	//카드 일정등록&수정
	int cardDatesUpdate(CardVO vo);
	//카드 일정삭제
	int cardDatesDelete(CardVO vo);
	//카드 내용수정
	int cardContentsUpdate(CardVO vo);
	//카드 이름변경
	int cardRename(CardVO vo);
	//카드 관리자지정
	int cardManagerSetting(CardVO vo);
	//카드 테마설정
	int cardThemaSelected(CardVO vo);
	//카드 테마삭제
	int cardThemaDelete(int card_id);
	
	//=====카드삭제===== 
	//카드댓글아이디, 파일아이디, 체크리스트 아이디 필요
	//삭제할 카드에 포함된 카드댓글아이디찾기
	List<CardVO> selectCommentIds(CardVO vo);
	//삭제할 카드에 포함된 첨부파일아이디찾기
	List<CardVO> selectFileIds(CardVO vo);
	//삭제할 카드에 포함된 체크리스트아이디찾기
	List<CardVO> selectCheckListIds(CardVO vo);
	
	//카드삭제_1(리스트에 있는 모든 카드 삭제됨, 파라미터값이 리스트아이디)
	int deleteCard(CardVO vo);
	//카드삭제_1_1(리스트에 있는 모든 카드 삭제됨,,)
	int deleteCards(ListVO vo);
	//카드삭제_2(개별카드삭제)
	int dropCard(CardVO vo);
	//카드댓글삭제
	int deleteCardComment(CardVO vo);
	//카드댓글첨부파일삭제
	int deleteCardCommentFile(CardVO vo);
	//카드좋아요삭제
	int deleteCardCommentLike(CardVO vo);
	//카드첨부파일삭제
	int deleteCardFile(CardVO vo);
	//카드첨부파일내역삭제
	int deleteCardFileHistory(CardVO vo);
	//카드체크리스트삭제
	int deleteCardCheckList(CardVO vo);
	//카드체크리스트아이템삭제
	int deleteCardCheckItems(CardVO vo);
	
	
	//====대시보드=====
	List<CardVO> boardCardsSelectList(int board_id); //해당 보드가 가지고 있는 모든 카드
}
