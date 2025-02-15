-- organisations
INSERT INTO organisations (org_id, name, type) VALUES (1, 'Howard, Rodriguez and Price', 'Private');
INSERT INTO organisations (org_id, name, type) VALUES (2, 'Watson-Ellis', 'Government');
INSERT INTO organisations (org_id, name, type) VALUES (3, 'Hudson, Miles and Sanchez', 'Private');
INSERT INTO organisations (org_id, name, type) VALUES (4, 'Rowe, Thompson and Brown', 'Private');
INSERT INTO organisations (org_id, name, type) VALUES (5, 'Espinoza-Sanchez', 'NGO');
INSERT INTO organisations (org_id, name, type) VALUES (6, 'Baldwin-Quinn', 'Government');
INSERT INTO organisations (org_id, name, type) VALUES (7, 'Leonard Inc', 'Private');
INSERT INTO organisations (org_id, name, type) VALUES (8, 'Collier-Dyer', 'Government');
INSERT INTO organisations (org_id, name, type) VALUES (9, 'Norton-Castillo', 'NGO');
INSERT INTO organisations (org_id, name, type) VALUES (10, 'Torres, Aguilar and Jones', 'NGO');

-- beans
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (1, 'kelleycindy', 5, 'Belize', 'Intermediate');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (2, 'victoria56', 3, 'Denmark', 'Intermediate');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (3, 'john88', 9, 'Syrian Arab Republic', 'Intermediate');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (4, 'allenjulie', 8, 'Lithuania', 'Expert');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (5, 'robertowaters', 5, 'Egypt', 'Intermediate');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (6, 'xhall', 9, 'Cocos (Keeling) Islands', 'Intermediate');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (7, 'jesusgallagher', 1, 'Luxembourg', 'Intermediate');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (8, 'qcraig', 7, 'Lao Peoples Democratic Republic', 'Beginner');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (9, 'james62', 1, 'Gibraltar', 'Expert');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (10, 'mbailey', 9, 'Estonia', 'Intermediate');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (11, 'wrichardson', 1, 'Turkmenistan', 'Intermediate');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (12, 'sheryldean', 4, 'Chad', 'Beginner');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (13, 'mark57', 9, 'Cote dIvoire', 'Expert');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (14, 'meganbecker', 9, 'Tuvalu', 'Intermediate');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (15, 'aaron97', 1, 'Burundi', 'Beginner');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (16, 'hortongregory', 3, 'Cape Verde', 'Beginner');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (17, 'middletoneric', 2, 'Martinique', 'Intermediate');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (18, 'thomas03', 1, 'Korea', 'Intermediate');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (19, 'jasonrodriguez', 8, 'Zimbabwe', 'Expert');
INSERT INTO beans (bean_id, alias, org_id, origin, skill_level) VALUES (20, 'ashley43', 9, 'Algeria', 'Beginner');

-- specialisations
INSERT INTO specialisations (spec_id, spec_name) VALUES (1, 'Planning and development surveyor');
INSERT INTO specialisations (spec_id, spec_name) VALUES (2, 'Estate manager/land agent');
INSERT INTO specialisations (spec_id, spec_name) VALUES (3, 'Museum/gallery curator');
INSERT INTO specialisations (spec_id, spec_name) VALUES (4, 'Civil engineer, consulting');
INSERT INTO specialisations (spec_id, spec_name) VALUES (5, 'Ecologist');
INSERT INTO specialisations (spec_id, spec_name) VALUES (6, 'Airline pilot');
INSERT INTO specialisations (spec_id, spec_name) VALUES (7, 'Sound technician, broadcasting/film/video');
INSERT INTO specialisations (spec_id, spec_name) VALUES (8, 'Theatre stage manager');
INSERT INTO specialisations (spec_id, spec_name) VALUES (9, 'Fashion designer');
INSERT INTO specialisations (spec_id, spec_name) VALUES (10, 'Charity fundraiser');


-- spec_bean
INSERT INTO spec_bean (bean_id, spec_id) VALUES (8, 7);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (6, 2);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (18, 9);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (3, 8);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (10, 3);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (2, 2);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (16, 9);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (5, 9);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (9, 3);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (12, 7);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (5, 6);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (19, 5);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (14, 4);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (1, 1);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (13, 8);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (7, 5);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (5, 1);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (7, 2);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (6, 8);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (20, 9);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (13, 4);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (1, 9);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (16, 8);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (6, 5);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (8, 8);
INSERT INTO spec_bean (bean_id, spec_id) VALUES (14, 1);


