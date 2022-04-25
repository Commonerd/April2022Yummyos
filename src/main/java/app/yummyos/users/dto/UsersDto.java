package app.yummyos.users.dto;

import java.util.Date;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class UsersDto {
	
	@NotNull(message="id is null.")
	@NotEmpty(message="id is empty.")
	private String id;
	@NotNull(message="id is null.")
	private String password;
	private String email;
	@DateTimeFormat(pattern ="yyyyMMdd")
	private Date birth;
	private String gender;
	private String role;
}

