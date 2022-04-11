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
	
	public List<FsCommDto> selectfsComm(int f_no){
		return dao.selectfsComm(f_no);
	}
	
	public int insertComm(FsCommDto dto) {
		return dao.insertfsComm(dto);
	}
	public int deleteComm(int fs_cno) {
		return dao.deletefsComm(fs_cno);
	}


}
