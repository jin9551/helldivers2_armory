package com.helldivers.board.controller;

import com.helldivers.board.domain.EnemyDto;
import com.helldivers.board.domain.EquipmentDto;
import com.helldivers.board.service.EnemyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/enemy")
public class EnemyController {
    @Autowired
    EnemyService enemyService;


    /**
     * 적 목록
     * @param enemyDto
     * @param model
     * @return enemyList.jsp
     */
    @GetMapping("/list")
    public String list(EnemyDto enemyDto, Model model){
        try {
            int count = enemyService.getSearchResultCnt(enemyDto);
            System.out.println("count : " + count);
            List<EnemyDto> list = enemyService.getSearchResult(enemyDto);
            System.out.println("list = " + list);
            model.addAttribute("list", list);
            model.addAttribute("count", count);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "enemyList";
    }

    /**
     * 적 상세보기
     * @param e_id
     * @param model
     * @return  enemyRead.jsp
     */
    @GetMapping("/read")
    public String read(Integer e_id, Model model) {
        try {
            List<EnemyDto> list = enemyService.getSelectAllInfo(e_id);
            System.out.println(list);
            model.addAttribute("list", list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "enemyRead";
    }

}
