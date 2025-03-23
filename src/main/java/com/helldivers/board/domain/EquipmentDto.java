package com.helldivers.board.domain;

import org.springframework.web.util.UriComponentsBuilder;

public class EquipmentDto{
    // 기본 정보
    private Integer equip_id; // 장비 번호
    private Integer equip_type; // 장비 종류 : 1. 무기, 2. 보조무기, 3. 투척무기, 4. 지원무기, 5. 배낭, 6. 차량
    private String name; // 장비명
    private String img_path; // 장비 이미지 경로

    // 상세 정보
    private Integer detail_id; // 장비 상세 번호
    private Integer proj_type; // 탄종
    private String proj_name; // 탄종명
    private Integer normal_dmg; // 기본 데미지
    private Integer durable_dmg; // 내구 데미지
    private Integer ap; // 장갑 관통력 : 0~1. 무장갑 관통, 2. 경장갑 관통, 3. 일반 장갑 관통, 4. 중장갑 관통, 5~10. 대전차
    private Integer effect_type; // 무기 데미지 속성 : 0.없음, 1. 화염, 2. 산성, 3, 아크, 4. 가스, 5, 출혈, 6. 파편, 7. 근접, 8. 폭발
    private Integer effect_dmg; // 속성 기본 데미지
    private Integer effect_durable_dmg; // 속성 내구 데미지
    private Integer eap; // 속성 장갑 관통력
    private String note; // 비고



    // 기본 생성자
    public EquipmentDto() {}

    public EquipmentDto(Integer equip_id, Integer equip_type, String name, String img_path,
                        Integer detail_id, Integer proj_type, String proj_name, Integer normal_dmg,
                        Integer durable_dmg, Integer ap, Integer effect_type, Integer effect_dmg,
                        Integer effect_durable_dmg, Integer eap, String note) {
        this.equip_id = equip_id;
        this.equip_type = equip_type;
        this.name = name;
        this.img_path = img_path;
        this.detail_id = detail_id;
        this.proj_type = proj_type;
        this.proj_name = proj_name;
        this.normal_dmg = normal_dmg;
        this.durable_dmg = durable_dmg;
        this.ap = ap;
        this.effect_type = effect_type;
        this.effect_dmg = effect_dmg;
        this.effect_durable_dmg = effect_durable_dmg;
        this.eap = eap;
        this.note = note;
    }

    public Integer getEquip_id() {
        return equip_id;
    }

    public void setEquip_id(Integer equip_id) {
        this.equip_id = equip_id;
    }

    public Integer getEquip_type() {
        return equip_type;
    }

    public void setEquip_type(Integer equip_type) {
        this.equip_type = equip_type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg_path() {
        return img_path;
    }

    public void setImg_path(String img_path) {
        this.img_path = img_path;
    }

    public Integer getDetail_id() {
        return detail_id;
    }

    public void setDetail_id(Integer detail_id) {
        this.detail_id = detail_id;
    }

    public Integer getProj_type() {
        return proj_type;
    }

    public void setProj_type(Integer proj_type) {
        this.proj_type = proj_type;
    }

    public String getProj_name() {
        return proj_name;
    }

    public void setProj_name(String proj_name) {
        this.proj_name = proj_name;
    }

    public Integer getNormal_dmg() {
        return normal_dmg;
    }

    public void setNormal_dmg(Integer normal_dmg) {
        this.normal_dmg = normal_dmg;
    }

    public Integer getDurable_dmg() {
        return durable_dmg;
    }

    public void setDurable_dmg(Integer durable_dmg) {
        this.durable_dmg = durable_dmg;
    }

    public Integer getAp() {
        return ap;
    }

    public void setAp(Integer ap) {
        this.ap = ap;
    }

    public Integer getEffect_type() {
        return effect_type;
    }

    public void setEffect_type(Integer effect_type) {
        this.effect_type = effect_type;
    }

    public Integer getEffect_dmg() {
        return effect_dmg;
    }

    public void setEffect_dmg(Integer effect_dmg) {
        this.effect_dmg = effect_dmg;
    }

    public Integer getEffect_durable_dmg() {
        return effect_durable_dmg;
    }

    public void setEffect_durable_dmg(Integer effect_durable_dmg) {
        this.effect_durable_dmg = effect_durable_dmg;
    }

    public Integer getEap() {
        return eap;
    }

    public void setEap(Integer eap) {
        this.eap = eap;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "EquipmentDto{" +
                "equip_id=" + equip_id +
                ", equip_type=" + equip_type +
                ", name='" + name + '\'' +
                ", img_path='" + img_path + '\'' +
                ", detail_id=" + detail_id +
                ", proj_type=" + proj_type +
                ", proj_name='" + proj_name + '\'' +
                ", normal_dmg=" + normal_dmg +
                ", durable_dmg=" + durable_dmg +
                ", ap=" + ap +
                ", effect_type=" + effect_type +
                ", effect_dmg=" + effect_dmg +
                ", effect_durable_dmg=" + effect_durable_dmg +
                ", eap=" + eap +
                ", note='" + note + '\'' +
                '}';
    }


}
