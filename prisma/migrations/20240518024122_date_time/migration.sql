-- CreateTable
CREATE TABLE `TimeTracker` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `col1` DATETIME(3) NOT NULL,
    `col2` DATE NOT NULL,
    `col3` TIME NOT NULL,
    `col4` TIMESTAMP NOT NULL,
    `col5` DATETIME NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
