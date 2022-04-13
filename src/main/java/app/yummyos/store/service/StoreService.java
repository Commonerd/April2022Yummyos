package app.yummyos.store.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.yummyos.store.dao.StoreDao;
import app.yummyos.store.dto.StoreDto;

@Service
public class StoreService {

		@Autowired
		StoreDao dao;
		
		public int viewStore(StoreDto dto) {
			return dao.viewStore(dto);
		}
}
