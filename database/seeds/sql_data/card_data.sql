INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(1, '莫莉', '水', 2, 1, '50萬', 833, 1, 86, 47, 15, 5, 129, 71, 24, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石解放 ‧ 水'),
        (SELECT id FROM leader_skill WHERE name = '海之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(2, '高級水術士莫莉', '水', 3, 2, '100萬', 20408, 1, 216, 118, 36, 5, 364, 200, 68, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石解放 ‧ 水'),
        (SELECT id FROM leader_skill WHERE name = '海之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(3, '水魔法師莫莉', '水', 4, 4, '150萬', 180549, 1, 441, 242, 74, 5, 801, 440, 151, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石解放 ‧ 水'),
        (SELECT id FROM leader_skill WHERE name = '海之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(4, '水元素賢者莫莉', '水', 5, 9, '300萬', 3000000, 1, 846, 465, 141, 9, 1881, 1035, 364, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石激發 ‧ 水'),
        (SELECT id FROM leader_skill WHERE name = '海之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(5, '肖恩', '火', 2, 1, '50萬', 833, 1, 91, 51, 13, 5, 136, 76, 21, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石解放 ‧ 火'),
        (SELECT id FROM leader_skill WHERE name = '炎之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(6, '高級劍士肖恩', '火', 3, 2, '100萬', 20408, 1, 228, 127, 32, 5, 384, 214, 60, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石解放 ‧ 火'),
        (SELECT id FROM leader_skill WHERE name = '炎之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(7, '火焰劍士肖恩', '火', 4, 4, '150萬', 180549, 1, 464, 259, 66, 5, 842, 470, 135, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石解放 ‧ 火'),
        (SELECT id FROM leader_skill WHERE name = '炎之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(8, '紅蓮劍士肖恩', '火', 5, 9, '300萬', 3000000, 1, 891, 498, 126, 9, 1980, 1107, 324, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石激發 ‧ 火'),
        (SELECT id FROM leader_skill WHERE name = '炎之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(9, '鄧肯', '木', 2, 1, '50萬', 833, 1, 100, 44, 14, 5, 149, 66, 23, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石解放 ‧ 木'),
        (SELECT id FROM leader_skill WHERE name = '森之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(10, '牧者鄧肯', '木', 3, 2, '100萬', 20408, 1, 250, 109, 34, 5, 421, 184, 64, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石解放 ‧ 木'),
        (SELECT id FROM leader_skill WHERE name = '森之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(11, '德魯依鄧肯', '木', 4, 4, '150萬', 180549, 1, 510, 223, 69, 5, 925, 405, 141, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石解放 ‧ 木'),
        (SELECT id FROM leader_skill WHERE name = '森之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(12, '森林王者鄧肯', '木', 5, 9, '300萬', 3000000, 1, 979, 429, 132, 9, 2176, 953, 340, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石激發 ‧ 木'),
        (SELECT id FROM leader_skill WHERE name = '森之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(13, '男爵奈寶尼', '光', 2, 1, '50萬', 833, 1, 90, 44, 15, 5, 134, 66, 25, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石解放 ‧ 光'),
        (SELECT id FROM leader_skill WHERE name = '聖之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(14, '子爵奈寶尼', '光', 3, 2, '100萬', 20408, 1, 226, 110, 37, 5, 380, 186, 70, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石解放 ‧ 光'),
        (SELECT id FROM leader_skill WHERE name = '聖之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(15, '伯爵奈寶尼', '光', 4, 4, '150萬', 180549, 1, 460, 226, 76, 5, 834, 410, 156, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石解放 ‧ 光'),
        (SELECT id FROM leader_skill WHERE name = '聖之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(16, '侯爵奈寶尼', '光', 5, 9, '300萬', 3000000, 1, 882, 433, 145, 9, 1960, 963, 374, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石激發 ‧ 光'),
        (SELECT id FROM leader_skill WHERE name = '聖之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(17, '暗修導士安多', '暗', 2, 1, '50萬', 833, 1, 84, 52, 14, 5, 126, 78, 23, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石解放 ‧ 暗'),
        (SELECT id FROM leader_skill WHERE name = '邪之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(18, '高級暗修導士安多', '暗', 3, 2, '100萬', 20408, 1, 212, 130, 34, 5, 357, 220, 64, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石解放 ‧ 暗'),
        (SELECT id FROM leader_skill WHERE name = '邪之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(19, '死靈術士安多', '暗', 4, 4, '150萬', 180549, 1, 432, 266, 68, 5, 784, 483, 140, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石解放 ‧ 暗'),
        (SELECT id FROM leader_skill WHERE name = '邪之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(20, '死靈祭師安多', '暗', 5, 9, '300萬', 3000000, 1, 829, 511, 131, 9, 1843, 1137, 337, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '主角'),
        (SELECT id FROM active_skill WHERE name = '符石激發 ‧ 暗'),
        (SELECT id FROM leader_skill WHERE name = '邪之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(21, '水方士', '水', 2, 1, '50萬', 4217, 1, 143, 52, 6, 0, 309, 94, 7, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '攻擊姿勢 ‧ 水'),
        (SELECT id FROM leader_skill WHERE name = '龍之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(22, '清川真人', '水', 3, 2, '100萬', 20408, 1, 358, 134, 17, 5, 616, 198, 18, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '攻擊姿勢 ‧ 水'),
        (SELECT id FROM leader_skill WHERE name = '龍之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(23, '靈江仙人', '水', 4, 4, '200萬', 240732, 1, 729, 276, 36, 5, 1354, 431, 39, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '攻擊姿勢 ‧ 水'),
        (SELECT id FROM leader_skill WHERE name = '龍之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(24, '青龍孟章神君', '水', 5, 9, '250萬', 2500000, 1, 1398, 532, 70, 9, 3199, 979, 78, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '攻擊姿勢 ‧ 水'),
        (SELECT id FROM leader_skill WHERE name = '龍之狂怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(25, '火方士', '火', 2, 1, '50萬', 4217, 1, 137, 59, 14, 0, 260, 106, 29, 
        (SELECT id FROM races WHERE name = '獸類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '防禦姿勢 ‧ 火'),
        (SELECT id FROM leader_skill WHERE name = '野獸之復甦'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(26, '赤灶真人', '火', 3, 2, '100萬', 20408, 1, 320, 141, 35, 5, 515, 216, 58, 
        (SELECT id FROM races WHERE name = '獸類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '防禦姿勢 ‧ 火'),
        (SELECT id FROM leader_skill WHERE name = '野獸之復甦'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(27, '真火仙人', '火', 4, 4, '200萬', 240732, 1, 639, 286, 69, 5, 1133, 475, 128, 
        (SELECT id FROM races WHERE name = '獸類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '防禦姿勢 ‧ 火'),
        (SELECT id FROM leader_skill WHERE name = '野獸之復甦'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(28, '朱雀陵光神君', '火', 5, 9, '250萬', 2500000, 1, 1215, 544, 133, 9, 2684, 1105, 305, 
        (SELECT id FROM races WHERE name = '獸類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '防禦姿勢 ‧ 火'),
        (SELECT id FROM leader_skill WHERE name = '野獸之再生'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(29, '木方士', '木', 2, 1, '50萬', 4217, 1, 150, 51, 16, 0, 285, 92, 31, 
        (SELECT id FROM races WHERE name = '獸類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '防禦壁'),
        (SELECT id FROM leader_skill WHERE name = '野獸之血'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(30, '九地真人', '木', 3, 2, '100萬', 20408, 1, 352, 122, 36, 5, 566, 187, 61, 
        (SELECT id FROM races WHERE name = '獸類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '防禦壁'),
        (SELECT id FROM leader_skill WHERE name = '野獸之血'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(31, '虛土仙人', '木', 4, 4, '200萬', 240732, 1, 703, 246, 74, 5, 1246, 409, 135, 
        (SELECT id FROM races WHERE name = '獸類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '防禦壁'),
        (SELECT id FROM leader_skill WHERE name = '野獸之血'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(32, '玄武執明神君', '木', 5, 9, '250萬', 2500000, 1, 1336, 469, 140, 9, 2949, 952, 322, 
        (SELECT id FROM races WHERE name = '獸類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '防禦壁'),
        (SELECT id FROM leader_skill WHERE name = '野獸之意志'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(33, '陽方士', '光', 2, 1, '50萬', 4217, 1, 136, 52, 17, 0, 257, 93, 34, 
        (SELECT id FROM races WHERE name = '獸類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '裝甲破壞'),
        (SELECT id FROM leader_skill WHERE name = '野獸之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(34, '聖明真人', '光', 3, 2, '100萬', 20408, 1, 316, 123, 41, 5, 510, 189, 68, 
        (SELECT id FROM races WHERE name = '獸類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '裝甲破壞'),
        (SELECT id FROM leader_skill WHERE name = '野獸之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(35, '耀尊仙人', '光', 4, 4, '200萬', 240732, 1, 633, 248, 80, 5, 1122, 413, 148, 
        (SELECT id FROM races WHERE name = '獸類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '裝甲破壞'),
        (SELECT id FROM leader_skill WHERE name = '野獸之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(36, '白虎監兵神君', '光', 5, 9, '250萬', 2500000, 1, 1094, 430, 139, 9, 2416, 874, 321, 
        (SELECT id FROM races WHERE name = '獸類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '護牆崩壞'),
        (SELECT id FROM leader_skill WHERE name = '野獸之狂怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(37, '陰方士', '暗', 2, 1, '50萬', 4217, 1, 116, 56, 14, 0, 220, 100, 28, 
        (SELECT id FROM races WHERE name = '獸類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '防禦姿勢 ‧ 暗'),
        (SELECT id FROM leader_skill WHERE name = '野獸之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(38, '幽陵真人', '暗', 3, 2, '100萬', 20408, 1, 270, 132, 33, 5, 435, 202, 55, 
        (SELECT id FROM races WHERE name = '獸類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '防禦姿勢 ‧ 暗'),
        (SELECT id FROM leader_skill WHERE name = '野獸之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(39, '紫微妖仙', '暗', 4, 4, '200萬', 240732, 1, 542, 267, 66, 5, 960, 443, 121, 
        (SELECT id FROM races WHERE name = '獸類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '防禦姿勢 ‧ 暗'),
        (SELECT id FROM leader_skill WHERE name = '野獸之怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(40, '饕餮渾沌魔君', '暗', 5, 9, '250萬', 2500000, 1, 1028, 509, 125, 9, 2271, 1033, 289, 
        (SELECT id FROM races WHERE name = '獸類'),
        (SELECT id FROM series WHERE name = '中國神獸'),
        (SELECT id FROM active_skill WHERE name = '防禦姿勢 ‧ 暗'),
        (SELECT id FROM leader_skill WHERE name = '野獸之狂怒'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(41, '冰花龍', '水', 3, 2, '100萬', 20408, 1, 391, 147, 6, 5, 672, 217, 7, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '防龍'),
        (SELECT id FROM active_skill WHERE name = '水波怒擊'),
        (SELECT id FROM leader_skill WHERE name = '水之防壁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(42, '冰晶龍', '水', 4, 5, '200萬', 500000, 1, 796, 301, 13, 0, 1778, 545, 15, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '防龍'),
        (SELECT id FROM active_skill WHERE name = '水波怒擊'),
        (SELECT id FROM leader_skill WHERE name = '海森護牆'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(43, '冰晶龍王', '水', 5, 9, '400萬', 4000000, 1, 1525, 580, 26, 9, 3489, 1068, 30, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '防龍'),
        (SELECT id FROM active_skill WHERE name = '水波爆擊'),
        (SELECT id FROM leader_skill WHERE name = '海森闇之壁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(44, '洋燭龍', '火', 3, 2, '100萬', 20408, 1, 411, 157, 6, 5, 706, 232, 7, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '防龍'),
        (SELECT id FROM active_skill WHERE name = '火焰怒擊'),
        (SELECT id FROM leader_skill WHERE name = '火之防壁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(45, '星火龍', '火', 4, 5, '200萬', 500000, 1, 837, 322, 12, 0, 1870, 583, 14, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '防龍'),
        (SELECT id FROM active_skill WHERE name = '火焰怒擊'),
        (SELECT id FROM leader_skill WHERE name = '炎海護牆'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(46, '硝鐵火龍', '火', 5, 9, '400萬', 4000000, 1, 1605, 621, 23, 9, 3672, 1142, 26, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '防龍'),
        (SELECT id FROM active_skill WHERE name = '火焰爆撃'),
        (SELECT id FROM leader_skill WHERE name = '炎海聖之壁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(47, '碧甲龍', '木', 3, 2, '100萬', 20408, 1, 452, 135, 6, 5, 777, 200, 7, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '防龍'),
        (SELECT id FROM active_skill WHERE name = '大地怒擊'),
        (SELECT id FROM leader_skill WHERE name = '木之防壁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(48, '碧甲岩龍', '木', 4, 5, '200萬', 500000, 1, 920, 277, 12, 0, 2056, 502, 14, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '防龍'),
        (SELECT id FROM active_skill WHERE name = '大地怒擊'),
        (SELECT id FROM leader_skill WHERE name = '森炎護牆'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(49, '靈山龍龜', '木', 5, 9, '400萬', 4000000, 1, 1764, 534, 24, 9, 4036, 983, 28, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '防龍'),
        (SELECT id FROM active_skill WHERE name = '大地爆擊'),
        (SELECT id FROM leader_skill WHERE name = '森炎闇之壁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(50, '光輝龍', '光', 3, 2, '100萬', 20408, 1, 406, 136, 6, 5, 699, 201, 7, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '防龍'),
        (SELECT id FROM active_skill WHERE name = '閃光怒擊'),
        (SELECT id FROM leader_skill WHERE name = '光之防壁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(51, '閃耀龍', '光', 4, 5, '200萬', 500000, 1, 828, 280, 14, 0, 1852, 507, 16, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '防龍'),
        (SELECT id FROM active_skill WHERE name = '閃光怒擊'),
        (SELECT id FROM leader_skill WHERE name = '聖海護牆'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(52, '聖衡機龍', '光', 5, 9, '400萬', 4000000, 1, 1588, 540, 26, 9, 3635, 994, 30, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '防龍'),
        (SELECT id FROM active_skill WHERE name = '閃光爆撃'),
        (SELECT id FROM leader_skill WHERE name = '聖海森之壁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(53, '無頭龍', '暗', 3, 2, '100萬', 20408, 1, 382, 161, 6, 5, 657, 238, 7, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '防龍'),
        (SELECT id FROM active_skill WHERE name = '暗影怒擊'),
        (SELECT id FROM leader_skill WHERE name = '暗之防壁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(54, '斷頭龍', '暗', 4, 5, '200萬', 500000, 1, 778, 331, 12, 0, 1740, 599, 14, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '防龍'),
        (SELECT id FROM active_skill WHERE name = '暗影怒擊'),
        (SELECT id FROM leader_skill WHERE name = '闇炎護牆'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(55, '魂索邪龍', '暗', 5, 9, '400萬', 4000000, 1, 1493, 638, 24, 9, 3417, 1174, 28, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '防龍'),
        (SELECT id FROM active_skill WHERE name = '暗影爆撃'),
        (SELECT id FROM leader_skill WHERE name = '闇炎聖之壁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(56, '冰原地精', '水', 2, 1, '150萬', 30612, 1, 81, 43, 35, 5, 231, 122, 104, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '地精'),
        (SELECT id FROM active_skill WHERE name = '寒冰一擊'),
        (SELECT id FROM leader_skill WHERE name = '妖精之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(57, '淵寒大地精', '水', 3, 4, '200萬', 500000, 1, 215, 113, 93, 0, 722, 380, 327, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '地精'),
        (SELECT id FROM active_skill WHERE name = '攻擊姿勢 ‧ 水'),
        (SELECT id FROM leader_skill WHERE name = '妖精之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(58, '火山地精', '火', 2, 1, '150萬', 30612, 1, 85, 45, 31, 5, 243, 130, 92, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '地精'),
        (SELECT id FROM active_skill WHERE name = '烈炎一擊'),
        (SELECT id FROM leader_skill WHERE name = '妖精之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(59, '熾岩大地精', '火', 3, 4, '200萬', 500000, 1, 226, 120, 82, 0, 759, 406, 290, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '地精'),
        (SELECT id FROM active_skill WHERE name = '攻擊姿勢 ‧ 火'),
        (SELECT id FROM leader_skill WHERE name = '妖精之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(60, '森林地精', '木', 2, 1, '150萬', 30612, 1, 94, 39, 33, 5, 267, 112, 98, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '地精'),
        (SELECT id FROM active_skill WHERE name = '旋風一擊'),
        (SELECT id FROM leader_skill WHERE name = '妖精之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(61, '碧石大地精', '木', 3, 4, '200萬', 500000, 1, 249, 104, 87, 0, 835, 350, 306, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '地精'),
        (SELECT id FROM active_skill WHERE name = '攻擊姿勢 ‧ 木'),
        (SELECT id FROM leader_skill WHERE name = '妖精之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(62, '光明地精', '光', 2, 1, '150萬', 30612, 1, 84, 40, 36, 5, 241, 114, 107, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '地精'),
        (SELECT id FROM active_skill WHERE name = '金光一擊'),
        (SELECT id FROM leader_skill WHERE name = '妖精之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(63, '輝芒大地精', '光', 3, 4, '200萬', 500000, 1, 224, 105, 95, 0, 752, 354, 336, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '地精'),
        (SELECT id FROM active_skill WHERE name = '攻擊姿勢 ‧ 光'),
        (SELECT id FROM leader_skill WHERE name = '妖精之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(64, '黑暗地精', '暗', 2, 1, '150萬', 30612, 1, 79, 47, 33, 5, 226, 134, 97, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '地精'),
        (SELECT id FROM active_skill WHERE name = '暗色一擊'),
        (SELECT id FROM leader_skill WHERE name = '妖精之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(65, '冥土大地精', '暗', 3, 4, '200萬', 500000, 1, 211, 124, 86, 0, 707, 418, 303, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '地精'),
        (SELECT id FROM active_skill WHERE name = '攻擊姿勢 ‧ 暗'),
        (SELECT id FROM leader_skill WHERE name = '妖精之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(66, '海精靈', '水', 2, 1, '50萬', 10204, 1, 63, 33, 52, 5, 178, 94, 155, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '精靈'),
        (SELECT id FROM active_skill WHERE name = '生命補充'),
        (SELECT id FROM leader_skill WHERE name = '水之制裁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(67, '海躍精靈', '水', 3, 4, '100萬', 250000, 1, 166, 87, 137, 0, 556, 293, 484, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '精靈'),
        (SELECT id FROM active_skill WHERE name = '超級治療'),
        (SELECT id FROM leader_skill WHERE name = '水之制裁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(68, '火精靈', '火', 2, 1, '50萬', 10204, 1, 66, 35, 46, 5, 187, 100, 137, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '精靈'),
        (SELECT id FROM active_skill WHERE name = '生命補充'),
        (SELECT id FROM leader_skill WHERE name = '火之制裁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(69, '火舞精靈', '火', 3, 4, '100萬', 250000, 1, 174, 93, 122, 0, 584, 313, 430, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '精靈'),
        (SELECT id FROM active_skill WHERE name = '超級治療'),
        (SELECT id FROM leader_skill WHERE name = '火之制裁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(70, '花精靈', '木', 2, 1, '50萬', 10204, 1, 72, 29, 48, 5, 206, 86, 144, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '精靈'),
        (SELECT id FROM active_skill WHERE name = '生命補充'),
        (SELECT id FROM leader_skill WHERE name = '木之制裁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(71, '花冠精靈', '木', 3, 4, '100萬', 250000, 1, 191, 80, 128, 0, 642, 269, 452, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '精靈'),
        (SELECT id FROM active_skill WHERE name = '超級治療'),
        (SELECT id FROM leader_skill WHERE name = '木之制裁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(72, '月精靈', '光', 2, 1, '50萬', 10204, 1, 65, 30, 53, 5, 185, 87, 159, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '精靈'),
        (SELECT id FROM active_skill WHERE name = '生命補充'),
        (SELECT id FROM leader_skill WHERE name = '光之制裁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(73, '月光精靈', '光', 3, 4, '100萬', 250000, 1, 173, 81, 142, 0, 579, 272, 497, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '精靈'),
        (SELECT id FROM active_skill WHERE name = '超級治療'),
        (SELECT id FROM leader_skill WHERE name = '光之制裁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(74, '夜精靈', '暗', 2, 1, '50萬', 10204, 1, 61, 36, 48, 5, 175, 103, 143, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '精靈'),
        (SELECT id FROM active_skill WHERE name = '生命補充'),
        (SELECT id FROM leader_skill WHERE name = '暗之制裁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(75, '夜迷精靈', '暗', 3, 4, '100萬', 250000, 1, 162, 95, 127, 0, 544, 321, 448, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '精靈'),
        (SELECT id FROM active_skill WHERE name = '超級治療'),
        (SELECT id FROM leader_skill WHERE name = '暗之制裁'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(76, '冰蜥蜴戰士', '水', 2, 1, '150萬', 30612, 1, 173, 57, 3, 5, 482, 127, 4, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '蜥蜴戰士'),
        (SELECT id FROM active_skill WHERE name = '寒冰一擊'),
        (SELECT id FROM leader_skill WHERE name = '龍之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(77, '冰河蜥蜴戰士', '水', 3, 4, '250萬', 625000, 1, 430, 146, 8, 0, 1510, 390, 10, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '蜥蜴戰士'),
        (SELECT id FROM active_skill WHERE name = '寒冰強擊'),
        (SELECT id FROM leader_skill WHERE name = '龍之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(78, '赤蜥蜴戰士', '火', 2, 1, '150萬', 30612, 1, 181, 61, 3, 5, 506, 136, 4, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '蜥蜴戰士'),
        (SELECT id FROM active_skill WHERE name = '烈炎一擊'),
        (SELECT id FROM leader_skill WHERE name = '龍之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(79, '赤焰蜥蜴戰士', '火', 3, 4, '250萬', 625000, 1, 452, 157, 7, 0, 1589, 418, 9, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '蜥蜴戰士'),
        (SELECT id FROM active_skill WHERE name = '烈炎強擊'),
        (SELECT id FROM leader_skill WHERE name = '龍之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(80, '翠蜥蜴戰士', '木', 2, 1, '150萬', 30612, 1, 199, 52, 3, 5, 556, 117, 4, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '蜥蜴戰士'),
        (SELECT id FROM active_skill WHERE name = '旋風一擊'),
        (SELECT id FROM leader_skill WHERE name = '龍之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(81, '森林蜥蜴戰士', '木', 3, 4, '250萬', 625000, 1, 496, 135, 8, 0, 1746, 360, 10, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '蜥蜴戰士'),
        (SELECT id FROM active_skill WHERE name = '旋風強擊'),
        (SELECT id FROM leader_skill WHERE name = '龍之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(82, '光蜥蜴戰士', '光', 2, 1, '150萬', 30612, 1, 180, 53, 3, 5, 502, 118, 4, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '蜥蜴戰士'),
        (SELECT id FROM active_skill WHERE name = '金光一擊'),
        (SELECT id FROM leader_skill WHERE name = '龍之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(83, '金光蜥蜴戰士', '光', 3, 4, '250萬', 625000, 1, 447, 136, 8, 0, 1573, 363, 10, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '蜥蜴戰士'),
        (SELECT id FROM active_skill WHERE name = '金光強擊'),
        (SELECT id FROM leader_skill WHERE name = '龍之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(84, '暗蜥蜴戰士', '暗', 2, 1, '150萬', 30612, 1, 168, 63, 3, 5, 471, 140, 4, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '蜥蜴戰士'),
        (SELECT id FROM active_skill WHERE name = '暗色一擊'),
        (SELECT id FROM leader_skill WHERE name = '龍之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(85, '漆黑蜥蜴戰士', '暗', 3, 4, '250萬', 625000, 1, 420, 161, 8, 0, 1478, 429, 10, 
        (SELECT id FROM races WHERE name = '龍類'),
        (SELECT id FROM series WHERE name = '蜥蜴戰士'),
        (SELECT id FROM active_skill WHERE name = '暗色強擊'),
        (SELECT id FROM leader_skill WHERE name = '龍之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(86, '小魔女愛莉絲', '水', 2, 1, '100萬', 20408, 1, 104, 60, 20, 5, 284, 163, 55, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '魔法女孩'),
        (SELECT id FROM active_skill WHERE name = '流水連擊'),
        (SELECT id FROM leader_skill WHERE name = '人類之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(87, '占星士愛莉絲', '水', 3, 4, '150萬', 375000, 1, 261, 150, 51, 0, 888, 510, 174, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '魔法女孩'),
        (SELECT id FROM active_skill WHERE name = '流水狂擊'),
        (SELECT id FROM leader_skill WHERE name = '人類之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(88, '小魔女瑪莉曼', '火', 2, 1, '100萬', 20408, 1, 110, 64, 18, 5, 299, 175, 49, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '魔法女孩'),
        (SELECT id FROM active_skill WHERE name = '烈焰連擊'),
        (SELECT id FROM leader_skill WHERE name = '人類之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(89, '火巫女瑪莉曼', '火', 3, 4, '150萬', 375000, 1, 275, 160, 46, 0, 934, 546, 155, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '魔法女孩'),
        (SELECT id FROM active_skill WHERE name = '烈焰狂擊'),
        (SELECT id FROM leader_skill WHERE name = '人類之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(90, '小魔女凱莉絲', '木', 2, 1, '100萬', 20408, 1, 120, 55, 19, 5, 328, 150, 52, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '魔法女孩'),
        (SELECT id FROM active_skill WHERE name = '片葉連擊'),
        (SELECT id FROM leader_skill WHERE name = '人類之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(91, '修道者凱莉絲', '木', 3, 4, '150萬', 375000, 1, 302, 138, 48, 0, 1027, 470, 163, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '魔法女孩'),
        (SELECT id FROM active_skill WHERE name = '片葉狂擊'),
        (SELECT id FROM leader_skill WHERE name = '人類之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(92, '小魔女安迪莉亞', '光', 2, 1, '100萬', 20408, 1, 109, 55, 21, 5, 296, 152, 57, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '魔法女孩'),
        (SELECT id FROM active_skill WHERE name = '光刃連擊'),
        (SELECT id FROM leader_skill WHERE name = '人類之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(93, '傳教士安迪莉亞', '光', 3, 4, '150萬', 375000, 1, 273, 139, 52, 0, 926, 475, 178, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '魔法女孩'),
        (SELECT id FROM active_skill WHERE name = '光刃狂擊'),
        (SELECT id FROM leader_skill WHERE name = '人類之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(94, '小魔女莉莉絲', '暗', 2, 1, '100萬', 20408, 1, 102, 66, 19, 5, 278, 179, 52, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '魔法女孩'),
        (SELECT id FROM active_skill WHERE name = '暗戈連擊'),
        (SELECT id FROM leader_skill WHERE name = '人類之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(95, '鍊金士莉莉絲', '暗', 3, 4, '150萬', 375000, 1, 256, 165, 47, 0, 870, 561, 161, 
        (SELECT id FROM races WHERE name = '人類'),
        (SELECT id FROM series WHERE name = '魔法女孩'),
        (SELECT id FROM active_skill WHERE name = '暗戈狂擊'),
        (SELECT id FROM leader_skill WHERE name = '人類之力'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(96, '水史萊姆', '水', 1, 1, '50萬', 10204, 1, 42, 22, 26, 5, 137, 72, 86, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '史萊姆'),
        (SELECT id FROM active_skill WHERE name = '流水連擊'),
        (SELECT id FROM leader_skill WHERE name = '進擊支援'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(97, '液態史萊姆', '水', 2, 3, '100萬', 87567, 1, 167, 87, 99, 0, 422, 222, 261, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '史萊姆'),
        (SELECT id FROM active_skill WHERE name = '防禦姿勢 ‧ 水'),
        (SELECT id FROM leader_skill WHERE name = '進擊支援'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(98, '火史萊姆', '火', 1, 1, '50萬', 10204, 1, 45, 23, 22, 5, 145, 77, 76, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '史萊姆'),
        (SELECT id FROM active_skill WHERE name = '烈焰連擊'),
        (SELECT id FROM leader_skill WHERE name = '進擊支援'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(99, '燃燒史萊姆', '火', 2, 3, '100萬', 87567, 1, 176, 93, 88, 0, 444, 237, 232, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '史萊姆'),
        (SELECT id FROM active_skill WHERE name = '防禦姿勢 ‧ 火'),
        (SELECT id FROM leader_skill WHERE name = '進擊支援'));

    INSERT INTO cards (id, name, attribute, rarity, cost, exp_curve, max_exp, min_level, min_hp, min_atk, min_rec, max_level, max_hp, max_atk, max_rec, race_id, series_id, active_skill_id, leader_skill_id)
        VALUES(100, '木史萊姆', '木', 1, 1, '50萬', 10204, 1, 49, 20, 23, 5, 159, 66, 80, 
        (SELECT id FROM races WHERE name = '妖精類'),
        (SELECT id FROM series WHERE name = '史萊姆'),
        (SELECT id FROM active_skill WHERE name = '片葉連擊'),
        (SELECT id FROM leader_skill WHERE name = '進擊支援'));

    