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
	
	public List<MCommDto> selectMComm(int mp_no){
		return dao.selectMComm(mp_no);
	}
	public int insertMComm(MCommDto dto) {
		return dao.insertMComm(dto);
	}
	public int deleteMComm(int mp_cno) {
		return dao.deleteMComm(mp_cno);
	}
	
}