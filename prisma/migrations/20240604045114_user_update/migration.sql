/*
  Warnings:

  - The primary key for the `user` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `name` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `number` on the `user` table. All the data in the column will be lost.
  - The primary key for the `user2` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `address` on the `user2` table. All the data in the column will be lost.
  - You are about to drop the column `company` on the `user2` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `user2` table. All the data in the column will be lost.
  - You are about to drop the column `email` on the `user2` table. All the data in the column will be lost.
  - You are about to drop the column `firstName` on the `user2` table. All the data in the column will be lost.
  - You are about to drop the column `lastName` on the `user2` table. All the data in the column will be lost.
  - You are about to drop the column `test` on the `user2` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `user2` table. All the data in the column will be lost.
  - You are about to alter the column `id` on the `user2` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - A unique constraint covering the columns `[email]` on the table `User` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `address` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `email` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `firstName` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `lastName` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX `User2_email_key` ON `user2`;

-- AlterTable
ALTER TABLE `user` DROP PRIMARY KEY,
    DROP COLUMN `name`,
    DROP COLUMN `number`,
    ADD COLUMN `address` VARCHAR(191) NOT NULL,
    ADD COLUMN `company` VARCHAR(191) NULL,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `email` VARCHAR(191) NOT NULL,
    ADD COLUMN `firstName` VARCHAR(191) NOT NULL,
    ADD COLUMN `lastName` VARCHAR(191) NOT NULL,
    ADD COLUMN `test` VARCHAR(191) NULL,
    ADD COLUMN `updatedAt` DATETIME(3) NOT NULL,
    MODIFY `id` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`id`);

-- AlterTable
ALTER TABLE `user2` DROP PRIMARY KEY,
    DROP COLUMN `address`,
    DROP COLUMN `company`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `email`,
    DROP COLUMN `firstName`,
    DROP COLUMN `lastName`,
    DROP COLUMN `test`,
    DROP COLUMN `updatedAt`,
    ADD COLUMN `name` VARCHAR(100) NULL,
    ADD COLUMN `number` VARCHAR(100) NULL,
    MODIFY `id` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`id`);

-- CreateIndex
CREATE UNIQUE INDEX `User_email_key` ON `User`(`email`);