-- locations 
INSERT INTO locations (location_id, location_name, latitude, longitude, details) VALUES (1, 'Port Seanborough', -4.024732, 152.94682, 'USNS Banks FPO AE 66422');
INSERT INTO locations (location_id, location_name, latitude, longitude, details) VALUES (2, 'Lake Albertmouth', -25.97509, -121.930715, '29012 Todd Cliff Apt. 476 Christianshire, AZ 01398');
INSERT INTO locations (location_id, location_name, latitude, longitude, details) VALUES (3, 'New Vanessa', 20.134306, -152.290675, 'PSC 7296, Box 6974 APO AA 45457');
INSERT INTO locations (location_id, location_name, latitude, longitude, details) VALUES (4, 'Danielchester', -85.564014, -71.611262, '85845 Herman Port Port Christopher, MI 64496');
INSERT INTO locations (location_id, location_name, latitude, longitude, details) VALUES (5, 'Millerbury', 28.934238, 150.380369, '27354 Jeremy Radial Robersonside, AR 03545');
INSERT INTO locations (location_id, location_name, latitude, longitude, details) VALUES (6, 'Lake Tylerton', 14.912364, -159.84424, '08975 Peterson Haven Port Wayneberg, NC 11932');
INSERT INTO locations (location_id, location_name, latitude, longitude, details) VALUES (7, 'West Robert', 7.446633, -137.695054, '04761 Margaret Stream Coryview, IN 53871');
INSERT INTO locations (location_id, location_name, latitude, longitude, details) VALUES (8, 'East Nicolestad', 62.360095, 78.791848, 'USNV Meza FPO AE 62276');
INSERT INTO locations (location_id, location_name, latitude, longitude, details) VALUES (9, 'North Timothyville', -82.759312, -52.178474, '2822 Sydney Villages West Marcus, MA 48225');
INSERT INTO locations (location_id, location_name, latitude, longitude, details) VALUES (10, 'Andrewborough', 63.782588, 123.310286, '72421 Evans Estate Huffmanfurt, PR 68577');

-- targets 
INSERT INTO targets (target_id, description, target_image_url) VALUES (1, 'Kelsey Jackson', 'https://dummyimage.com/136x151');
INSERT INTO targets (target_id, description, target_image_url) VALUES (2, 'Mark Carroll', 'https://placekitten.com/940/103');
INSERT INTO targets (target_id, description, target_image_url) VALUES (3, 'Dennis Green', 'https://dummyimage.com/182x401');
INSERT INTO targets (target_id, description, target_image_url) VALUES (4, 'Veronica Miller', 'https://dummyimage.com/133x879');
INSERT INTO targets (target_id, description, target_image_url) VALUES (5, 'David Clements', 'https://picsum.photos/126/858');
INSERT INTO targets (target_id, description, target_image_url) VALUES (6, 'Tracy Smith', 'https://placekitten.com/285/402');
INSERT INTO targets (target_id, description, target_image_url) VALUES (7, 'Jacqueline Thompson', 'https://picsum.photos/846/331');
INSERT INTO targets (target_id, description, target_image_url) VALUES (8, 'Tina Cooper', 'https://placekitten.com/865/130');
INSERT INTO targets (target_id, description, target_image_url) VALUES (9, 'Rebecca Ellis', 'https://picsum.photos/42/465');
INSERT INTO targets (target_id, description, target_image_url) VALUES (10, 'Sabrina Sharp', 'https://dummyimage.com/105x309');
INSERT INTO targets (target_id, description, target_image_url) VALUES (11, 'Shane Hood', 'https://dummyimage.com/946x843');
INSERT INTO targets (target_id, description, target_image_url) VALUES (12, 'Thomas Fleming', 'https://picsum.photos/61/206');
INSERT INTO targets (target_id, description, target_image_url) VALUES (13, 'Timothy Pope', 'https://dummyimage.com/376x904');
INSERT INTO targets (target_id, description, target_image_url) VALUES (14, 'Melinda Odom', 'https://picsum.photos/498/641');
INSERT INTO targets (target_id, description, target_image_url) VALUES (15, 'John Reese', 'https://dummyimage.com/478x461');
INSERT INTO targets (target_id, description, target_image_url) VALUES (16, 'Nicholas Martin', 'https://placekitten.com/186/578');
INSERT INTO targets (target_id, description, target_image_url) VALUES (17, 'Johnny Bender MD', 'https://placekitten.com/469/259');
INSERT INTO targets (target_id, description, target_image_url) VALUES (18, 'Savannah Rush', 'https://dummyimage.com/941x719');
INSERT INTO targets (target_id, description, target_image_url) VALUES (19, 'Dawn Rogers', 'https://picsum.photos/163/677');
INSERT INTO targets (target_id, description, target_image_url) VALUES (20, 'John Welch', 'https://dummyimage.com/312x96');

