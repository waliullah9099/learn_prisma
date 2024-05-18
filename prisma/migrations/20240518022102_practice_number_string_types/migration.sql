/*
  Warnings:

  - You are about to drop the `user` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `user`;

-- CreateTable
CREATE TABLE `Numbers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `col1` INTEGER UNSIGNED NOT NULL,
    `col2` BIGINT NOT NULL,
    `col3` BIGINT UNSIGNED NOT NULL,
    `col4` SMALLINT NOT NULL,
    `col5` SMALLINT UNSIGNED NOT NULL,
    `col6` MEDIUMINT NOT NULL,
    `col7` MEDIUMINT UNSIGNED NOT NULL,
    `col8` TINYINT NOT NULL,
    `col9` TINYINT UNSIGNED NOT NULL,
    `col10` DECIMAL(65, 30) NOT NULL,
    `col11` DOUBLE NOT NULL,
    `col12` FLOAT NOT NULL,
    `col13` BIGINT NOT NULL DEFAULT 100,
    `col14` BIGINT NOT NULL,

    UNIQUE INDEX `Numbers_col14_key`(`col14`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Strings` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `col15` VARCHAR(191) NOT NULL,
    `col16` VARCHAR(191) NULL,
    `col17` VARCHAR(191) NOT NULL DEFAULT 'Soto vai vai',
    `col18` VARCHAR(700) NOT NULL,
    `col19` TEXT NOT NULL,
    `col20` TINYTEXT NOT NULL,
    `col21` LONGTEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
