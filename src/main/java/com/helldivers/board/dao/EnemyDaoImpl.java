package com.helldivers.board.dao;

import com.helldivers.board.domain.EnemyDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EnemyDaoImpl implements EnemyDao {
    @Autowired
    private SqlSession session;

    private static String namespace = "com.helldivers.board.dao.EnemyMapper.";

    @Override
    public int searchResultCnt(EnemyDto enemyDto) throws Exception {
        return session.selectOne(namespace + "searchResultCnt",enemyDto);
    }
    @Override
    public List<EnemyDto> searchResult(EnemyDto enemyDto) throws Exception {
        return session.selectList(namespace+"searchResult",enemyDto);
    }
    @Override
    public List<EnemyDto> selectAllInfo(Integer e_id) throws Exception {
        return session.selectList(namespace+"selectAllInfo",e_id);
    }

}
