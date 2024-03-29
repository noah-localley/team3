package com.team.medical.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface CommonService {
	// 질문 목록
	public void boardList(HttpServletRequest req, Model model);
	// 질문 상세
	public void boardInfo(HttpServletRequest req, Model model);
	// 질문등록 처리
	public void boardAddPro(HttpServletRequest req, Model model);
	// 질문수정상세페이지
	public void boardModify(HttpServletRequest req, Model model);
	// 질문수정처리페이지
	public void boardModifyPro(HttpServletRequest req, Model model);
	// 질문삭제 처리페이지
	public void boardDeletePro(HttpServletRequest req, Model model);
	// 의사 댓글작성
	public void inputre(HttpServletRequest req, Model model);
	// 병원목록 가져오기
	public void hospitalList(HttpServletRequest req, Model model);
	// 병원상세페이지
	public void getHospitalInfo(HttpServletRequest req, Model model);
	// 이벤트 추가
	public void eventAdd(MultipartHttpServletRequest req, Model model);
	// 이벤트 리스트
	public void eventList(HttpServletRequest req, Model model);
	// 이벤트 상세 페이지
	public void eventInfo(HttpServletRequest req, Model model);
	// 질병 목록
	public void diseaseList(HttpServletRequest req, Model model);
	// 질병 상세 페이지
	public void diseaseInfo(HttpServletRequest req, Model model);
	// 운동 목록
	public void exerciseInfoList(HttpServletRequest req, Model model);
	// 운동 상세 페이지
	public void exerciseInfo(HttpServletRequest req, Model model);
	// 고객센터 게시글 리스트
	public void reportBoardList(HttpServletRequest req, Model model);
	// 고객센터 게시글 상세페이지
	public void reportBoardInfo(HttpServletRequest req, Model model);
	// 약 검색목록 페이지
	public void drugSeachList(HttpServletRequest req, Model model);
	// 약 상세페이지
	public void drugInfo(HttpServletRequest req, Model model);
	// 테스트
	public void test(HttpServletRequest req, Model model) throws IOException;
	
}
