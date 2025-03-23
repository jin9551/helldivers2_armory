package com.helldivers.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board/equipment")
public class EquipmenetController {

    @GetMapping("/list")
    public String list(){
        return "equipmentList";
    }

}
