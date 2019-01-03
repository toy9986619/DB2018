INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            1, NULL, 1);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            2, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 1) AS t), 2);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            3, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 2) AS t), 3);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            4, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 3) AS t), 4);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            5, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 4) AS t), 408);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            6, NULL, 5);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            7, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 5) AS t), 6);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            8, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 6) AS t), 7);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            9, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 7) AS t), 8);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            10, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 8) AS t), 409);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            11, NULL, 9);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            12, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 9) AS t), 10);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            13, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 10) AS t), 11);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            14, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 11) AS t), 12);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            15, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 12) AS t), 410);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            16, NULL, 13);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            17, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 13) AS t), 14);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            18, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 14) AS t), 15);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            19, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 15) AS t), 16);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            20, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 16) AS t), 411);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            21, NULL, 17);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            22, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 17) AS t), 18);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            23, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 18) AS t), 19);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            24, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 19) AS t), 20);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            25, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 20) AS t), 412);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            26, NULL, 21);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            27, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 21) AS t), 22);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            28, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 22) AS t), 23);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            29, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 23) AS t), 24);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            30, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 24) AS t), 511);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            31, NULL, 25);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            32, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 25) AS t), 26);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            33, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 26) AS t), 27);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            34, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 27) AS t), 28);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            35, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 28) AS t), 512);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            36, NULL, 29);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            37, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 29) AS t), 30);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            38, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 30) AS t), 31);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            39, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 31) AS t), 32);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            40, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 32) AS t), 513);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            41, NULL, 33);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            42, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 33) AS t), 34);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            43, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 34) AS t), 35);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            44, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 35) AS t), 36);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            45, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 36) AS t), 514);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            46, NULL, 37);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            47, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 37) AS t), 38);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            48, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 38) AS t), 39);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            49, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 39) AS t), 40);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            50, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 40) AS t), 515);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            51, NULL, 41);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            52, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 41) AS t), 42);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            53, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 42) AS t), 43);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            54, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 43) AS t), 1316);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            55, NULL, 44);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            56, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 44) AS t), 45);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            57, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 45) AS t), 46);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            58, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 46) AS t), 1317);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            59, NULL, 47);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            60, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 47) AS t), 48);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            61, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 48) AS t), 49);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            62, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 49) AS t), 1318);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            63, NULL, 50);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            64, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 50) AS t), 51);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            65, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 51) AS t), 52);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            66, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 52) AS t), 1319);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            67, NULL, 53);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            68, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 53) AS t), 54);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            69, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 54) AS t), 55);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            70, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 55) AS t), 1320);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            71, NULL, 56);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            72, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 56) AS t), 57);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            73, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 57) AS t), 451);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            74, NULL, 58);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            75, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 58) AS t), 59);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            76, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 59) AS t), 452);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            77, NULL, 60);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            78, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 60) AS t), 61);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            79, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 61) AS t), 453);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            80, NULL, 62);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            81, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 62) AS t), 63);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            82, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 63) AS t), 454);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            83, NULL, 64);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            84, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 64) AS t), 65);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            85, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 65) AS t), 455);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            86, NULL, 66);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            87, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 66) AS t), 67);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            88, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 67) AS t), 334);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            89, NULL, 68);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            90, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 68) AS t), 69);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            91, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 69) AS t), 335);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            92, NULL, 70);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            93, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 70) AS t), 71);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            94, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 71) AS t), 336);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            95, NULL, 72);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            96, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 72) AS t), 73);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            97, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 73) AS t), 337);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            98, NULL, 74);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            99, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 74) AS t), 75);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            100, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 75) AS t), 338);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            101, NULL, 76);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            102, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 76) AS t), 77);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            103, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 77) AS t), 339);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            104, NULL, 78);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            105, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 78) AS t), 79);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            106, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 79) AS t), 340);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            107, NULL, 80);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            108, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 80) AS t), 81);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            109, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 81) AS t), 341);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            110, NULL, 82);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            111, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 82) AS t), 83);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            112, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 83) AS t), 342);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            113, NULL, 84);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            114, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 84) AS t), 85);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            115, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 85) AS t), 343);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            116, NULL, 86);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            117, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 86) AS t), 87);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            118, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 87) AS t), 456);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            119, NULL, 88);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            120, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 88) AS t), 89);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            121, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 89) AS t), 457);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            122, NULL, 90);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            123, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 90) AS t), 91);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            124, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 91) AS t), 458);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            125, NULL, 92);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            126, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 92) AS t), 93);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            127, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 93) AS t), 459);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            128, NULL, 94);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            129, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 94) AS t), 95);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            130, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 95) AS t), 460);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            131, NULL, 96);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            132, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 96) AS t), 97);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            133, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 97) AS t), 329);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            134, NULL, 98);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            135, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 98) AS t), 99);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            136, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 99) AS t), 330);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            137, NULL, 100);
INSERT INTO evolution (id, parent_id, data_card_id) VALUES (
            138, (SELECT * FROM (SELECT id FROM evolution WHERE data_card_id = 100) AS t), 101);