-- clients
INSERT INTO clients (client_id, alias) VALUES (1, 'wendyhayes');
INSERT INTO clients (client_id, alias) VALUES (2, 'angela72');
INSERT INTO clients (client_id, alias) VALUES (3, 'tony90');
INSERT INTO clients (client_id, alias) VALUES (4, 'hollywatson');
INSERT INTO clients (client_id, alias) VALUES (5, 'terryjohnson');
INSERT INTO clients (client_id, alias) VALUES (6, 'gmurray');
INSERT INTO clients (client_id, alias) VALUES (7, 'angelica19');
INSERT INTO clients (client_id, alias) VALUES (8, 'fernandorogers');
INSERT INTO clients (client_id, alias) VALUES (9, 'emilythompson');
INSERT INTO clients (client_id, alias) VALUES (10, 'adamsthomas');

-- contracts
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (1, 2, 8, '2020-10-18', '2025-02-28', 'Cancelled');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (2, 8, 9, '2024-02-12', '2025-02-17', 'Active');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (3, 3, 2, '2024-02-08', '2025-02-27', 'Completed');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (4, 8, 10, '2020-01-09', '2025-03-16', 'Completed');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (5, 3, 5, '2021-09-26', '2025-03-10', 'Completed');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (6, 6, 9, '2023-12-18', '2025-03-08', 'Cancelled');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (7, 5, 6, '2024-06-21', '2025-03-03', 'Completed');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (8, 4, 7, '2022-03-04', '2025-02-28', 'Completed');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (9, 7, 9, '2024-12-14', '2025-02-21', 'Completed');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (10, 9, 8, '2024-07-14', '2025-03-09', 'Active');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (11, 10, 6, '2024-10-12', '2025-02-27', 'Completed');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (12, 7, 3, '2024-08-18', '2025-03-07', 'Active');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (13, 10, 9, '2024-04-09', '2025-03-16', 'Cancelled');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (14, 3, 2, '2021-01-02', '2025-02-28', 'Cancelled');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (15, 2, 5, '2023-06-02', '2025-02-24', 'Active');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (16, 6, 3, '2020-07-12', '2025-03-15', 'Cancelled');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (17, 8, 9, '2025-01-03', '2025-03-11', 'Completed');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (18, 1, 2, '2023-05-10', '2025-03-15', 'Active');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (19, 9, 2, '2023-01-20', '2025-02-19', 'Completed');
INSERT INTO contracts (contract_id, organisation_id, client_id, start_date, end_date, status) VALUES (20, 6, 5, '2021-09-26', '2025-02-17', 'Cancelled');

