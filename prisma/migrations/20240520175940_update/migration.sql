/*
  Warnings:

  - You are about to alter the column `col4` on the `timetracker` table. The data in that column could be lost. The data in that column will be cast from `Timestamp(0)` to `Timestamp`.
  - You are about to alter the column `col5` on the `timetracker` table. The data in that column could be lost. The data in that column will be cast from `DateTime(0)` to `DateTime`.

*/
-- AlterTable
ALTER TABLE `timetracker` MODIFY `col4` TIMESTAMP NOT NULL,
    MODIFY `col5` DATETIME NOT NULL;
