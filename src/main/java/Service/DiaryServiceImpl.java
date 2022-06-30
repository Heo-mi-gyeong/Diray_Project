package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import VO.DiaryVO;
import mapperInterface.DiaryMapper;


@Service
public class DiaryServiceImpl implements DiaryService{
	@Autowired
	DiaryMapper mapper;
	
	@Override
	public List<DiaryVO> selectList() {
		return mapper.selectList();
	}
}
