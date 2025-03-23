package com.helldivers.board.service;

import com.helldivers.board.domain.EnemyDto;

import java.util.List;

public interface EnemyService {
    int getSearchResultCnt(EnemyDto enemyDto) throws Exception;

    List<EnemyDto> getSearchResult(EnemyDto enemyDto) throws Exception;

    List<EnemyDto> getSelectAllInfo(Integer e_id) throws Exception;
}
