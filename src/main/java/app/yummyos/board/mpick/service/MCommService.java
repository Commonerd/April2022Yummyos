package app.yummyos.board.mpick.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.yummyos.board.mpick.dao.MCommDao;
import app.yummyos.board.mpick.dto.MCommDto;



@Service
public class MCommService {
	@Autowired
	MCommDao dao;
	
	public List<MCommDto> selectComm(int mp_no){
		return dao.selectComm(mp_no);
	}
	public int insertComm(MCommDto dto) {
		return dao.insertComm(dto);
	}
	public int deleteComm(int mp_cno) {
		return dao.deleteComm(mp_cno);
	}
	
}