package com.helldivers.board.service;

import com.helldivers.board.domain.EquipmentDto;
import com.helldivers.board.domain.EnemyDto;
import com.helldivers.board.dto.EffectivenessDto;
import com.helldivers.board.mapper.EnemyMapper;
import com.helldivers.board.mapper.EquipmentMapper;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class EffectivenessService {

    private final EquipmentMapper equipmentMapper;
    private final EnemyMapper enemyMapper;

    public EffectivenessService(EquipmentMapper equipmentMapper, EnemyMapper enemyMapper) {
        this.equipmentMapper = equipmentMapper;
        this.enemyMapper = enemyMapper;
    }

    public List<EffectivenessDto> calculateEffectivenessForAllEnemies(int equipmentId) {
        EquipmentDto eq = equipmentMapper.selectById(equipmentId);
        List<EnemyDto> enemies = enemyMapper.findAllDetails();

        List<EffectivenessDto> resultList = new ArrayList<>();

        for (EnemyDto enemy : enemies) {
            int totalDamage = calculateTotalDamage(eq, enemy);
            int shotsToKill = calculateShotsToKill(totalDamage, enemy.getHealth());

            EffectivenessDto dto = new EffectivenessDto();
            dto.setEquipmentName(eq.getName());
            dto.setEnemyName(enemy.getName());
            dto.setPartName(enemy.getPart_name());
            dto.setTotalDamage(totalDamage);
            dto.setShotsToKill(shotsToKill);
            dto.setEffective(shotsToKill > 0 && shotsToKill <= 5);

            resultList.add(dto);
        }

        return resultList;
    }

    private int calculateTotalDamage(EquipmentDto eq, EnemyDto enemy) {
        int primary = calculateDamage(eq.getNormal_dmg(), eq.getDurable_dmg(), eq.getAp(), enemy);
        int effect = 0;

        if (eq.getEffect_type() != null && eq.getEffect_type() != 0) {
            effect = calculateDamage(eq.getEffect_dmg(), eq.getEffect_durable_dmg(), eq.getEap(), enemy);

            if (eq.getEffect_type() == 8) { // 폭발 피해
                effect = applyExplosionResistance(effect, enemy.getEx_dr());
            }
        }

        return primary + effect;
    }

    private int calculateDamage(Integer normalDmg, Integer durableDmg, Integer penetration, EnemyDto enemy) {
        if (normalDmg == null) normalDmg = 0;
        if (durableDmg == null) durableDmg = 0;
        if (penetration == null) penetration = 0;

        double raw = (normalDmg * (1 - enemy.getDurable())) + (durableDmg * enemy.getDurable());
        int finalRaw = (int) Math.floor(raw);

        int enemyAp = enemy.getAp();
        if (penetration > enemyAp) {
            return finalRaw;
        } else if (penetration.equals(enemyAp)) {
            return (int)(finalRaw * 0.65);
        } else {
            return 0;
        }
    }

    private int applyExplosionResistance(int damage, double exDr) {
        if (exDr >= 1.0) return 0;
        if (exDr <= 0.0) return damage;
        return (int)(damage * (1.0 - exDr));
    }

    private int calculateShotsToKill(int totalDamage, int hp) {
        if (totalDamage <= 0) return -1;
        return (int)Math.ceil((double) hp / totalDamage);
    }
}
