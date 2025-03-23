package com.helldivers.board.dao;

import com.helldivers.board.domain.EquipmentDto;
import org.junit.*;
import org.junit.runner.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.test.context.*;
import org.springframework.test.context.junit4.*;


import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class EquipmentDaoImplTest {

    @Autowired
    EquipmentDao equipmentDao;

    @Test
    public void count() throws Exception{
        EquipmentDto equipmentDto = new EquipmentDto();
        int count = equipmentDao.searchResultCnt(equipmentDto);
        System.out.println("equipmentDao.count = " + count);
        assertTrue(count != 0);
    }

    @Test
    public void selectAll() throws Exception{
        System.out.println("equipmentDao.selectAll() = " + equipmentDao.selectAllInfo(1));
    }
}