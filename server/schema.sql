DROP DATABASE chat;


CREATE DATABASE chat;


-- if(users) {
-- DROP TABLE users;
-- }
-- if(rooms) {
-- DROP TABLE rooms;
-- }
-- if(messages) {
-- DROP TABLE messages;
-- }
USE chat;


CREATE TABLE users (
  userId int,
  username varchar(255),
  PRIMARY KEY (userId)
  
);

CREATE TABLE rooms (
  roomId int PRIMARY KEY,
  roomname varchar(255)
);

CREATE TABLE messages (
  id int,
  UserID int,
  MessageText varchar(255),
  RoomID int,
  PRIMARY KEY (id),
  FOREIGN KEY (UserID) REFERENCES users(userId),
  FOREIGN KEY (RoomID) REFERENCES rooms(roomId)
);



  -- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Messages'
-- Chat
-- ---

-- DROP TABLE IF EXISTS `Messages`;
    
-- CREATE TABLE `Messages` (
--   `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
--   `UserID` INTEGER NULL DEFAULT NULL COMMENT 'UserID ',
--   `Text` MEDIUMTEXT(250) NULL DEFAULT NULL COMMENT 'Text',
--   `RoomID` INTEGER NULL DEFAULT NULL COMMENT 'Room ID',
--   PRIMARY KEY (`id`)
-- ) COMMENT 'Chat';

-- -- ---
-- Table 'Users'
-- Users Table
-- ---

-- DROP TABLE IF EXISTS `Users`;
    
-- CREATE TABLE `Users` (
--   `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
--   `UserName` CHAR(30) NULL DEFAULT NULL COMMENT 'Username',
--   PRIMARY KEY (`id`)
-- ) COMMENT 'Users Table';

-- -- ---
-- -- Table 'Rooms'
-- -- Rooms
-- -- ---

-- DROP TABLE IF EXISTS `Rooms`;
    
-- CREATE TABLE `Rooms` (
--   `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
--   `RoomName` CHAR(30) NULL DEFAULT NULL,
--   PRIMARY KEY (`id`)
-- ) COMMENT 'Rooms';

-- -- ---
-- -- Foreign Keys 
-- -- ---

-- ALTER TABLE `Messages` ADD FOREIGN KEY (UserID) REFERENCES `Users` (`id`);
-- ALTER TABLE `Messages` ADD FOREIGN KEY (RoomID) REFERENCES `Rooms` (`id`);

-- -- ---
-- Table Properties
-- ---

-- ALTER TABLE `Messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Messages` (`id`,`UserID`,`Text`,`RoomID`) VALUES
-- ('','','','');
-- INSERT INTO `Users` (`id`,`UserName`) VALUES
-- ('','');
-- INSERT INTO `Rooms` (`id`,`RoomName`) VALUES
-- ('','');
  /* Describe your table here.*/


/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

