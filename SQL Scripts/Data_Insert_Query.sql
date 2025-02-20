-- organisations
select 'Inserting organisations';
INSERT INTO organisations (org_id, name, type)
VALUES (1, 'Division', 'Private');
INSERT INTO organisations (org_id, name, type)
VALUES (
        2,
        'Anbu Black Ops',
        'Mafia'
    );
INSERT INTO organisations (org_id, name, type)
VALUES (3, 'Akatsuki', 'Private');
INSERT INTO organisations (org_id, name, type)
VALUES (
        4,
        'The Fraternity',
        'Private'
    );
INSERT INTO organisations (org_id, name, type)
VALUES (5, 'The Brotherhood', 'NGO');
INSERT INTO organisations (org_id, name, type)
VALUES (
        6,
        'The International Contract Agency',
        'Cartel'
    );
INSERT INTO organisations (org_id, name, type)
VALUES (7, 'Leonard Inc', 'Private');
INSERT INTO organisations (org_id, name, type)
VALUES (
        8,
        'Collier-Dyer',
        'Terrorist'
    );
INSERT INTO organisations (org_id, name, type)
VALUES (9, 'Norton-Castillo', 'NGO');
INSERT INTO organisations (org_id, name, type)
VALUES (
        10,
        'Torres, Aguilar and Jones',
        'Cartel'
    );


-- beans
select 'Inserting beans';
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        1,
        'Killer Bean',
        5,
        'Belize',
        'Semi-pro'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        2,
        'Hit',
        3,
        'South Africa',
        'Semi-pro'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        3,
        'ATCMember',
        9,
        'Syrian Arab Republic',
        'Semi-pro'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        4,
        'Agent 47',
        8,
        'Lithuania',
        'Master'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        5,
        'The Jackal',
        5,
        'Egypt',
        'Semi-pro'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        6,
        'Jack the Reaper',
        9,
        'Cocos (Keeling) Islands',
        'Semi-pro'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        7,
        'jesusgallagher',
        1,
        'Luxembourg',
        'Semi-pro'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        8,
        'qcraig',
        7,
        'Lao Peoples Democratic Republic',
        'Street Level'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        9,
        'james62',
        1,
        'Gibraltar',
        'Master'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        10,
        'mbailey',
        9,
        'Estonia',
        'Semi-pro'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        11,
        'wrichardson',
        1,
        'Turkmenistan',
        'Semi-pro'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        12,
        'sheryldean',
        4,
        'Chad',
        'Street Level'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        13,
        'mark57',
        9,
        'Cote dIvoire',
        'Master'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        14,
        'meganbecker',
        9,
        'Tuvalu',
        'Semi-pro'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        15,
        'aaron97',
        1,
        'Burundi',
        'Street Level'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        16,
        'hortongregory',
        3,
        'Cape Verde',
        'Street Level'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        17,
        'middletoneric',
        2,
        'Martinique',
        'Semi-pro'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        18,
        'thomas03',
        1,
        'Korea',
        'Semi-pro'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        19,
        'jasonrodriguez',
        8,
        'Zimbabwe',
        'Master'
    );
INSERT INTO beans (
        bean_id,
        alias,
        org_id,
        origin,
        skill_level
    )
VALUES (
        20,
        'ashley43',
        9,
        'Algeria',
        'Street Level'
    );

-- specialisations
SELECT 'Inserting specialisations';
INSERT INTO specialisations (spec_id, spec_name)
VALUES (1, 'Master Strategist');
INSERT INTO specialisations (spec_id, spec_name)
VALUES (2, 'Covert Operative');
INSERT INTO specialisations (spec_id, spec_name)
VALUES (3, 'Disguise Expert');
INSERT INTO specialisations (spec_id, spec_name)
VALUES (4, 'Demolitions Specialist');
INSERT INTO specialisations (spec_id, spec_name)
VALUES (5, 'Silent Assassin');
INSERT INTO specialisations (spec_id, spec_name)
VALUES (6, 'Sniper Specialist');
INSERT INTO specialisations (spec_id, spec_name)
VALUES (7, 'Hand-to-Hand Combatant');
INSERT INTO specialisations (spec_id, spec_name)
VALUES (8, 'Espionage Expert');
INSERT INTO specialisations (spec_id, spec_name)
VALUES (9, 'Cyber Warfare Specialist');
INSERT INTO specialisations (spec_id, spec_name)
VALUES (10, 'Extraction Specialist');

