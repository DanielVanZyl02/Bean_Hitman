DROP DATABASE IF EXISTS `Hitman_Association`;

CREATE DATABASE `Hitman_Association`;

USE `Hitman_Association`;

CREATE TABLE `beans` (
    `bean_id` integer PRIMARY KEY AUTO_INCREMENT,
    `alias` varchar(50) UNIQUE NOT NULL,
    `org_id` integer NOT NULL,
    `origin` varchar(100), -- is 100 enough? Origin is more like backstory and less like country
    `skill_level` ENUM(
    'Street Level',
    'Semi-pro',
    'Professional',
    'Seasoned Professional',
    'Master'
)
);

CREATE TABLE `specialisations` (
    `spec_id` integer PRIMARY KEY AUTO_INCREMENT,
    `spec_name` varchar(100) UNIQUE NOT NULL
);

CREATE TABLE `spec_bean` (
    `bean_id` integer,
    `spec_id` integer,
    PRIMARY KEY (`bean_id`, `spec_id`)
);

CREATE TABLE `hits` (
    `hit_id` integer PRIMARY KEY AUTO_INCREMENT,
    `target_id` integer NOT NULL,
    `bean_id` integer NOT NULL,
    `contract_id` integer NOT NULL,
    `hit_start_date` date NOT NULL,
    `hit_due_date` date NOT NULL,
    `status` varchar(50) NOT NULL,
    `payment_id` integer UNIQUE NOT NULL,
    `location_id` integer,
    `weapon_purchase_id` integer UNIQUE
);

CREATE TABLE `locations` (
    `location_id` integer PRIMARY KEY AUTO_INCREMENT,
    `location_name` varchar(100) NOT NULL,
    `latitude` decimal(9, 6) NOT NULL,
    `longitude` decimal(9, 6) NOT NULL,
    `details` varchar(500)
);

CREATE TABLE `organisations` (
    `org_id` integer PRIMARY KEY AUTO_INCREMENT,
    `name` varchar(100) UNIQUE NOT NULL,
    `type` varchar(50) NOT NULL
);

CREATE TABLE `payments` (
    `payment_id` integer PRIMARY KEY AUTO_INCREMENT,
    `fertilizer` double, -- should we use double or decimal? Isn't decimal better for money?
    `soil` double,
    `nitrates` double,
    `status` varchar(50) NOT NULL
);

CREATE TABLE `weapon_purchase` (
    `purchase_id` integer PRIMARY KEY AUTO_INCREMENT,
    `total_cost` DECIMAL(10, 2) NOT NULL,
    `purchase_date` date NOT NULL
);

CREATE TABLE `weapon_purchase_items` (
    `purchase_id` integer,
    `weapon_id` integer,
    `quantity` integer NOT NULL,
    `cost` DECIMAL(10, 2) NOT NULL, -- Is this cost per item or total cost?
    PRIMARY KEY (`purchase_id`, `weapon_id`)
);

CREATE TABLE `weapons` (
    `weapon_id` integer PRIMARY KEY AUTO_INCREMENT,
    `name` varchar(100) UNIQUE NOT NULL,
    `type` varchar(50) NOT NULL,
    `cost` DECIMAL(10, 2) NOT NULL
);

CREATE TABLE `weapons_suppliers` (
    `supplier_id` integer NOT NULL,
    `weapon_id` integer NOT NULL,
    PRIMARY KEY (`supplier_id`, `weapon_id`)
);

CREATE TABLE `suppliers` (
    `supplier_id` integer PRIMARY KEY AUTO_INCREMENT,
    `name` varchar(100) UNIQUE NOT NULL,
    `contact_number` varchar(20)
);

CREATE TABLE `targets` (
    `target_id` integer PRIMARY KEY AUTO_INCREMENT,
    `description` varchar(255) NOT NULL,
    `target_image_url` varchar(2083),
    `target_name` varchar(50) NOT NULL
);

CREATE TABLE `clients` (
    `client_id` integer PRIMARY KEY AUTO_INCREMENT,
    `alias` varchar(50) UNIQUE NOT NULL
);

CREATE TABLE `contracts` (
    `contract_id` integer PRIMARY KEY AUTO_INCREMENT,
    `organisation_id` integer NOT NULL,
    `client_id` integer NOT NULL,
    `start_date` date NOT NULL,
    `end_date` date NOT NULL,
    `status` varchar(50)
);

ALTER TABLE `hits`
ADD FOREIGN KEY (`bean_id`) REFERENCES `beans` (`bean_id`);

ALTER TABLE `hits`
ADD FOREIGN KEY (`target_id`) REFERENCES `targets` (`target_id`);

ALTER TABLE `beans`
ADD FOREIGN KEY (`org_id`) REFERENCES `organisations` (`org_id`);

ALTER TABLE `spec_bean`
ADD FOREIGN KEY (`bean_id`) REFERENCES `beans` (`bean_id`);

ALTER TABLE `spec_bean`
ADD FOREIGN KEY (`spec_id`) REFERENCES `specialisations` (`spec_id`);

ALTER TABLE `weapons_suppliers`
ADD FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`);

ALTER TABLE `weapons_suppliers`
ADD FOREIGN KEY (`weapon_id`) REFERENCES `weapons` (`weapon_id`);

ALTER TABLE `hits`
ADD FOREIGN KEY (`payment_id`) REFERENCES `payments` (`payment_id`);

ALTER TABLE `hits`
ADD FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`);

ALTER TABLE `contracts`
ADD FOREIGN KEY (`organisation_id`) REFERENCES `organisations` (`org_id`);

ALTER TABLE `contracts`
ADD FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`);

ALTER TABLE `hits`
ADD FOREIGN KEY (`weapon_purchase_id`) REFERENCES `weapon_purchase` (`purchase_id`);

ALTER TABLE `weapon_purchase_items`
ADD FOREIGN KEY (`purchase_id`) REFERENCES `weapon_purchase` (`purchase_id`);

ALTER TABLE `weapon_purchase_items`
ADD FOREIGN KEY (`weapon_id`) REFERENCES `weapons` (`weapon_id`);

ALTER TABLE `hits`
ADD FOREIGN KEY (`contract_id`) REFERENCES `contracts` (`contract_id`);