package app.yummyos.board.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.yummyos.board.notice.dao.NtCommDao;
import app.yummyos.board.notice.dto.NtCommDto;

@Service
public class NtCommService {
	@Autowired
	NtCommDao dao;
	
	public List<NtCommDto> selectNtComm(int no){
		return dao.selectNtComm(no);
	}
	public int insertNtComm(NtCommDto dto) {
		return dao.insertNtComm(dto);
	}
	public int deleteNtComm(int cno) {
		return dao.deleteNtComm(cno);
	}
	
}