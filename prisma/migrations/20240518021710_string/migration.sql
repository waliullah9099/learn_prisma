/*
  Warnings:

  - Added the required column `col15` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col18` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col19` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col20` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col21` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `user` ADD COLUMN `col15` VARCHAR(191) NOT NULL,
    ADD COLUMN `col16` VARCHAR(191) NULL,
    ADD COLUMN `col17` VARCHAR(191) NOT NULL DEFAULT 'Soto vai vai',
    ADD COLUMN `col18` VARCHAR(700) NOT NULL,
    ADD COLUMN `col19` TEXT NOT NULL,
    ADD COLUMN `col20` TINYTEXT NOT NULL,
    ADD COLUMN `col21` LONGTEXT NOT NULL;
