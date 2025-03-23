package com.helldivers.board.service;

import com.helldivers.board.dao.EnemyDao;
import com.helldivers.board.domain.EnemyDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EnemyServiceImpl implements EnemyService {
    @Autowired
    EnemyDao enemyDao;

    @Override
    public int getSearchResultCnt(EnemyDto enemyDto) throws Exception {
        return enemyDao.searchResultCnt(enemyDto);
    }
    @Override
    public List<EnemyDto> getSearchResult(EnemyDto enemyDto) throws Exception {
        return enemyDao.searchResult(enemyDto);
    }

    @Override
    public List<EnemyDto> getSelectAllInfo(Integer e_id) throws Exception {
        return enemyDao.selectAllInfo(e_id);
    }
}
