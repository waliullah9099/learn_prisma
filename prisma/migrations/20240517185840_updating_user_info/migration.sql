/*
  Warnings:

  - Added the required column `institute` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `village` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `user` ADD COLUMN `institute` VARCHAR(191) NOT NULL,
    ADD COLUMN `village` VARCHAR(191) NOT NULL;
