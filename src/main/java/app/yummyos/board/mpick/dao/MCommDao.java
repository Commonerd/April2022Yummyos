package app.yummyos.board.mpick.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.board.mpick.dto.MCommDto;

@Mapper
public interface MCommDao {
	List<MCommDto> selectMComm(int mp_no);
	int insertMComm(MCommDto dto);
	int deleteMComm(int mp_cno);
}
