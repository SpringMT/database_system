INSERT IGNORE INTO `科目` VALUES ('001', 'データベース', 2),
                                 ('002', 'システムプログラミング', 3),
                                 ('003', 'サンプル', 3),
                                 ('004', 'サンプル2', 3)
                                ;
INSERT IGNORE INTO `学生` VALUES ('00001', '山田一郎', '情報工学', '東京都'),
                                 ('00002', '鈴木明', '情報工学', '茨城県'),
                                 ('00003', '佐藤花子', '知識工学', '京都府'),
                                ;
INSERT IGNORE INTO `履修` VALUES ('001', '00001', 90),
                                 ('001', '00002', 80),
                                 ('002', '00001', 90),
                                 ('002', '00003', 70)
                                ;
INSERT IGNORE INTO `実習課題` VALUES ('001', '01', 'データモデリング'),
                                     ('001', '02', 'データベース設計'),
                                     ('001', '03', 'SQL'),
                                     ('002', '01', 'Cプログラミング'),
                                     ('002', '02', 'システムコール'),
                                     ('003', '01', 'haruyama')
                                    ;

