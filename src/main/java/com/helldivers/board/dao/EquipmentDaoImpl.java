package com.helldivers.board.dao;

import com.helldivers.board.domain.EquipmentDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EquipmentDaoImpl implements EquipmentDao {

    @Autowired
    private SqlSession session;

    private static String namespace = "com.helldivers.board.dao.EquipmentMapper.";

    @Override
    public int searchResultCnt(EquipmentDto equipmentDto) throws Exception {
        return session.selectOne(namespace + "searchResultCnt", equipmentDto);
    }

    // 기본 리스트 호출
    @Override
    public List<EquipmentDto> searchResult(EquipmentDto equipmentDto) throws Exception {
        return session.selectList(namespace+"searchResult", equipmentDto);
    }
    
    // 무기 상세정보 호출
    @Override
    public List<EquipmentDto> selectAllInfo(Integer equip_id) throws Exception {
        return session.selectList(namespace+"selectAllInfo", equip_id);
    }


}
