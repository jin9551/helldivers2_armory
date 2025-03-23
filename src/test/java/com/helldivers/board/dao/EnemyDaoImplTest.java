package com.helldivers.board.dao;

import com.helldivers.board.domain.EnemyDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class EnemyDaoImplTest {

    @Autowired
    EnemyDao enemyDao;

    @Test
    public void count() throws Exception{
        int count = enemyDao.count();
        System.out.println("enemyDao.count() = " + count);
        assertTrue(count != 0);
    }

    @Test
    public void selectAll() throws Exception{
        List<EnemyDto> list = enemyDao.selectAll();
        System.out.println("enemyDao.selectAll() = " + list);
        assertNotNull(list);
    }

}