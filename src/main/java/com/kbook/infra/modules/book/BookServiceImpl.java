package com.kbook.infra.modules.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kbook.infra.common.util.UtilDateTime;
import com.kbook.infra.common.util.UtilUpload;

@Service
public class BookServiceImpl implements BookService {

	@Autowired 
	BookDao dao;

//	 bookMain 
	@Override
	public List<Book> selectListDomesticNew(BookVo vo) throws Exception {
		return dao.selectListDomesticNew(vo);
	}

	@Override
	public List<Book> selectListAbroadNew(BookVo vo) throws Exception {
		return dao.selectListAbroadNew(vo);
	}

	@Override
	public List<Book> selectListEbookNew(BookVo vo) throws Exception {
		return dao.selectListEbookNew(vo);
	}

	@Override
	public List<Book> selectListBest(BookVo vo) throws Exception {
		return dao.selectListBest(vo);
	}

	@Override
	public List<Book> selectListToday(BookVo vo) throws Exception {
		return dao.selectListToday(vo);
	}

	
//	/* bookInfo */
	@Override
	public Book selectOne(BookVo vo) throws Exception {
		return dao.selectOne(vo);
	}
	
	@Override
	public List<Book> selectListAuthor(BookVo vo) throws Exception {
		return dao.selectListAuthor(vo);
	}

	@Override
	public List<Book> selectListKeyword(BookVo vo) throws Exception {
		return dao.selectListKeyword(vo);
	}

	@Override
	public List<Book> selectListRelatedItem(BookVo vo) throws Exception {
		return dao.selectListRelatedItem(vo);
	}

//	bookList
	
	@Override
	public List<Book> selectList(BookVo vo) throws Exception {
		return dao.selectList(vo);
	}

	@Override
	public int selectOneCount(BookVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public int update(Book dto) throws Exception {
		
		dto.setModDateTime(UtilDateTime.nowDate());
		
		dao.update(dto);
		for(int i=0; i<dto.getTdkwKeywordArray().length; i++) {
			dto.setTdkwKeyword(dto.getTdkwKeywordArray()[i]);
			dao.updateKeyword(dto);
		}
		
		
		int j = 0;
		for(MultipartFile multipartFile : dto.getFile0()) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
			UtilUpload.uploadBook(multipartFile, pathModule, dto);
			
			dto.setTableName("tradItemUploaded");
			dto.setType(0);
			dto.setDefaultNy(0);
			dto.setSort(j);
			dto.setDelNy(0);
			dto.setPseq(dto.getTditSeq());
			
			dao.updateUploaded(dto);
			j++;
			
		}
		
		j = 0;
		for(MultipartFile multipartFile : dto.getFile1()) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
			UtilUpload.uploadBook(multipartFile, pathModule, dto);
			
			dto.setTableName("tradItemUploaded");
			dto.setType(1);
			dto.setDefaultNy(0);
			dto.setSort(j);
			dto.setDelNy(0);
			dto.setPseq(dto.getTditSeq());
			
			dao.updateUploaded(dto);
			j++;
			
		}
		
		return 1;
	}

}
