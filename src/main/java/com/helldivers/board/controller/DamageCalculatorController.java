package com.helldivers.board.controller;

public class DamageCalculatorController {

    public static void main(String[] args) {
        String result = calculateTimeToKill("120", 1000, 1000, 5);
        System.out.println("TTK: " + result + "초");


        String result1 = calculateHpChunks("120", 100, 145);  // 출력: "2"
        String result2 = calculateHpChunks("Beam", 100, 80); // 출력: "--"
        String result3 = calculateHpChunks("90", 0, 80);     // 출력: "--"

        System.out.println("Result1: " + result1);
        System.out.println("Result2: " + result2);
        System.out.println("Result3: " + result3);

    }

    /**
     * 적의 현재 HP를 최대 HP로 나눈 결과를 올림(ROUNDUP)하여 반환.
     * Beam 무기이거나 잘못된 상태이면 "--" 반환.
     *
     * @param dataRPM 무기의 RPM (Beam 문자열일 수도 있음)
     * @param targetTotal 적의 최대 체력
     * @param targetHP 적의 현재 체력
     * @return 체력 단계 수 (문자열), 또는 "--"
     */
    public static String calculateHpChunks(String dataRPM, double targetTotal, double targetHP) {
        if (targetTotal == 0 || targetHP < 0 || dataRPM.equalsIgnoreCase("Beam")) {
            return "--";
        }

        double ratio = targetHP / targetTotal;
        int roundedUp = (int) Math.ceil(ratio); // ROUNDUP 구현
        return String.valueOf(roundedUp);
    }

    /**
     * 적 처치 시간 (TTK 또는 유사 계산) 계산
     *
     * @param dataRPM 무기의 분당 발사 속도 (RPM), "--"일 수 있음
     * @param targetTotal 적의 최대 체력
     * @param targetHP 적의 현재 체력
     * @param targetBTK 해당 무기의 BTK (Bullets to Kill)
     * @return 계산된 시간 (초), 또는 예외 상황을 나타내는 문자열 ("--" 등)
     */
    public static String calculateTimeToKill(String dataRPM, double targetTotal, double targetHP, int targetBTK) {
        // 1. RPM이 "--"인 경우
        if (dataRPM.equals("--")) {
            return "0";
        }

        // 2. 적 정보가 비정상일 경우
        if (targetTotal == 0 || targetHP < 0) {
            return "--";
        }

        // 3. Beam 무기일 경우
        if (dataRPM.equalsIgnoreCase("Beam")) {
            double result = targetHP / targetTotal;
            return String.format("%.2f", result); // 소수점 2자리
        }

        // 4. 정상적인 발사 속도를 갖는 무기
        try {
            double rpm = Double.parseDouble(dataRPM);
            if (targetTotal > 0 && targetHP > 0 && rpm > 0) {
                double ttk = 60.0 / rpm * (targetBTK - 1);
                return String.format("%.2f", ttk); // 소수점 2자리
            }
        } catch (NumberFormatException e) {
            return "--"; // RPM이 숫자가 아니면 예외 처리
        }

        return "--"; // 나머지 예외 상황
    }
}
