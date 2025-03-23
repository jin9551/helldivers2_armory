package com.helldivers.board.dao;

import com.helldivers.board.domain.EnemyDto;
import com.helldivers.board.domain.EquipmentDto;

import java.util.List;

public interface EnemyDao {
    int searchResultCnt(EnemyDto enemyDto) throws Exception;

    List<EnemyDto> searchResult(EnemyDto enemyDto) throws Exception;
    List<EnemyDto> selectAllInfo(Integer e_id) throws Exception;
}
