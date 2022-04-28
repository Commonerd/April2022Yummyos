package app.yummyos.board.notice.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.board.notice.dto.NtCommDto;

@Mapper
public interface NtCommDao {
	List<NtCommDto> selectNtComm(int no);
	int insertNtComm(NtCommDto dto);
	int deleteNtComm(int cno);
	
}