-- spec_bean
select 'Inserting spec_bean';
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (8, 7);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (6, 2);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (18, 9);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (3, 8);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (10, 3);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (2, 2);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (16, 9);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (5, 9);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (9, 3);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (12, 7);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (5, 6);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (19, 5);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (14, 4);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (1, 1);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (13, 8);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (7, 5);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (5, 1);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (7, 2);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (6, 8);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (20, 9);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (13, 4);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (1, 9);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (16, 8);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (6, 5);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (8, 8);
INSERT INTO spec_bean (bean_id, spec_id)
VALUES (14, 1);

-- locations
select 'Inserting locations';
INSERT INTO locations (
        location_id,
        location_name,
        latitude,
        longitude,
        details
    )
VALUES (
        1,
        'Port Seanborough',
        -4.024732,
        152.94682,
        'Earth C-137'
    );
INSERT INTO locations (
        location_id,
        location_name,
        latitude,
        longitude,
        details
    )
VALUES (
        2,
        'Lake Albertmouth',
        -25.97509,
        -121.930715,
        '29012 Todd Cliff Apt. 476 Christianshire, AZ 01398'
    );
INSERT INTO locations (
        location_id,
        location_name,
        latitude,
        longitude,
        details
    )
VALUES (
        3,
        'New Vanessa',
        20.134306,
        -152.290675,
        'PSC 7296, Box 6974 APO AA 45457'
    );
INSERT INTO locations (
        location_id,
        location_name,
        latitude,
        longitude,
        details
    )
VALUES (
        4,
        'Danielchester',
        -85.564014,
        -71.611262,
        '85845 Herman Port Port Christopher, MI 64496'
    );
INSERT INTO locations (
        location_id,
        location_name,
        latitude,
        longitude,
        details
    )
VALUES (
        5,
        'Millerbury',
        28.934238,
        150.380369,
        '27354 Jeremy Radial Robersonside, AR 03545'
    );
INSERT INTO locations (
        location_id,
        location_name,
        latitude,
        longitude,
        details
    )
VALUES (
        6,
        'Lake Tylerton',
        14.912364,
        -159.84424,
        '08975 Peterson Haven Port Wayneberg, NC 11932'
    );
INSERT INTO locations (
        location_id,
        location_name,
        latitude,
        longitude,
        details
    )
VALUES (
        7,
        'West Robert',
        7.446633,
        -137.695054,
        '04761 Margaret Stream Coryview, IN 53871'
    );
INSERT INTO locations (
        location_id,
        location_name,
        latitude,
        longitude,
        details
    )
VALUES (
        8,
        'East Nicolestad',
        62.360095,
        78.791848,
        'USNV Meza FPO AE 62276'
    );
INSERT INTO locations (
        location_id,
        location_name,
        latitude,
        longitude,
        details
    )
VALUES (
        9,
        'North Timothyville',
        -82.759312,
        -52.178474,
        '2822 Sydney Villages West Marcus, MA 48225'
    );
INSERT INTO locations (
        location_id,
        location_name,
        latitude,
        longitude,
        details
    )
VALUES (
        10,
        'Andrewborough',
        63.782588,
        123.310286,
        '72421 Evans Estate Huffmanfurt, PR 68577'
    );

