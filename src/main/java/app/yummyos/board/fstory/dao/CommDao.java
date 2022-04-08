package app.yummyos.board.fstory.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.board.fstory.dto.CommDto;

@Mapper
public interface CommDao {
		List<CommDto> selectComm(int no);
		int insertComm(CommDto dto);
		int deleteComm(int cno);
		

}