-- payments 
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (1, 374.83, 882.58, 499.35, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (2, 366.84, 576.28, 366.95, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (3, 344.71, 341.84, 221.88, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (4, 701.95, 627.54, 572.38, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (5, 778.71, 129.68, 331.83, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (6, 438.28, 731.27, 973.34, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (7, 226.25, 683.97, 812.81, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (8, 692.69, 277.16, 414.67, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (9, 366.31, 450.93, 758.4, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (10, 118.88, 740.71, 738.68, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (11, 198.09, 884.68, 267.84, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (12, 794.22, 437.82, 723.31, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (13, 521.56, 528.9, 944.65, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (14, 467.69, 914.04, 384.95, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (15, 991.92, 279.61, 664.08, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (16, 921.02, 668.78, 130.64, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (17, 254.84, 609.2, 191.77, 'Completed');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (18, 969.4, 800.25, 817.37, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (19, 998.41, 250.63, 634.13, 'Pending');
INSERT INTO payments (payment_id, fertilizer, soil, nitrates, status) VALUES (20, 238.62, 152.32, 383.18, 'Completed');

-- weapon_purchase 
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (1, 2625.6, '2025-02-08');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (2, 714.39, '2025-01-05');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (3, 1862.12, '2025-01-09');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (4, 1103.39, '2025-02-03');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (5, 695.95, '2025-01-15');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (6, 1749.14, '2025-01-02');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (7, 4047.83, '2025-01-26');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (8, 3663.45, '2025-02-05');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (9, 2590.02, '2025-02-14');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (10, 4494.07, '2025-02-09');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (11, 500.63, '2025-01-20');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (12, 924.53, '2025-01-26');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (13, 1045.16, '2025-01-17');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (14, 4118.44, '2025-01-24');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (15, 3621.86, '2025-01-23');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (16, 3531.81, '2025-01-01');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (17, 2655.29, '2025-02-08');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (18, 1031.43, '2025-01-27');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (19, 2517.97, '2025-01-27');
    INSERT INTO weapon_purchase (purchase_id, total_cost, purchase_date) VALUES (20, 1119.58, '2025-02-10');

    -- weapons
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (1, 'Explain', 'Pistol', 3334.59);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (2, 'Money', 'Pistol', 4853.89);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (3, 'Civil', 'SMG', 1241.72);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (4, 'Yes', 'Rifle', 3835.85);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (5, 'Word', 'Sniper', 4262.67);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (6, 'Important', 'Sniper', 4083.7);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (7, 'Political', 'Sniper', 4476.59);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (8, 'You', 'Pistol', 2947.53);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (9, 'Five', 'Pistol', 3848.12);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (10, 'Have', 'Rifle', 958.51);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (11, 'Head', 'Rifle', 2852.87);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (12, 'Agreement', 'Pistol', 4929.88);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (13, 'Spend', 'Rifle', 2937.48);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (14, 'Morning', 'SMG', 3548.38);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (15, 'Music', 'Pistol', 2591.16);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (16, 'Material', 'Pistol', 4838.71);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (17, 'Enjoy', 'Rifle', 4710.27);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (18, 'Fine', 'Pistol', 4988.93);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (19, 'Keep', 'Rifle', 2347.23);
    INSERT INTO weapons (weapon_id, name, type, cost) VALUES (20, 'Serve', 'SMG', 1685.25);

    -- suppliers
    INSERT INTO suppliers (supplier_id, name, contact_number) VALUES (1, 'Castillo, Harrell and Crosby', '+1-961-661-3376');
    INSERT INTO suppliers (supplier_id, name, contact_number) VALUES (2, 'Alexander-Ortiz', '534.614.7573');
    INSERT INTO suppliers (supplier_id, name, contact_number) VALUES (3, 'Strickland, Thompson and Watts', '001-710-393-2577x612');
    INSERT INTO suppliers (supplier_id, name, contact_number) VALUES (4, 'Hart, Rogers and Lewis', '+1-840-622-5401');
    INSERT INTO suppliers (supplier_id, name, contact_number) VALUES (5, 'Love, Parker and Hanna', '6433222560');
    INSERT INTO suppliers (supplier_id, name, contact_number) VALUES (6, 'Potts-Curry', '(238)710-0958x8822');
    INSERT INTO suppliers (supplier_id, name, contact_number) VALUES (7, 'Pruitt, Black and Prince', '(269)279-1650');
    INSERT INTO suppliers (supplier_id, name, contact_number) VALUES (8, 'Moody Inc', '+1-878-318-0969x5741');
    INSERT INTO suppliers (supplier_id, name, contact_number) VALUES (9, 'Brown, Marshall and Hall', '001-509-765-2692');
    INSERT INTO suppliers (supplier_id, name, contact_number) VALUES (10, 'Delgado, Lewis and Campbell', '(906)977-8808');

    -- weapons_suppliers
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (9, 20);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (10, 15);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (7, 7);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (6, 2);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (4, 4);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (4, 13);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (2, 12);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (10, 2);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (3, 20);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (7, 10);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (5, 16);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (6, 7);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (1, 7);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (7, 9);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (6, 3);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (9, 4);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (6, 8);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (3, 14);
    INSERT INTO weapons_suppliers (supplier_id, weapon_id) VALUES (8, 9);

    -- weapon_purchase_items
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (15.0, 2.0, 10.0, 700.03);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (1.0, 12.0, 8.0, 226.63);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (4.0, 16.0, 8.0, 378.93);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (16.0, 12.0, 7.0, 554.02);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (3.0, 11.0, 1.0, 592.31);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (7.0, 10.0, 7.0, 855.48);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (13.0, 14.0, 6.0, 817.88);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (16.0, 9.0, 6.0, 877.86);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (12.0, 4.0, 6.0, 548.28);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (8.0, 4.0, 9.0, 764.65);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (17.0, 10.0, 8.0, 226.24);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (18.0, 3.0, 4.0, 850.58);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (16.0, 11.0, 10.0, 747.44);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (4.0, 8.0, 4.0, 157.97);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (6.0, 13.0, 10.0, 877.21);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (7.0, 1.0, 3.0, 631.71);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (8.0, 13.0, 3.0, 635.23);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (16.0, 2.0, 10.0, 441.5);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (11.0, 6.0, 7.0, 269.34);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (7.0, 7.0, 6.0, 677.64);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (19.0, 9.0, 2.0, 142.7);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (12.0, 20.0, 7.0, 357.1);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (3.0, 1.0, 6.0, 987.66);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (18.0, 13.0, 5.0, 817.54);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (14.0, 11.0, 2.0, 293.21);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (10.0, 6.0, 2.0, 530.86);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (3.0, 7.0, 3.0, 555.38);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (14.0, 2.0, 5.0, 561.44);
    INSERT INTO weapon_purchase_items (purchase_id, weapon_id, quantity, cost) VALUES (19.0, 20.0, 9.0, 841.98);

    -- hits
    INSERT INTO hits (hit_id, target_id, bean_id, contract_id, hit_start_date, hit_due_date, status, payment_id, location_id, weapon_purchase_id) VALUES (1, 2, 15, 13, '2025-01-04', '2025-02-17', 'Failed', 1, 5, 3);
    INSERT INTO hits (hit_id, target_id, bean_id, contract_id, hit_start_date, hit_due_date, status, payment_id, location_id, weapon_purchase_id) VALUES (2, 20, 1, 10, '2025-02-01', '2025-03-08', 'Pending', 2, 10, 12);
    INSERT INTO hits (hit_id, target_id, bean_id, contract_id, hit_start_date, hit_due_date, status, payment_id, location_id, weapon_purchase_id) VALUES (3, 2, 7, 10, '2025-01-06', '2025-02-23', 'Completed', 3, 3, 10);
    INSERT INTO hits (hit_id, target_id, bean_id, contract_id, hit_start_date, hit_due_date, status, payment_id, location_id, weapon_purchase_id) VALUES (4, 12, 8, 13, '2025-01-07', '2025-03-09', 'Active', 4, 6, 14);
    INSERT INTO hits (hit_id, target_id, bean_id, contract_id, hit_start_date, hit_due_date, status, payment_id, location_id, weapon_purchase_id) VALUES (5, 4, 2, 14, '2025-01-21', '2025-03-08', 'Completed', 5, 2, 6);
    INSERT INTO hits (hit_id, target_id, bean_id, contract_id, hit_start_date, hit_due_date, status, payment_id, location_id, weapon_purchase_id) VALUES (6, 19, 7, 8, '2025-01-13', '2025-02-23', 'Active', 6, 1, 15);
    INSERT INTO hits (hit_id, target_id, bean_id, contract_id, hit_start_date, hit_due_date, status, payment_id, location_id, weapon_purchase_id) VALUES (8, 9, 20, 7, '2025-02-11', '2025-02-28', 'Failed', 8, 7, 17);
    INSERT INTO hits (hit_id, target_id, bean_id, contract_id, hit_start_date, hit_due_date, status, payment_id, location_id, weapon_purchase_id) VALUES (11, 14, 7, 6, '2025-02-04', '2025-02-19', 'Failed', 11, 4, 7);
    INSERT INTO hits (hit_id, target_id, bean_id, contract_id, hit_start_date, hit_due_date, status, payment_id, location_id, weapon_purchase_id) VALUES (12, 7, 4, 20, '2025-01-30', '2025-03-08', 'Completed', 12, 7, 8);
    INSERT INTO hits (hit_id, target_id, bean_id, contract_id, hit_start_date, hit_due_date, status, payment_id, location_id, weapon_purchase_id) VALUES (13, 13, 9, 12, '2025-02-13', '2025-02-28', 'Failed', 13, 8, 18);
    INSERT INTO hits (hit_id, target_id, bean_id, contract_id, hit_start_date, hit_due_date, status, payment_id, location_id, weapon_purchase_id) VALUES (15, 14, 12, 16, '2025-01-30', '2025-03-02', 'Completed', 15, 9, 5);
    INSERT INTO hits (hit_id, target_id, bean_id, contract_id, hit_start_date, hit_due_date, status, payment_id, location_id, weapon_purchase_id) VALUES (16, 2, 13, 8, '2025-01-25', '2025-03-11', 'Completed', 16, 7, 13);
    INSERT INTO hits (hit_id, target_id, bean_id, contract_id, hit_start_date, hit_due_date, status, payment_id, location_id, weapon_purchase_id) VALUES (20, 9, 10, 8, '2025-01-02', '2025-03-02', 'Completed', 20, 6, 1);