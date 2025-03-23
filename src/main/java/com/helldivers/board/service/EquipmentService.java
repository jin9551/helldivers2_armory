package com.helldivers.board.service;

import com.helldivers.board.domain.EquipmentDto;

import java.util.List;

public interface EquipmentService {
    int getSearchResultCnt(EquipmentDto equipmentDto) throws Exception;

    List<EquipmentDto> getSearchResult(EquipmentDto equipmentDto) throws Exception;

    List<EquipmentDto> getSelectAllInfo(Integer equip_id) throws Exception;
}
