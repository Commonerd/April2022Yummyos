package app.yummyos.board.fstory.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.board.fstory.dto.FsCommDto;

@Mapper
public interface FsCommDao {
	List<FsCommDto> selectfsComm(int f_no);
	int insertfsComm(FsCommDto dto);
	int deletefsComm(int fs_cno);
	

}
