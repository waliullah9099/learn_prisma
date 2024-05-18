/*
  Warnings:

  - You are about to drop the column `email` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `institute` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `village` on the `user` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[col14]` on the table `User` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `col1` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col10` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col11` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col12` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col14` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col2` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col3` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col4` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col5` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col6` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col7` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col8` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `col9` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX `User_email_key` ON `user`;

-- AlterTable
ALTER TABLE `user` DROP COLUMN `email`,
    DROP COLUMN `institute`,
    DROP COLUMN `name`,
    DROP COLUMN `village`,
    ADD COLUMN `col1` INTEGER UNSIGNED NOT NULL,
    ADD COLUMN `col10` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `col11` DOUBLE NOT NULL,
    ADD COLUMN `col12` FLOAT NOT NULL,
    ADD COLUMN `col13` BIGINT NOT NULL DEFAULT 100,
    ADD COLUMN `col14` BIGINT NOT NULL,
    ADD COLUMN `col2` BIGINT NOT NULL,
    ADD COLUMN `col3` BIGINT UNSIGNED NOT NULL,
    ADD COLUMN `col4` SMALLINT NOT NULL,
    ADD COLUMN `col5` SMALLINT UNSIGNED NOT NULL,
    ADD COLUMN `col6` MEDIUMINT NOT NULL,
    ADD COLUMN `col7` MEDIUMINT UNSIGNED NOT NULL,
    ADD COLUMN `col8` TINYINT NOT NULL,
    ADD COLUMN `col9` TINYINT UNSIGNED NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `User_col14_key` ON `User`(`col14`);