-- targets
SELECT 'Inserting targets';
INSERT INTO targets (target_id, description, target_image_url, target_name)
VALUES 
    (1, 'Tech enthusiast and speaker.', 'https://nodejsone.com/wp-content/uploads/2022/08/NodeJsOne-Africa-2022-Rudolph-Esterhuysen.jpg', 'Rudolph Esterhuysen'),
    (2, 'A powerful Saiyan warrior.', 'https://wallpaperaccess.com/full/4871782.jpg', 'Goku'),
    (3, 'Innovative entrepreneur.', 'https://th.bing.com/th/id/R.7f74cdafb3416c87fcf605e66f4c12fd?rik=20zeF75LZuhQ7Q&riu=http%3a%2f%2fwww.thefamouspeople.com%2fprofiles%2fimages%2felon-musk-1.jpg&ehk=bGWEbcsdoxqEEwaNuveQSXmdQ1%2b%2bOFWRbnwdiGtgLoM%3d&risl=&pid=ImgRaw&r=0', 'Elon Musk'),
    (4, 'Eccentric scientist and genius.', 'https://th.bing.com/th/id/R.73e6b64849ba8e456b3569c9076aabc7?rik=MkpP8x8uw%2beiDg&pid=ImgRaw&r=0', 'Rick Sanchez'),
    (5, 'Software developer.', 'https://picsum.photos/126/858', 'David Clements'),
    (6, 'Animal lover and artist.', 'https://placekitten.com/285/402', 'Tracy Smith'),
    (7, 'Marketing specialist.', 'https://picsum.photos/846/331', 'Jacqueline Thompson'),
    (8, 'Aspiring chef and baker.', 'https://placekitten.com/865/130', 'Tina Cooper'),
    (9, 'Photographer and traveler.', 'https://picsum.photos/42/465', 'Rebecca Ellis'),
    (10, 'Fashion designer.', 'https://dummyimage.com/105x309', 'Sabrina Sharp'),
    (11, 'Fitness coach.', 'https://dummyimage.com/946x843', 'Shane Hood'),
    (12, 'Musician and songwriter.', 'https://picsum.photos/61/206', 'Thomas Fleming'),
    (13, 'Film director.', 'https://dummyimage.com/376x904', 'Timothy Pope'),
    (14, 'Journalist and writer.', 'https://picsum.photos/498/641', 'Melinda Odom'),
    (15, 'Cybersecurity expert.', 'https://dummyimage.com/478x461', 'John Reese'),
    (16, 'Veterinarian.', 'https://placekitten.com/186/578', 'Nicholas Martin'),
    (17, 'Medical doctor.', 'https://placekitten.com/469/259', 'Johnny Bender MD'),
    (18, 'Entrepreneur and investor.', 'https://dummyimage.com/941x719', 'Savannah Rush'),
    (19, 'Teacher and mentor.', 'https://picsum.photos/163/677', 'Dawn Rogers'),
    (20, 'Architect and designer.', 'https://dummyimage.com/312x96', 'John Welch');

-- clients
select 'Inserting clients';
INSERT INTO clients (client_id, alias)
VALUES (1, 'Kakarot');
INSERT INTO clients (client_id, alias)
VALUES (2, 'angela72');
INSERT INTO clients (client_id, alias)
VALUES (3, 'tony90');
INSERT INTO clients (client_id, alias)
VALUES (4, 'hollywatson');
INSERT INTO clients (client_id, alias)
VALUES (5, 'terryjohnson');
INSERT INTO clients (client_id, alias)
VALUES (6, 'gmurray');
INSERT INTO clients (client_id, alias)
VALUES (7, 'angelica19');
INSERT INTO clients (client_id, alias)
VALUES (8, 'fernandorogers');
INSERT INTO clients (client_id, alias)
VALUES (9, 'emilythompson');
INSERT INTO clients (client_id, alias)
VALUES (10, 'adamsthomas');

-- contracts
select 'Inserting contracts';
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (1, 2, 1, '2020-10-18', '2025-02-28', 'Cancelled');
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (2, 8, 9, '2024-02-12', '2025-02-17', 'Active');
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (3, 3, 2, '2024-02-08', '2025-02-27', 'Completed');
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (
        4,
        8,
        10,
        '2020-01-09',
        '2025-03-16',
        'Completed'
    );
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (5, 3, 5, '2021-09-26', '2025-03-10', 'Completed');
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (6, 6, 9, '2023-12-18', '2025-03-08', 'Cancelled');
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (7, 5, 6, '2024-06-21', '2025-03-03', 'Completed');
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (8, 4, 7, '2022-03-04', '2025-02-28', 'Completed');
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (9, 7, 9, '2024-12-14', '2025-02-21', 'Completed');
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (10, 9, 8, '2024-07-14', '2025-03-09', 'Active');
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (
        11,
        10,
        6,
        '2024-10-12',
        '2025-02-27',
        'Completed'
    );
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (12, 7, 3, '2024-08-18', '2025-03-07', 'Active');
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (
        13,
        10,
        9,
        '2024-04-09',
        '2025-03-16',
        'Cancelled'
    );
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (
        14,
        3,
        2,
        '2021-01-02',
        '2025-02-28',
        'Cancelled'
    );
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (15, 2, 5, '2023-06-02', '2025-02-24', 'Active');
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (
        16,
        6,
        3,
        '2020-07-12',
        '2025-03-15',
        'Cancelled'
    );
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (
        17,
        8,
        9,
        '2025-01-03',
        '2025-03-11',
        'Completed'
    );
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (18, 1, 2, '2023-05-10', '2025-03-15', 'Active');
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (
        19,
        9,
        2,
        '2023-01-20',
        '2025-02-19',
        'Completed'
    );
INSERT INTO contracts (
        contract_id,
        organisation_id,
        client_id,
        start_date,
        end_date,
        status
    )
VALUES (
        20,
        6,
        5,
        '2021-09-26',
        '2025-02-17',
        'Cancelled'
    );

