package com.helldivers.board.dao;

import com.helldivers.board.domain.EquipmentDto;

import java.util.List;

public interface EquipmentDao {
    int searchResultCnt(EquipmentDto equipmentDto) throws Exception;

    List<EquipmentDto> searchResult(EquipmentDto equipmentDto) throws Exception;

    List<EquipmentDto> selectAllInfo(Integer equip_id) throws Exception;
}
