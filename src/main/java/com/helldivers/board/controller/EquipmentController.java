package com.helldivers.board.controller;

import com.helldivers.board.domain.EquipmentDto;
import com.helldivers.board.service.EquipmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

@Controller
@RequestMapping("/equipment")
public class EquipmentController {
    @Autowired
    EquipmentService equipmentService;

    /**
     * 장비 목록
     * @param equipmentDto
     * @param model
     * @return euqipmentList.jsp
     */
    @GetMapping("/list")
    public String list(EquipmentDto equipmentDto, Model model){
        try {
            int count = equipmentService.getSearchResultCnt(equipmentDto);
            System.out.println("count : " + count);
            List<EquipmentDto> list = equipmentService.getSearchResult(equipmentDto);
            System.out.println("list = " + list);
            model.addAttribute("list", list);
            model.addAttribute("count", count);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "equipmentList";
    }

    /**
     * 장비 상세보기
     * @param equip_id
     * @param model
     * @return  equipmentRead.jsp
     */
    @GetMapping("/read")
    public String read(Integer equip_id, Model model) {
        try {
            List<EquipmentDto> list = equipmentService.getSelectAllInfo(equip_id);
            model.addAttribute("list", list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "equipmentRead";
    }

}
