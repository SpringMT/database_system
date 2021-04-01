# database_system

## setup

MySQLに入って

```
CREATE DATABASE database_system;
```

## 学生

### テーブル

```
mysql -u root database_system < ./gakusei_schema.sql
```

### データ
```
mysql -u root database_system < ./gakusei_data.sql
```

### SQL

* p 67 Q4

```
SELECT x.学籍番号
FROM 履修 AS x, 履修 AS y
WHERE x.科目番号 = '002' AND y.学籍番号= '00003'
  AND y.科目番号='002' AND x.成績 > y.成績
  ;
```

* p 72 Q11

```
SELECT 科目.*
FROM 科目, 実習課題
WHERE 科目.科目番号 = 実習課題.科目番号
UNION
SELECT *
FROM 科目
WHERE 単位数 >= 5
;
```

```
 EXPLAIN SELECT 科目.* FROM 科目, 実習課題 WHERE 科目.科目番号 = 実習課題.科目番号 UNION SELECT * FROM 科目 WHERE 単位数 >= 5;
+----+--------------+--------------+------------+------+---------------+---------+---------+-------------------------------------+------+----------+-----------------+
| id | select_type  | table        | partitions | type | possible_keys | key     | key_len | ref                                 | rows | filtered | Extra           |
+----+--------------+--------------+------------+------+---------------+---------+---------+-------------------------------------+------+----------+-----------------+
|  1 | PRIMARY      | 科目         | NULL       | ALL  | PRIMARY       | NULL    | NULL    | NULL                                |    2 |   100.00 | NULL            |
|  1 | PRIMARY      | 実習課題     | NULL       | ref  | PRIMARY       | PRIMARY | 14      | database_system.科目.科目番号       |    2 |   100.00 | Using index     |
|  2 | UNION        | 科目         | NULL       | ALL  | NULL          | NULL    | NULL    | NULL                                |    2 |    50.00 | Using where     |
| NULL | UNION RESULT | <union1,2>   | NULL       | ALL  | NULL          | NULL    | NULL    | NULL                                | NULL |     NULL | Using temporary |
+----+--------------+--------------+------------+------+---------------+---------+---------+-------------------------------------+------+----------+-----------------+
4 rows in set, 1 warning (0.00 sec)
```

