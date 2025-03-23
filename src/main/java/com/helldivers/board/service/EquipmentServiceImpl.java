package com.helldivers.board.service;

import com.helldivers.board.dao.EquipmentDao;
import com.helldivers.board.domain.EquipmentDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EquipmentServiceImpl implements EquipmentService {

    @Autowired
    EquipmentDao equipmentDao;

    @Override
    public int getSearchResultCnt(EquipmentDto equipmentDto) throws Exception {
        return equipmentDao.searchResultCnt(equipmentDto);
    }
    @Override
    public List<EquipmentDto> getSearchResult(EquipmentDto equipmentDto) throws Exception {
        return equipmentDao.searchResult(equipmentDto);
    }

    @Override
    public List<EquipmentDto> getSelectAllInfo(Integer equip_id) throws Exception {
        return equipmentDao.selectAllInfo(equip_id);
    }

}
