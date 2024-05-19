/*
  Warnings:

  - You are about to alter the column `col4` on the `timetracker` table. The data in that column could be lost. The data in that column will be cast from `Timestamp(0)` to `Timestamp`.
  - You are about to alter the column `col5` on the `timetracker` table. The data in that column could be lost. The data in that column will be cast from `DateTime(0)` to `DateTime`.

*/
-- AlterTable
ALTER TABLE `timetracker` MODIFY `col4` TIMESTAMP NOT NULL,
    MODIFY `col5` DATETIME NOT NULL;

-- CreateTable
CREATE TABLE `BinaryObjectModel` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `col1` BLOB NOT NULL,
    `col2` TINYBLOB NOT NULL,
    `col3` VARBINARY(40) NOT NULL,
    `col5` VARBINARY(100) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
