CREATE TABLE IF NOT EXISTS `科目` (
    `科目番号` VARCHAR(3) NOT NULL,
    `科目名` VARCHAR(16) NOT NULL,
    `単位数` INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY(`科目番号`),
    CHECK(`単位数` BETWEEN 1 AND 12)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `学生` (
    `学籍番号` VARCHAR(5) NOT NULL,
    `氏名` VARCHAR(16) NOT NULL,
    `専攻` VARCHAR(16) NOT NULL,
    `住所` VARCHAR(16) NOT NULL,
    PRIMARY KEY(`学籍番号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `履修` (
    `科目番号` VARCHAR(3) NOT NULL,
    `学籍番号` VARCHAR(5) NOT NULL,
    `成績` INTEGER UNSIGNED,
    PRIMARY KEY(`科目番号`, `学籍番号`),
    FOREIGN KEY(`科目番号`)
      REFERENCES `科目`(`科目番号`),
    FOREIGN KEY(`学籍番号`)
      REFERENCES `学生`(`学籍番号`),
    CHECK(`成績` BETWEEN 1 AND 100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `実習課題` (
    `科目番号` VARCHAR(3) NOT NULL,
    `課題番号` VARCHAR(5) NOT NULL,
    `課題名` VARCHAR(5) NOT NULL,
    PRIMARY KEY(`科目番号`, `課題番号`),
    FOREIGN KEY(`科目番号`)
      REFERENCES `科目`(`科目番号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

