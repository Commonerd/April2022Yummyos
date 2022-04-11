package app.yummyos.board.fstory.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.yummyos.board.fstory.dao.FsCommDao;
import app.yummyos.board.fstory.dto.FsCommDto;

@Service
public class FsCommService {
	@Autowired
	FsCommDao dao;
	
	public List<FsCommDto> selectComm(int fs_cno){
		return dao.selectComm(fs_cno);
	}
	
	public int insertComm(FsCommDto dto) {
		return dao.insertComm(dto);
	}
	public int deleteComm(int fs_cno) {
		return dao.deleteComm(fs_cno);
	}

}
