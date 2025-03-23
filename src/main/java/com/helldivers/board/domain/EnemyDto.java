package com.helldivers.board.domain;

public class EnemyDto {
    // 기본 정보
    private Integer e_id; // 적 번호
    private String e_race; // 적 종족
    private Integer e_type; // 적 타입: 1. 소형, 2. 중형, 3. 대형
    private String name; // 적 이름
    private String img_path; // 적 이미지 경로

    // 상세 정보
    private Integer detail_id;  // 적 상세 번호
    private String part_name;          // 적 파트 이름
    private Integer health;    // 체력
    private Integer ap;        // 장갑
    private double durable;    // 내구력
    private double main_per;   // 총체력에 미치는 영향력
    private char bleed;       // 출혈 여부
    private char fatal;       // 치명 여부
    private double ex_dr;     // 폭발저항력
    private String img_1;     // 적 파트 이미지 경로 1
    private String img_2;     // 적 파트 이미지 경로 2

    public EnemyDto() {}

    public EnemyDto(Integer e_id, String e_race, Integer e_type, String name, String img_path) {
        this.e_id = e_id;
        this.e_race = e_race;
        this.e_type = e_type;
        this.name = name;
        this.img_path = img_path;
    }

    public Integer getE_id() {
        return e_id;
    }

    public void setE_id(Integer e_id) {
        this.e_id = e_id;
    }

    public String getE_race() {
        return e_race;
    }

    public void setE_race(String e_race) {
        this.e_race = e_race;
    }

    public Integer getE_type() {
        return e_type;
    }

    public void setE_type(Integer e_type) {
        this.e_type = e_type;
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

    public String getPart_name() {
        return part_name;
    }

    public void setPart_name(String part_name) {
        this.part_name = part_name;
    }

    public Integer getHealth() {
        return health;
    }

    public void setHealth(Integer health) {
        this.health = health;
    }

    public Integer getAp() {
        return ap;
    }

    public void setAp(Integer ap) {
        this.ap = ap;
    }

    public double getDurable() {
        return durable;
    }

    public void setDurable(double durable) {
        this.durable = durable;
    }

    public double getMain_per() {
        return main_per;
    }

    public void setMain_per(double main_per) {
        this.main_per = main_per;
    }

    public char getBleed() {
        return bleed;
    }

    public void setBleed(char bleed) {
        this.bleed = bleed;
    }

    public char getFatal() {
        return fatal;
    }

    public void setFatal(char fatal) {
        this.fatal = fatal;
    }

    public double getEx_dr() {
        return ex_dr;
    }

    public void setEx_dr(double ex_dr) {
        this.ex_dr = ex_dr;
    }

    public String getImg_1() {
        return img_1;
    }

    public void setImg_1(String img_1) {
        this.img_1 = img_1;
    }

    public String getImg_2() {
        return img_2;
    }

    public void setImg_2(String img_2) {
        this.img_2 = img_2;
    }

    @Override
    public String toString() {
        return "EnemyDto{" +
                "e_id=" + e_id +
                ", e_race='" + e_race + '\'' +
                ", e_type=" + e_type +
                ", name='" + name + '\'' +
                ", img_path='" + img_path + '\'' +
                ", detail_id=" + detail_id +
                ", part_name='" + part_name + '\'' +
                ", health=" + health +
                ", ap=" + ap +
                ", durable=" + durable +
                ", main_per=" + main_per +
                ", bleed=" + bleed +
                ", fatal=" + fatal +
                ", ex_dr=" + ex_dr +
                ", img_1='" + img_1 + '\'' +
                ", img_2='" + img_2 + '\'' +
                '}';
    }
}
