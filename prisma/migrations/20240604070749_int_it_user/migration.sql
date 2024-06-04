/*
  Warnings:

  - You are about to drop the column `company` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `test` on the `user` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `user` DROP COLUMN `company`,
    DROP COLUMN `test`;

-- RenameIndex
ALTER TABLE `user` RENAME INDEX `User_email_key` TO `user_email_key`;
