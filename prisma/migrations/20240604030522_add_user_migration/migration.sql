-- AlterTable
ALTER TABLE `user2` ADD COLUMN `age` INTEGER NULL;

-- CreateTable
CREATE TABLE `user` (
    `name` VARCHAR(100) NULL,
    `age` INTEGER NULL,
    `number` VARCHAR(100) NULL,
    `id` INTEGER NOT NULL AUTO_INCREMENT,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `sw` (
    `swName` VARCHAR(100) NULL,
    `swPrice` VARCHAR(100) NULL,
    `swId` INTEGER NOT NULL,

    PRIMARY KEY (`swId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
