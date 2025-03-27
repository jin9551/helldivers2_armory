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
        List<EnemyDto> list = enemyDao.selectAllInfo(e_id);
        list.forEach(enemyDto -> {
            if (enemyDto.getMain_per() >= 0 && enemyDto.getDurable() >= 0) {
                enemyDto.setMain_per(enemyDto.getMain_per() * 100);
                enemyDto.setDurable(enemyDto.getDurable() * 100);
                enemyDto.setEx_dr(enemyDto.getEx_dr() * 100);
            }
            System.out.println("enemyDto = " + enemyDto);
        });
        return list;
    }
}
