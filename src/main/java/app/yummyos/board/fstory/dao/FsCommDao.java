package app.yummyos.board.fstory.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import app.yummyos.board.fstory.dto.FsCommDto;

@Mapper
public interface FsCommDao {
		List<FsCommDto> selectComm(int fs_cno);
		int insertComm(FsCommDto dto);
		int deleteComm(int fs_cno);
		

}