-- payments 
select 'Inserting payments';
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (1, 374.83, 882.58, 499.35, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (2, 366.84, 576.28, 366.95, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (3, 344.71, 341.84, 221.88, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (4, 701.95, 627.54, 572.38, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (5, 778.71, 129.68, 331.83, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (6, 438.28, 731.27, 973.34, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (7, 226.25, 683.97, 812.81, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (8, 692.69, 277.16, 414.67, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (9, 366.31, 450.93, 758.4, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (10, 118.88, 740.71, 738.68, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (11, 198.09, 884.68, 267.84, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (12, 794.22, 437.82, 723.31, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (13, 521.56, 528.9, 944.65, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (14, 467.69, 914.04, 384.95, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (15, 991.92, 279.61, 664.08, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (16, 921.02, 668.78, 130.64, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (17, 254.84, 609.2, 191.77, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (18, 969.4, 800.25, 817.37, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (19, 998.41, 250.63, 634.13, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status)
VALUES (20, 238.62, 152.32, 383.18, 'Completed');

-- weapons
SELECT 'Inserting weapons';
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (1, 'Desert Eagle', 'Pistol', 3334.59);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (2, 'Colt 1911', 'Pistol', 4853.89);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (3, 'MP5', 'SMG', 1241.72);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (4, 'AK-47', 'Rifle', 3835.85);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (5, 'Barrett M82', 'Sniper', 4262.67);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (6, 'Remington 700', 'Sniper', 4083.7);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (7, 'Dragunov', 'Sniper', 4476.59);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (8, 'Glock 17', 'Pistol', 2947.53);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (9, 'SIG Sauer P226', 'Pistol', 3848.12);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (10, 'M4A1', 'Rifle', 958.51);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (11, 'FN SCAR', 'Rifle', 2852.87);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (12, 'Beretta M9', 'Pistol', 4929.88);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (13, 'FAMAS', 'Rifle', 2937.48);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (14, 'UMP45', 'SMG', 3548.38);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (15, 'Walther PPK', 'Pistol', 2591.16);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (16, 'CZ 75', 'Pistol', 4838.71);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (17, 'Steyr AUG', 'Rifle', 4710.27);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (18, 'HK USP', 'Pistol', 4988.93);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (19, 'Galil ACE', 'Rifle', 2347.23);
INSERT INTO weapons (weapon_id, name, type, cost)
VALUES (20, 'P90', 'SMG', 1685.25);

-- suppliers
select 'Inserting suppliers';
INSERT INTO suppliers (supplier_id, name, contact_number)
VALUES (
        1,
        'Castillo, Harrell and Crosby',
        '+1-961-661-3376'
    );
INSERT INTO suppliers (supplier_id, name, contact_number)
VALUES (2, 'Alexander-Ortiz', '534.614.7573');
INSERT INTO suppliers (supplier_id, name, contact_number)
VALUES (
        3,
        'Strickland, Thompson and Watts',
        '001-710-393-2577x612'
    );
INSERT INTO suppliers (supplier_id, name, contact_number)
VALUES (4, 'Hart, Rogers and Lewis', '+1-840-622-5401');
INSERT INTO suppliers (supplier_id, name, contact_number)
VALUES (5, 'Love, Parker and Hanna', '6433222560');
INSERT INTO suppliers (supplier_id, name, contact_number)
VALUES (6, 'Potts-Curry', '(238)710-0958x8822');
INSERT INTO suppliers (supplier_id, name, contact_number)
VALUES (7, 'Pruitt, Black and Prince', '(269)279-1650');
INSERT INTO suppliers (supplier_id, name, contact_number)
VALUES (8, 'Moody Inc', '+1-878-318-0969x5741');
INSERT INTO suppliers (supplier_id, name, contact_number)
VALUES (
        9,
        'Brown, Marshall and Hall',
        '001-509-765-2692'
    );
INSERT INTO suppliers (supplier_id, name, contact_number)
VALUES (
        10,
        'Delgado, Lewis and Campbell',
        '(906)977-8808'
    );


-- weapons_suppliers
select 'Inserting weapons_suppliers';
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (9, 20);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (10, 15);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (7, 7);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (6, 2);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (4, 4);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (4, 13);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (2, 12);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (10, 2);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (3, 20);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (7, 10);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (5, 16);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (6, 7);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (1, 7);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (7, 9);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (6, 3);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (9, 4);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (6, 8);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (3, 14);
INSERT INTO weapons_suppliers (supplier_id, weapon_id)
VALUES (8, 9);


-- hits
select 'Inserting hits';
INSERT INTO hits (
        hit_id,
        target_id,
        bean_id,
        contract_id,
        hit_start_date,
        hit_due_date,
        status,
        payment_id,
        location_id
    )
VALUES (
        1,
        1,
        3,
        13,
        '2025-01-04',
        '2025-02-17',
        'Failed',
        1,
        5
    );
INSERT INTO hits (
        hit_id,
        target_id,
        bean_id,
        contract_id,
        hit_start_date,
        hit_due_date,
        status,
        payment_id,
        location_id
    )
VALUES (
        2,
        2,
        2,
        1,
        '2025-02-01',
        '2025-03-08',
        'Scheduled',
        2,
        10
    );
INSERT INTO hits (
        hit_id,
        target_id,
        bean_id,
        contract_id,
        hit_start_date,
        hit_due_date,
        status,
        payment_id,
        location_id
    )
VALUES (
        3,
        3,
        7,
        10,
        '2025-01-06',
        '2025-02-23',
        'Completed',
        3,
        3
    );
INSERT INTO hits (
        hit_id,
        target_id,
        bean_id,
        contract_id,
        hit_start_date,
        hit_due_date,
        status,
        payment_id,
        location_id
    )
VALUES (
        4,
        12,
        8,
        13,
        '2025-01-07',
        '2025-03-09',
        'Active',
        4,
        6
    );
INSERT INTO hits (
        hit_id,
        target_id,
        bean_id,
        contract_id,
        hit_start_date,
        hit_due_date,
        status,
        payment_id,
        location_id
    )
VALUES (
        5,
        4,
        2,
        14,
        '2025-01-21',
        '2025-03-08',
        'Completed',
        5,
        2
    );
INSERT INTO hits (
        hit_id,
        target_id,
        bean_id,
        contract_id,
        hit_start_date,
        hit_due_date,
        status,
        payment_id,
        location_id
    )
VALUES (
        6,
        19,
        7,
        8,
        '2025-01-13',
        '2025-02-23',
        'Active',
        6,
        1
    );
INSERT INTO hits (
        hit_id,
        target_id,
        bean_id,
        contract_id,
        hit_start_date,
        hit_due_date,
        status,
        payment_id,
        location_id
    )
VALUES (
        8,
        9,
        20,
        7,
        '2025-02-11',
        '2025-02-28',
        'Failed',
        8,
        7
    );
INSERT INTO hits (
        hit_id,
        target_id,
        bean_id,
        contract_id,
        hit_start_date,
        hit_due_date,
        status,
        payment_id,
        location_id
    )
VALUES (
        11,
        14,
        7,
        6,
        '2025-02-04',
        '2025-02-19',
        'Failed',
        11,
        4
    );
INSERT INTO hits (
        hit_id,
        target_id,
        bean_id,
        contract_id,
        hit_start_date,
        hit_due_date,
        status,
        payment_id,
        location_id
    )
VALUES (
        12,
        7,
        4,
        20,
        '2025-01-30',
        '2025-03-08',
        'Completed',
        12,
        7
    );
INSERT INTO hits (
        hit_id,
        target_id,
        bean_id,
        contract_id,
        hit_start_date,
        hit_due_date,
        status,
        payment_id,
        location_id
    )
VALUES (
        13,
        13,
        9,
        12,
        '2025-02-13',
        '2025-02-28',
        'Failed',
        13,
        8
    );
INSERT INTO hits (
        hit_id,
        target_id,
        bean_id,
        contract_id,
        hit_start_date,
        hit_due_date,
        status,
        payment_id,
        location_id
    )
VALUES (
        15,
        14,
        12,
        16,
        '2025-01-30',
        '2025-03-02',
        'Completed',
        15,
        9
    );
INSERT INTO hits (
        hit_id,
        target_id,
        bean_id,
        contract_id,
        hit_start_date,
        hit_due_date,
        status,
        payment_id,
        location_id
    )
VALUES (
        16,
        2,
        13,
        8,
        '2025-01-25',
        '2025-03-11',
        'Completed',
        16,
        7
    );
INSERT INTO hits (
        hit_id,
        target_id,
        bean_id,
        contract_id,
        hit_start_date,
        hit_due_date,
        status,
        payment_id,
        location_id
    )
VALUES (
        20,
        9,
        10,
        8,
        '2025-01-02',
        '2025-03-02',
        'Completed',
        20,
        6
    );


INSERT INTO currency_values (
    fertilizer,
    soil,
    nitrates
)
VALUES (
    2,
    1,
    0.5
);