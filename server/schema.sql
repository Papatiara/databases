CREATE DATABASE IF NOT EXISTS chat;

USE chat;


CREATE TABLE IF NOT EXISTS users (
  userId int NOT NULL AUTO_INCREMENT,
  username varchar(255),
  PRIMARY KEY (userId),
  UNIQUE (userId, username)
);

CREATE TABLE IF NOT EXISTS rooms (
  roomId int NOT NULL AUTO_INCREMENT,
  roomname varchar(255),
  PRIMARY KEY (roomId),
  UNIQUE (roomId, roomname)
);

CREATE TABLE IF NOT EXISTS messages (
  id int NOT NULL AUTO_INCREMENT,
  userId int ,
  message varchar(255),
  roomId int,
  PRIMARY KEY (id)
  FOREIGN KEY (userId) REFERENCES users(userId),
  FOREIGN KEY (roomId) REFERENCES rooms(roomId)
);

  -- server: 'http://parse.CAMPUS.hackreactor.com/chatterbox/classes/messages',
  -- username: 'anonymous',
  -- roomname: 'lobby',
  -- lastMessageId: 0,
  -- friends: {},
  -- messages: [],



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

