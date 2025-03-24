package com.helldivers.board.controller;

import com.helldivers.board.domain.EquipmentDto;
import com.helldivers.board.service.EquipmentService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class EquipmentControllerTest {
    @Autowired
    EquipmentController equipmentController;

    @Autowired
    EquipmentService equipmentService;


    @Test
    public void list() throws Exception {
        EquipmentDto equipmentDto = new EquipmentDto();
        List<EquipmentDto> list = equipmentService.getSearchResult(equipmentDto);
        int count = equipmentService.getSearchResultCnt(equipmentDto);
        assertTrue(list != null);
        System.out.println("count = " + count);
        assertTrue(count != 0);
    }

    @Test
    public void read() {
    }
}