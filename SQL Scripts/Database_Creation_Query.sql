DROP DATABASE IF EXISTS `Hitman_Association`;
CREATE DATABASE `Hitman_Association`;
USE `Hitman_Association`;
CREATE TABLE `beans` (
    `bean_id` integer PRIMARY KEY AUTO_INCREMENT,
    `alias` varchar(50) UNIQUE NOT NULL CHECK (LENGTH(TRIM(`alias`)) > 0),
    `org_id` integer NOT NULL,
    `origin` varchar(100),
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
    `spec_name` varchar(100) UNIQUE NOT NULL CHECK (LENGTH(TRIM(`spec_name`)) > 0)
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
    `status` ENUM(
        'Scheduled',
        'Completed',
        'Cancelled',
        'Failed',
        'Active'
    ),
    `payment_id` integer UNIQUE NOT NULL,
    `location_id` integer,
    `weapon_purchase_id` integer UNIQUE,
    CHECK (
        `hit_start_date` < `hit_due_date`
    )
);
CREATE TABLE `locations` (
    `location_id` integer PRIMARY KEY AUTO_INCREMENT,
    `location_name` varchar(100) NOT NULL CHECK (LENGTH(TRIM(`location_name`)) > 0),
    `latitude` decimal(9, 6) NOT NULL CHECK (
        `latitude` BETWEEN -90 AND 90
    ),
    `longitude` decimal(9, 6) NOT NULL CHECK (
        `longitude` BETWEEN -180 AND 180
    ),
    `details` varchar(500)
);
CREATE TABLE `organisations` (
    `org_id` integer PRIMARY KEY AUTO_INCREMENT,
    `name` varchar(100) UNIQUE NOT NULL CHECK (LENGTH(TRIM(`name`)) > 0),
    `type` varchar(50) NOT NULL
);
CREATE TABLE `payments` (
    `payment_id` integer PRIMARY KEY AUTO_INCREMENT,
    `fertilizer` DECIMAL(10, 2) CHECK (`fertilizer` >= 0),
    `soil` DECIMAL(10, 2) CHECK (`soil` >= 0),
    `nitrates` DECIMAL(10, 2) CHECK (`nitrates` >= 0),
    `status` ENUM('Pending', 'Completed'),
    CHECK (
        `fertilizer` > 0
        OR `soil` > 0
        OR `nitrates` > 0
    ) -- At least one must be greater than 0
);
CREATE TABLE `weapon_purchase` (
    `purchase_id` integer PRIMARY KEY AUTO_INCREMENT,
    `total_cost` DECIMAL(10, 2) NOT NULL CHECK (`total_cost` >= 0),
    `purchase_date` date NOT NULL
);
CREATE TABLE `weapon_purchase_items` (
    `purchase_id` integer,
    `weapon_id` integer,
    `quantity` integer NOT NULL CHECK (`quantity` > 0),
    `cost` DECIMAL(10, 2) NOT NULL CHECK (`cost` >= 0),
    -- Is this cost per item or total cost?
    PRIMARY KEY (`purchase_id`, `weapon_id`)
);
CREATE TABLE `weapons` (
    `weapon_id` integer PRIMARY KEY AUTO_INCREMENT,
    `name` varchar(100) UNIQUE NOT NULL CHECK (LENGTH(TRIM(`name`)) > 0),
    `type` varchar(50) NOT NULL CHECK (LENGTH(TRIM(`type`)) > 0),
    `cost` DECIMAL(10, 2) NOT NULL CHECK (`cost` >= 0)
);
CREATE TABLE `weapons_suppliers` (
    `supplier_id` integer NOT NULL,
    `weapon_id` integer NOT NULL,
    PRIMARY KEY (`supplier_id`, `weapon_id`)
);
CREATE TABLE `suppliers` (
    `supplier_id` integer PRIMARY KEY AUTO_INCREMENT,
    `name` varchar(100) UNIQUE NOT NULL CHECK (LENGTH(TRIM(`name`)) > 0),
    `contact_number` varchar(20)
);
CREATE TABLE `targets` (
    `target_id` integer PRIMARY KEY AUTO_INCREMENT,
    `description` varchar(255) NOT NULL,
    `target_image_url` varchar(2083),
    `target_name` varchar(50) NOT NULL CHECK (LENGTH(TRIM(`target_name`)) > 0)
);
CREATE TABLE `clients` (
    `client_id` integer PRIMARY KEY AUTO_INCREMENT,
    `alias` varchar(50) UNIQUE NOT NULL CHECK (LENGTH(TRIM(`alias`)) > 0)
);
CREATE TABLE `contracts` (
    `contract_id` integer PRIMARY KEY AUTO_INCREMENT,
    `organisation_id` integer NOT NULL,
    `client_id` integer NOT NULL,
    `start_date` date NOT NULL,
    `end_date` date NOT NULL,
    `status` ENUM(
        'Active',
        'Completed',
        'Cancelled'
    ),
    CHECK (
        `start_date` < `end_date`
    )
);
CREATE TABLE `currency_values` (
    `currency_id` integer PRIMARY KEY AUTO_INCREMENT,
    `fertilizer` DECIMAL(10, 2) NOT NULL,
    `soil` DECIMAL(10, 2) NOT NULL,
    `nitrates` DECIMAL(10, 2) NOT NULL
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