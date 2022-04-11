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
	
	public List<NtCommDto> selectComm(int no){
		return dao.selectComm(no);
	}
	public int insertComm(NtCommDto dto) {
		return dao.insertComm(dto);
	}
	public int deleteComm(int cno) {
		return dao.deleteComm(cno);
	}
	
}