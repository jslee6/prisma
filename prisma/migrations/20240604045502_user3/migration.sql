/*
  Warnings:

  - You are about to drop the `user2` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `user2`;

-- CreateTable
CREATE TABLE `user3` (
    `name` VARCHAR(100) NULL,
    `age` INTEGER NULL,
    `number` VARCHAR(100) NULL,
    `id` INTEGER NOT NULL AUTO_INCREMENT,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
