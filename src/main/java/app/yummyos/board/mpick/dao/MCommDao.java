package app.yummyos.board.mpick.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.board.mpick.dto.MCommDto;

@Mapper
public interface MCommDao {
	List<MCommDto> selectComm(int mp_no);
	int insertComm(MCommDto dto);
	int deleteComm(int mp_cno);
}
