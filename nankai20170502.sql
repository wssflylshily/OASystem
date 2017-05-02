/*
Navicat MySQL Data Transfer

Source Server         : 南开创文
Source Server Version : 50617
Source Host           : 47.92.68.19:3306
Source Database       : nankai

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-05-02 10:04:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for nk_activity
-- ----------------------------
DROP TABLE IF EXISTS `nk_activity`;
CREATE TABLE `nk_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `desc` varchar(255) DEFAULT NULL COMMENT '简述',
  `content` text COMMENT '内容',
  `create_time` int(11) DEFAULT NULL COMMENT '发送时间',
  `ac_id` int(11) DEFAULT NULL COMMENT '主题活动分类id',
  `pic_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='----------新闻下活动----------';

-- ----------------------------
-- Records of nk_activity
-- ----------------------------
INSERT INTO `nk_activity` VALUES ('29', '十二大关键词解读六中全会公报', '十二大关键词解读六中全会公报', '<section><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; text-align: center;\"><span style=\"\"><span style=\"box-sizing: border-box; font-weight: 700;\">释放从严治党最强音&nbsp;&nbsp;</span></span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; text-align: center;\"><span style=\"\"><span style=\"box-sizing: border-box; font-weight: 700;\">　　十二大关键词解读六中全会公报</span></span>&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; text-align: center;\">　　<img alt=\"\" src=\"http://file.chinacourt.org/f.php?id=1022354&class=imageid\"/>图表：释放从严治党最强音——六中全会公报十二大关键词&nbsp;新华社记者&nbsp;周咏缗&nbsp;马研&nbsp;编制&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　中国共产党十八届六中全会27日闭幕，全会聚焦全面从严治党的重大主题，审议通过了两个重要文件－－《关于新形势下党内政治生活的若干准则》《中国共产党党内监督条例》。&nbsp;　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　会议公报表明了中共中央坚定不移推进全面从严治党的政治决心，开创了党的建设新格局和新境界，也将“四个全面”战略布局更加系统地提升到新高度。&nbsp;　　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　“新华视点”记者采访权威专家，梳理解读全会释放的重要信息。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　关键词1－－全面从严治党&nbsp;　　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　全会提出：坚定推进全面从严治党，坚持思想建党和制度治党紧密结合，集中整饬党风，严厉惩治腐败，净化党内政治生态。&nbsp;　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　专家解读：中央党校教授谢春涛表示，党的十八届三中、四中、五中全会分别就全面深化改革、全面依法治国、全面建成小康社会进行专题研究。六中全会专题研究全面从严治党，既是经验总结又是全面部署，这标志着党中央“四个全面”的战略布局总体框架逐步完善。中央党校党建教研部教授戴焰军说，六中全会制定“准则”和修订“条例”，标志着党从顶层设计上更好地编织监督权力的制度笼子，把从严治党落到实处。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　关键词2－－领导核心&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　全会提出：坚持党的领导，首先是坚持党中央的集中统一领导。一个国家、一个政党，领导核心至关重要；全党同志紧密团结在以习近平同志为核心的党中央周围，全面深入贯彻本次全会精神，牢固树立政治意识、大局意识、核心意识、看齐意识。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　专家解读：中央党校教授辛鸣认为，公报中的这一重要表述意义重大而深远，有助于确立中央权威，有利于全党更加团结统一，增强凝聚力和战斗力。中国共产党建党以来，之所以一直受到群众的拥护支持，并且在革命斗争中取得胜利，源于我们党拥有坚强的领导核心，带领全党全国人民不断取得长足发展。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　关键词3－－党内政治生活&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　全会提出：党要管党必须从党内政治生活管起，从严治党必须从党内政治生活严起。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　专家解读：辛鸣说，严肃党内政治生活是全面从严治党的基础。党在1980年就出台《关于党内政治生活的若干准则》，30多年以来，世情、国情、党情都发生巨大变化。新制定的准则突出密切联系群众、批评与自我批评、民主集中制、党内民主等内容，强化政治意识、大局意识、核心意识、看齐意识，系统解决当前一些地方党内政治生活出现的庸俗化、随意化、搞“小圈子”等问题，为全面从严治党筑牢根基。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　关键词4－－党内监督&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　全会提出：坚持党内监督和人民群众监督相结合，增强党在长期执政条件下自我净化、自我完善、自我革新、自我提高能力。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　专家解读：在公报中，“监督”出现40余次。中国纪检监察学院原副院长李永忠表示，此次全会通过党内监督条例，给党内监督再添利剑，以上级纪委领导为主，加强对同级党委监督，调动民众反腐积极性，致力形成“科学的权力结构”。国家行政学院教授汪玉凯认为，我国公务员队伍中党员占绝大多数，党内监督至关重要。以重新修订党内监督条例为龙头，加上之前公布的问责条例、廉洁自律准则、纪律处分条例等法规，使党内监督体系进一步完善。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　关键词5－－纪律严明&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　全会提出：纪律严明是全党统一意志、统一行动、步调一致前进的重要保障，是党内政治生活的重要内容。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　专家解读：戴焰军认为，打铁需要自身硬，党治理好国家，必须把纪律挺在前面。正如公报所说，党内没有不受纪律约束的特殊组织和特殊党员。党的十八大以来，中央尤其强调政治纪律和政治规矩，坚决防止和纠正执行党的纪律宽松软的问题，保持对纪律的尊重和敬畏，这是新时期全面从严治党的准确切口。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　关键词6－－党内民主&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　全会提出：党内民主是党的生命，是党内政治生活积极健康的重要基础。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　专家解读：辛鸣表示，当前，一些地方和单位党内民主不够，在重大问题决策、重要干部任免、重大项目投资决策、大额资金使用等问题上，个人意志凌驾于组织之上。党要长期执政，必须保障每个党员的民主权利，拓宽党员表达意见渠道，不断激发党内“正能量”。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　关键词7－－反对腐败&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　全会提出：要坚持有腐必反、有贪必肃，坚持无禁区、全覆盖、零容忍，党内决不允许有腐败分子藏身之地。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　专家解读：十八大以来，中央正风肃纪力度始终不减。中央纪委监察部网站数据显示，2013年至2016年9月，全国有101万人受到党纪政纪处分。谢春涛表示，十八大以来，反腐成效明显，赢得海内外和社会各界的广泛赞誉。现在尤其要保持足够“定力”，力度不减节奏不变，紧盯重点领域和关键节点，让反腐利剑时刻高悬，形成不敢腐、不能腐、不想腐的体制机制。公报提出的党内决不允许有腐败分子的藏身之地，表明反腐斗争永远在路上，没有“休止符”。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　关键词8－－高级干部&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　全会提出：高级干部特别是中央领导层组成人员必须以身作则；坚持不忘初心、继续前进，坚持率先垂范、以上率下，为全党全社会作出示范。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　专家解读：谢春涛表示，从严治党，重在以上率下，把高级领导干部这个“关键少数”作为严肃党内政治生活的重点和关键，让领导干部尤其是高级领导干部树立起规矩意识，时刻保持警惕，紧绷纪律红线，既要管好自己，也要管好家属亲友身边人。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　关键词9－－权力监督&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　全会提出：监督是权力正确运行的根本保证，是加强和规范党内政治生活的重要举措。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　专家解读：中国纪检监察学院原副院长李永忠表示，六中全会明确提出，党内不允许有不受制约的权力。权力过分集中、权力随意滥用，就容易产生特权和腐败。因此，必须将权力牢牢关进制度的笼子，完善权力运行的监督机制，形成有权必有责、用权必担责、滥权必追责的制度安排。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　关键词10－－群众路线&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　全会提出：全党必须贯彻党的群众路线，为群众办实事、解难事，当好人民公仆。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　专家解读：戴焰军表示，依靠和服务人民是党的根本准则，要体现在党的具体工作中。公报中特别提到，“形象工程”和“政绩工程”名义上为人民，实际劳民伤财，是权力的滥用，损害了群众利益。对此治理是对反“四风”的进一步延伸，从具体问题抓起，不断把群众路线做到实处。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　关键词11－－民主集中制&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　全会提出：民主集中制是党的根本组织原则，是党内政治生活正常开展的重要制度保障。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　专家解读：国家行政学院教授汪玉凯说，从一些党内落马官员来看，不少贪腐“老虎”都存在执行民主集中制不严格、不彻底的共性问题。民主意识不强，一支笔、一言堂、“个人说了算”，出现权力滥用、贪腐滋生。六中全会提出，党委（党组）主要负责同志，必须发扬民主、善于集中、敢于担责，这进一步明确各级党组织负责人的工作铁律，在任何时候、任何情况下，都不允许以任何理由违反。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　关键词12－－选人用人&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　全会提出：坚持正确选人用人导向，是严肃党内政治生活的组织保证；必须自觉防范和纠正用人上的不正之风和种种偏向。&nbsp;</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\">　　专家解读：“营造良好、健康的党内政治生态，核心是选人用人。”汪玉凯认为，严肃党内政治生活，既要坚决禁止跑官要官、买官卖官、拉票贿选等行为，也要为敢于担当的干部担当、为敢于负责的干部负责。要规范和纯洁党内同志交往，为干部推进改革、探索创新营造良好的容错纠错氛围环境、制度保障。</p></section><p><br/></p><p>责任编辑：张 旭</p><p><br/></p>', '1491011106', '1', '/Public/Picture/2017-04-01/58df06220a681.png');
INSERT INTO `nk_activity` VALUES ('31', '11', '11', '<p>111</p>', '1492071613', '1', '/Public/Picture/2017-04-13/58ef34bdaa945.jpg');

-- ----------------------------
-- Table structure for nk_activity_category
-- ----------------------------
DROP TABLE IF EXISTS `nk_activity_category`;
CREATE TABLE `nk_activity_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT '' COMMENT '分类名称',
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='----------活动分类----------';

-- ----------------------------
-- Records of nk_activity_category
-- ----------------------------
INSERT INTO `nk_activity_category` VALUES ('1', '政府要闻1', '1490344647');
INSERT INTO `nk_activity_category` VALUES ('2', '政府要闻2', '1490344647');

-- ----------------------------
-- Table structure for nk_apply_friends
-- ----------------------------
DROP TABLE IF EXISTS `nk_apply_friends`;
CREATE TABLE `nk_apply_friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) DEFAULT '0' COMMENT '申请人id',
  `to_id` int(11) DEFAULT '0' COMMENT '被申请人id',
  `status` int(11) DEFAULT '0' COMMENT '0未处理；1同意;2拒绝;',
  `content` varchar(255) DEFAULT NULL COMMENT '申请内容',
  `create_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nk_apply_friends
-- ----------------------------
INSERT INTO `nk_apply_friends` VALUES ('24', '60', '65', '0', '您好！我是创文办的创文办01', '1493284640');
INSERT INTO `nk_apply_friends` VALUES ('26', '60', '67', '0', '您好！我是创文办的创文办01', '1493284795');
INSERT INTO `nk_apply_friends` VALUES ('27', '66', '60', '1', '您好！我是区应急办的区应急办02', '1493284868');
INSERT INTO `nk_apply_friends` VALUES ('28', '60', '62', '1', '您好！我是创文办的创文办01', '1493285282');
INSERT INTO `nk_apply_friends` VALUES ('29', '60', '63', '2', '您好！我是创文办的创文办01', '1493285291');
INSERT INTO `nk_apply_friends` VALUES ('30', '60', '64', '0', '您好！我是创文办的创文办01', '1493285307');
INSERT INTO `nk_apply_friends` VALUES ('31', '60', '63', '2', '您好！我是创文办的创文办01', '1493285545');
INSERT INTO `nk_apply_friends` VALUES ('32', '61', '65', '0', '您好！我是创文办的创文办02', '1493344088');

-- ----------------------------
-- Table structure for nk_category
-- ----------------------------
DROP TABLE IF EXISTS `nk_category`;
CREATE TABLE `nk_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类名称',
  `category_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='--------新闻分类';

-- ----------------------------
-- Records of nk_category
-- ----------------------------
INSERT INTO `nk_category` VALUES ('1', '公文');

-- ----------------------------
-- Table structure for nk_chat_room
-- ----------------------------
DROP TABLE IF EXISTS `nk_chat_room`;
CREATE TABLE `nk_chat_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(255) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL COMMENT '聊天成员',
  `create_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COMMENT='聊天房间';

-- ----------------------------
-- Records of nk_chat_room
-- ----------------------------
INSERT INTO `nk_chat_room` VALUES ('1', '随便聊', '62', '1474379357');
INSERT INTO `nk_chat_room` VALUES ('2', '12', '60', '1474379357');
INSERT INTO `nk_chat_room` VALUES ('5', '新的', '60', '1493114774');
INSERT INTO `nk_chat_room` VALUES ('25', '13221 的', '62,63', '1493264153');
INSERT INTO `nk_chat_room` VALUES ('26', '额', '63', '1493264200');
INSERT INTO `nk_chat_room` VALUES ('27', '未命名', '63', '1493271300');
INSERT INTO `nk_chat_room` VALUES ('28', '未命名', '63', '1493271301');
INSERT INTO `nk_chat_room` VALUES ('29', 'test1', '60,62,63,61', '1493276349');
INSERT INTO `nk_chat_room` VALUES ('30', 'test2', '60,62,61', '1493276416');
INSERT INTO `nk_chat_room` VALUES ('31', 'test区位', '61,60,1621', '1493276683');
INSERT INTO `nk_chat_room` VALUES ('32', '未命名', '61', '1493276843');
INSERT INTO `nk_chat_room` VALUES ('33', '未命名', '61', '1493276843');
INSERT INTO `nk_chat_room` VALUES ('34', '2', '1621', '1493276936');
INSERT INTO `nk_chat_room` VALUES ('35', '2', '1621', '1493276937');
INSERT INTO `nk_chat_room` VALUES ('36', 'test去慰问', '1621', '1493279926');
INSERT INTO `nk_chat_room` VALUES ('37', '121大家一起来啊', '62,63,60,61', '1493281817');
INSERT INTO `nk_chat_room` VALUES ('38', '121大家一起来啊', '62,63,60,61', '1493281817');
INSERT INTO `nk_chat_room` VALUES ('39', '12', '62,60,61', '1493281856');
INSERT INTO `nk_chat_room` VALUES ('40', '12', '62,60,61', '1493281857');
INSERT INTO `nk_chat_room` VALUES ('41', '1', '60,61', '1493283524');
INSERT INTO `nk_chat_room` VALUES ('42', '放大', '60,62,63,61', '1493283551');
INSERT INTO `nk_chat_room` VALUES ('43', '12发', '60,61', '1493283564');
INSERT INTO `nk_chat_room` VALUES ('44', '1222', '61', '1493283644');
INSERT INTO `nk_chat_room` VALUES ('45', '六人组', '67', '1493283948');
INSERT INTO `nk_chat_room` VALUES ('46', '21额', '61', '1493285384');
INSERT INTO `nk_chat_room` VALUES ('47', '21额', '61', '1493285384');
INSERT INTO `nk_chat_room` VALUES ('48', '饿', '63,61', '1493285396');
INSERT INTO `nk_chat_room` VALUES ('49', '饿', '63,61', '1493285396');
INSERT INTO `nk_chat_room` VALUES ('50', 'hhhu', '1621', '1493285993');
INSERT INTO `nk_chat_room` VALUES ('51', '2', '66', '1493286847');
INSERT INTO `nk_chat_room` VALUES ('52', '地方方法', '61', '1493287099');
INSERT INTO `nk_chat_room` VALUES ('53', '地方方法', '60,62,63,61', '1493287100');
INSERT INTO `nk_chat_room` VALUES ('54', '未命名', '62,63,60,61', '1493287131');
INSERT INTO `nk_chat_room` VALUES ('55', '未命名', '62,63,60,61', '1493287131');
INSERT INTO `nk_chat_room` VALUES ('56', '未命名', ',60', '1493287096');
INSERT INTO `nk_chat_room` VALUES ('57', '未命名', ',60', '1493287096');
INSERT INTO `nk_chat_room` VALUES ('58', '未命名', '62,63,60,61', '1493287157');
INSERT INTO `nk_chat_room` VALUES ('59', '未命名', '61', '1493287157');
INSERT INTO `nk_chat_room` VALUES ('60', '测试1', '62,63,61', '1493287191');
INSERT INTO `nk_chat_room` VALUES ('61', '测试1', '62,63,61', '1493287191');
INSERT INTO `nk_chat_room` VALUES ('62', '而', '61', '1493287212');
INSERT INTO `nk_chat_room` VALUES ('63', '而', '61', '1493287212');
INSERT INTO `nk_chat_room` VALUES ('64', '今天', '1621,61,62,60', '1493343110');
INSERT INTO `nk_chat_room` VALUES ('65', '今天', '1621,61,62,60', '1493343110');
INSERT INTO `nk_chat_room` VALUES ('66', '未命名', '61,62,1621,60', '1493343284');
INSERT INTO `nk_chat_room` VALUES ('67', '未命名', '61,62,1621,60', '1493343285');
INSERT INTO `nk_chat_room` VALUES ('68', '未命名', '66,1621,61,60', '1493343341');
INSERT INTO `nk_chat_room` VALUES ('69', '未命名', '66,1621,61,60', '1493343342');
INSERT INTO `nk_chat_room` VALUES ('70', '11', '60,62,63,61', '1493343831');
INSERT INTO `nk_chat_room` VALUES ('71', '11', '60,62,63,61', '1493343831');
INSERT INTO `nk_chat_room` VALUES ('72', '烦烦烦', '1621,62,61,60', '1493343890');
INSERT INTO `nk_chat_room` VALUES ('73', '烦烦烦', '1621,62,61,60', '1493343890');
INSERT INTO `nk_chat_room` VALUES ('74', '地方撒', '61,66,60', '1493343954');
INSERT INTO `nk_chat_room` VALUES ('75', '地方撒', '61,66,60', '1493343954');
INSERT INTO `nk_chat_room` VALUES ('76', '手动阀阿飞', '1621,61,62,60', '1493344028');
INSERT INTO `nk_chat_room` VALUES ('77', '手动阀阿飞', '62', '1493344028');
INSERT INTO `nk_chat_room` VALUES ('78', '撒旦', '66', '1493344078');
INSERT INTO `nk_chat_room` VALUES ('79', '撒旦', '66', '1493344078');
INSERT INTO `nk_chat_room` VALUES ('80', '第三方', '1621', '1493344145');
INSERT INTO `nk_chat_room` VALUES ('81', '第三方', '1621', '1493344145');
INSERT INTO `nk_chat_room` VALUES ('82', '的说法啊', '1621', '1493344484');
INSERT INTO `nk_chat_room` VALUES ('83', 'wode', '61,62,1621,60', '1493344590');
INSERT INTO `nk_chat_room` VALUES ('84', '1236', '60,62,63,61', '1493345234');
INSERT INTO `nk_chat_room` VALUES ('85', '9888', '60,62,63,61', '1493345365');

-- ----------------------------
-- Table structure for nk_department
-- ----------------------------
DROP TABLE IF EXISTS `nk_department`;
CREATE TABLE `nk_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ca',
  `parent_id` varchar(100) DEFAULT '0' COMMENT '0:没有父级  逗号隔开',
  `d_name` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `level` int(2) DEFAULT NULL COMMENT '部门等级',
  `department_category_id` int(11) DEFAULT NULL COMMENT '分类id（1委员单位，2成员单位，3街道，4各指挥部，5区级领导）',
  `dp_category_task_id` int(11) DEFAULT '0',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8 COMMENT='-------部门';

-- ----------------------------
-- Records of nk_department
-- ----------------------------
INSERT INTO `nk_department` VALUES ('1', '1', '创文办', null, '1', '-1', '-1', '0');
INSERT INTO `nk_department` VALUES ('2', '1', '诚信体系建设攻关指挥部', null, '2', '4', '4', '0');
INSERT INTO `nk_department` VALUES ('3', '1', '政务行为规范攻关指挥部', null, '2', '4', '4', '0');
INSERT INTO `nk_department` VALUES ('4', '1', '治安管理与交通秩序攻关指挥部', null, '2', '4', '4', '0');
INSERT INTO `nk_department` VALUES ('6', '1', '民生保障和社区文化设施建设攻关指挥部', null, '2', '4', '4', '0');
INSERT INTO `nk_department` VALUES ('7', '1', '区级领导', null, '1', '5', '5', '0');
INSERT INTO `nk_department` VALUES ('10', '1', '未成年人思想道德建设攻关指挥部', null, '2', '4', '4', '0');
INSERT INTO `nk_department` VALUES ('11', '1', '市场监管与公共文化服务体系建设攻关指挥部', null, '2', '4', '4', '0');
INSERT INTO `nk_department` VALUES ('12', '1', '公共服务设施建设攻关指挥部', null, '2', '4', '4', '0');
INSERT INTO `nk_department` VALUES ('13', '1', '创建联络指挥部', null, '2', '4', '4', '0');
INSERT INTO `nk_department` VALUES ('14', '1', '创建督查指挥部', null, '2', '4', '4', '0');
INSERT INTO `nk_department` VALUES ('15', '2,337', '区政府办公室', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('16', '2', '区发改委', null, '3', '0', '2', '0');
INSERT INTO `nk_department` VALUES ('17', '2', '交警南开支队', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('18', '2', '区国税局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('19', '2', '区地税局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('20', '2', '区市场监管局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('21', '2', '区商务委', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('22', '2', '区建管委', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('23', '2', '区卫计委', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('24', '2', '区文化和旅游局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('25', '2', '区环保局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('26', '2', '区安监局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('27', '2', '区财政局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('28', '2', '区行政审批局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('29', '2', '区文明办', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('30', '2', '区金融办', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('31', '2', '区法院', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('32', '2', '文明办', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('33', '2,337', '区工商联', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('34', '2', '区委办公室', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('35', '2', '区法制办', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('36', '2', '交警南开支队', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('37', '2', '区编办', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('38', '2', '公安南开分局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('39', '2', '消防南开支队', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('40', '2', '区教育局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('41', '2', '区应急办', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('42', '2', '区人防办', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('43', '2', '区综治办', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('44', '2', '区民政局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('45', '2', '区人力社保局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('46', '2', '区科委', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('47', '2', '区体育局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('48', '2', '区民宗办', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('49', '2', '区市容园林委', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('50', '2,337', '团区委', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('51', '2', '区体育局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('52', '2', '区老干部局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('53', '2', '区综合执法局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('54', '2', '区环卫局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('55', '2', '区司法局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('56', '2', '区妇联', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('57', '2', '区总工会', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('58', '2', '区社区办', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('59', '2', '区残联', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('61', '2', '区红十字会', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('62', '2', '区工信委', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('63', '2', '区市政局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('64', '2', '区行政审批局', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('65', '2', '区景区管理部门', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('66', '2', '未成年人思想道德建设联席会成员单位', null, '3', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('67', '356', '官易里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('68', '356', '跃升里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('69', '352', '春畅里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('70', '1', '宜君里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('71', '1', '集园里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('72', '1', '留园里社区', null, '3', '6', '6', '0');
INSERT INTO `nk_department` VALUES ('73', '1', '芥园中里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('74', '1', '冶金里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('75', '1', '云阳里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('76', '1', '华阳里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('77', '1', '向阳路社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('78', '1', '战备楼社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('79', '1', '昔阳里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('80', '1', '延安楼社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('81', '1', '延长里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('82', '1', '瑞湾花园社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('83', '1', '大园新居社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('84', '1', '景园里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('85', '1', '燕宇花园社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('86', '1', '安华里社区社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('87', '1', '居华里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('88', '1', '莹华里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('89', '1', '碧华里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('90', '1', '绮华里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('91', '1', '天华里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('92', '1', '地华里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('93', '1', '日华里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('94', '1', '久华里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('95', '1', '长华里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('96', '1', '新城社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('97', '1', '卫安中里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('98', '1', '卫安西里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('99', '1', '瑞德里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('100', '1', '级升里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('101', '1', '桦林园社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('102', '1', '新丽里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('103', '1', '朝园里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('104', '1', '风荷天江社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('105', '1', '格调春天社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('106', '1', '颂禹里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('107', '1', '康舜里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('108', '1', '凯兴公寓社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('109', '1', '宝龙湾社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('110', '1', '五马路社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('111', '1', '怀庆里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('112', '1', '龙凤里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('113', '1', '源德里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('114', '1', '延生里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('115', '1', '紫光苑社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('116', '1', '耀远里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('117', '1', '昆裕里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('118', '1', '南马路社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('119', '1', '天越园社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('120', '1', '天霖园社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('121', '1', '龙亭家园社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('122', '1', '祥丰社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('123', '1', '铜锣湾社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('124', '1', '尚佳新苑社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('125', '1', '后现代社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('126', '1', '壹街区社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('127', '1', '海河社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('128', '1', '荣迁里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('129', '1', '临园里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('130', '1', '复康里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('131', '1', '近园里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('132', '1', '宁福里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('133', '1', '观景里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('134', '1', '观园里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('135', '1', '红医里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('136', '1', '水上公寓社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('137', '1', '欣苑公寓社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('138', '1', '长江里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('139', '1', '长宁里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('140', '1', '风荷园社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('141', '1', '华章里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('142', '1', '佳音里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('143', '1', '龙德里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('144', '1', '龙井里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('145', '1', '南丰里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('146', '1', '三潭东社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('147', '1', '三潭西社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('148', '1', '双峰里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('149', '1', '苏堤路社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('150', '1', '天大北五村', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('151', '1', '天环里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('152', '1', '同富社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('153', '1', '卧龙社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('154', '1', '兴泰路社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('155', '1', '义兴里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('156', '1', '玉皇里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('157', '1', '玉泉北社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('158', '1', '玉泉里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('159', '1', '紫云里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('160', '1', '东王台社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('161', '1', '建华里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('162', '1', '翰园里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('163', '1', '光明路社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('164', '1', '平陆东社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('165', '1', '雅园里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('166', '1', '雅云里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('167', '1', '广灵里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('168', '1', '幸福南社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('169', '1', '芙蓉南里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('170', '1', '华美里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('171', '1', '雅美里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('172', '1', '盛达园社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('173', '1', '嘉陵北里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('174', '1', '罗江里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('175', '1', '南江西里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('176', '1', '雅安东里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('177', '1', '宜宾东里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('178', '1', '川南里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('179', '1', '泊江里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('180', '1', '桂荷园社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('181', '1', '汶川里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('182', '1', '咸阳里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('183', '1', '云龙里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('184', '1', '宜宾西里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('185', '1', '金川里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('186', '1', '南江东里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('187', '1', '易川里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('188', '1', '雅安西里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('189', '1', '淦江里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('190', '1', '昌宁里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('191', '1', '保山南里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('192', '1', '保山北里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('193', '1', '华宁南里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('194', '1', '华宁北里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('195', '1', '横江里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('196', '1', '盈江东里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('197', '1', '盈江西里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('198', '1', '金环里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('199', '1', '金典花园社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('200', '1', '金冠里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('201', '1', '迎水里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('202', '1', '园荫里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('203', '1', '林苑东里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('204', '1', '林苑西里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('205', '1', '林苑北里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('206', '1', '凤园南里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('207', '1', '凤园北里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('208', '1', '迎风里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('209', '1', '鹤园北里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('210', '1', '金厦里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('211', '1', '美云里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('212', '1', '学湖里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('213', '1', '风湖里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('214', '1', '美湖里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('215', '1', '航天北里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('216', '1', '南大西南一社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('217', '1', '南大西南二社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('218', '1', '新园村社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('219', '1', '月环里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('220', '1', '天大四季村社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('221', '1', '照湖里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('222', '1', '天大六村社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('223', '1', '龙兴里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('224', '1', '府湖里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('225', '1', '荣迁西里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('226', '1', '俊城浅水湾社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('227', '1', '宁乐里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('228', '1', '津涞花园社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('229', '1', '凌研里社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('230', '1', '金谷园社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('231', '1', '阳光壹佰社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('232', '1', '仁爱豪景社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('233', '1', '时代奥城社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('234', '1', '宁发阳光公寓社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('235', '1', '星城社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('236', '1', '龙滨园社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('237', '1', '金禧园社区', null, null, '6', '6', '0');
INSERT INTO `nk_department` VALUES ('252', '337', '区人大办公室', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('254', '337', '区政协办公室', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('255', '337', '区委研究室', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('256', '337', '区政府研究室', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('257', '337', '党史研究室', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('258', '337', '区委组织部', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('259', '337', '区委宣传部', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('260', '337', '区委政法委', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('261', '337', '区委统战部', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('262', '337', '区网信办', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('263', '337', '区台办', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('264', '337', '区委党校', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('265', '337', '区级机关工委', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('266', '337', '区档案局', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('269', '337', '区总工会', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('271', '337', '区法院', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('272', '337', '区检察院', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('273', '337', '区人武部', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('274', '337', '区教育局', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('275', '337', '科技园管委会', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('276', '337', '区市容园林委', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('277', '337', '区国资委', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('278', '337', '区编办', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('279', '337', '区房管局', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('280', '337', '区体育局', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('281', '337', '区综合执法局', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('282', '337', '区安监局', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('283', '337', '区法制办', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('284', '337', '区招商合作交流办', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('285', '337', '区人防办', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('286', '337', '区信访办', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('287', '337', '区金融办', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('288', '337', '服装街管委会', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('289', '337', '区残联', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('290', '337', '区红十字会', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('291', '337', '区文联', null, '3', '2', '2', '0');
INSERT INTO `nk_department` VALUES ('292', '338', '天津中医药大学第一附属医院', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('293', '338', '天津市第一中心医院', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('294', '338', '天津市中心妇产科医院', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('295', '338', '天津市传染病医院', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('296', '338', '南开医院', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('297', '338', '中国人民解放军第四六四医院', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('298', '338', '天津市第二人民医院', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('299', '338', '南开大学', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('300', '338', '天津大学', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('301', '338', '天津中医药大学', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('302', '338', '天津市南开中学', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('303', '338', '天津市天津中学', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('304', '338', '天津市幼儿师范学校', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('305', '338', '天津市社会主义学院', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('306', '338', '天津广播电视大学', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('307', '338', '天津艺术职业学院', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('308', '338', '海河剧院', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('309', '338', '天津戏剧博物馆和文庙博物馆管理办公室', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('310', '338', '天津市古文化街管委会', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('311', '338', '天津市图书馆', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('312', '338', '周恩来邓颖超纪念馆', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('313', '338', '天津网球中心', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('314', '338', '天津市游泳运动中心', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('315', '338', '天津奥林匹克中心体育场', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('316', '338', '天津体育馆', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('317', '338', '天津市水上公园（动物园）', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('318', '338', '天津市南翠屏公园管理所', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('319', '338', '天津市社会保险中心南开分中心', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('320', '338', '天津市住房公积金管理中心南开分理部', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('321', '338', '天津市血液中心', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('322', '338', '天津市大中专毕业生就业指导中心', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('323', '338', '天津市燃气集团有限公司', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('324', '338', '南开区邮电局', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('325', '338', '自来水营销三分公司', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('326', '338', '天津市道路桥梁管理处三所', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('327', '338', '天津市排水管理处二所', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('328', '338', '天津移动南开分公司', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('329', '338', '天津电信南开分公司', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('330', '338', '天津联通南开分公司', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('331', '338', '广电网络南开分公司', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('332', '338', '天津市公共交通三公司', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('333', '338', '城西供电南开分公司', null, '3', '1', '1', '0');
INSERT INTO `nk_department` VALUES ('337', '1,7', '成员单位', null, '2', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('338', '1,7', '委员单位', null, '2', '0', '0', '0');
INSERT INTO `nk_department` VALUES ('352', '1', '鼓楼街道', '1492256432', null, '3', '3', '12');
INSERT INTO `nk_department` VALUES ('353', '1', '兴南街道', '1492256488', null, '3', '3', '11');
INSERT INTO `nk_department` VALUES ('354', '1', '广开街道', '1492256510', null, '3', '3', '10');
INSERT INTO `nk_department` VALUES ('355', '1', '长虹街道', '1492256528', null, '3', '3', '9');
INSERT INTO `nk_department` VALUES ('356', '1', '向阳路街道', '1492256544', null, '3', '3', '8');
INSERT INTO `nk_department` VALUES ('357', '1', '嘉陵道街道', '1492256558', null, '3', '3', '7');
INSERT INTO `nk_department` VALUES ('358', '1', '万兴街道', '1492256575', null, '3', '3', '6');
INSERT INTO `nk_department` VALUES ('359', '1', '学府街道', '1492256591', null, '3', '3', '5');
INSERT INTO `nk_department` VALUES ('360', '1', '水上公园街道', '1492256606', null, '3', '3', '4');
INSERT INTO `nk_department` VALUES ('361', '1', '王顶堤街道', '1492256621', null, '3', '3', '3');
INSERT INTO `nk_department` VALUES ('362', '1', '体育中心街道', '1492256635', null, '3', '3', '2');
INSERT INTO `nk_department` VALUES ('363', '1', '华苑街道', '1492256650', null, '3', '3', '1');
INSERT INTO `nk_department` VALUES ('364', '1', '鼓楼街道指挥部', '1492256961', null, '4', '4', '12');
INSERT INTO `nk_department` VALUES ('365', '1', '兴南街道指挥部', '1492256996', null, '4', '4', '11');
INSERT INTO `nk_department` VALUES ('366', '1', '广开街道指挥部', '1492257108', null, '4', '4', '10');
INSERT INTO `nk_department` VALUES ('367', '1', '长虹街道指挥部', '1492257125', null, '4', '4', '9');
INSERT INTO `nk_department` VALUES ('368', '1', '向阳路街道指挥部', '1492257141', null, '4', '4', '8');
INSERT INTO `nk_department` VALUES ('369', '1', '嘉陵道街道指挥部', '1492257154', null, '4', '4', '7');
INSERT INTO `nk_department` VALUES ('370', '1', '万兴街道指挥部', '1492257171', null, '4', '4', '6');
INSERT INTO `nk_department` VALUES ('371', '1', '学府街道指挥部', '1492257186', null, '4', '4', '5');
INSERT INTO `nk_department` VALUES ('372', '1', '水上公园街道指挥部', '1492257198', null, '4', '4', '4');
INSERT INTO `nk_department` VALUES ('373', '1', '王顶堤街道指挥部', '1492257211', null, '4', '4', '3');
INSERT INTO `nk_department` VALUES ('374', '1', '体育中心街道指挥部', '1492257225', null, '4', '4', '2');
INSERT INTO `nk_department` VALUES ('375', '1', '华苑街道指挥部', '1492257239', null, '4', '4', '1');

-- ----------------------------
-- Table structure for nk_department_category
-- ----------------------------
DROP TABLE IF EXISTS `nk_department_category`;
CREATE TABLE `nk_department_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='----------部门分类表----------';

-- ----------------------------
-- Records of nk_department_category
-- ----------------------------
INSERT INTO `nk_department_category` VALUES ('1', '委员单位');
INSERT INTO `nk_department_category` VALUES ('2', '成员单位');
INSERT INTO `nk_department_category` VALUES ('3', '街道');
INSERT INTO `nk_department_category` VALUES ('4', '各指挥部');
INSERT INTO `nk_department_category` VALUES ('6', '社区');

-- ----------------------------
-- Table structure for nk_department_category_task
-- ----------------------------
DROP TABLE IF EXISTS `nk_department_category_task`;
CREATE TABLE `nk_department_category_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nk_department_category_task
-- ----------------------------
INSERT INTO `nk_department_category_task` VALUES ('1', '委员单位');
INSERT INTO `nk_department_category_task` VALUES ('2', '成员单位');
INSERT INTO `nk_department_category_task` VALUES ('3', '街道');
INSERT INTO `nk_department_category_task` VALUES ('4', '各指挥部');
INSERT INTO `nk_department_category_task` VALUES ('6', '社区');

-- ----------------------------
-- Table structure for nk_document
-- ----------------------------
DROP TABLE IF EXISTS `nk_document`;
CREATE TABLE `nk_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) DEFAULT NULL COMMENT '发文单位',
  `title` varchar(255) DEFAULT NULL,
  `content` text COMMENT '工作要点',
  `doc_sn` varchar(255) DEFAULT NULL COMMENT '任务序号',
  `main_content` varchar(255) DEFAULT NULL COMMENT '主要事项',
  `send_time` int(11) DEFAULT NULL COMMENT '发文时间',
  `finish_time` int(11) DEFAULT NULL COMMENT '完成时间',
  `read` int(2) DEFAULT '-1' COMMENT '1 读了 -1 未读',
  `is_delete` int(11) DEFAULT '-1' COMMENT '1删除  -1未删除',
  `file` varchar(255) DEFAULT NULL COMMENT '附件id',
  `sudden_category_id` int(11) DEFAULT NULL COMMENT '突发任务分类id',
  `d_finish` int(11) DEFAULT '-1' COMMENT '1.完成  -1未完成',
  `check_time` int(11) DEFAULT '0' COMMENT '确认完成的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='---------公文管理';

-- ----------------------------
-- Records of nk_document
-- ----------------------------
INSERT INTO `nk_document` VALUES ('66', '1', '1', '<p>123</p>', '2', '12', '1492518958', '1492518958', '-1', '-1', '', '1', '-1', '0');

-- ----------------------------
-- Table structure for nk_document_common
-- ----------------------------
DROP TABLE IF EXISTS `nk_document_common`;
CREATE TABLE `nk_document_common` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '网上申报具体要求（南开表）type=1 ； 具体内容（未成年表网上申报部分）type = 2  ； 测评标准（未成年表实地考察部分）  type = 3 ； 测评标准（未成年表问卷调查部分） type = 4',
  `send_time` int(11) DEFAULT NULL COMMENT '发文时间',
  `finish_time` int(11) DEFAULT NULL COMMENT '完成时间',
  `sudden_category_id` int(11) DEFAULT NULL COMMENT '突发任务分类id',
  `d_finish` int(11) DEFAULT '-1' COMMENT '1.完成  -1未完成',
  `check_time` int(11) DEFAULT '0' COMMENT '确认完成的时间',
  `headline` varchar(255) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '测评项目',
  `index_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT '' COMMENT '指标名称（南开表）type=1 ；工作任务（未成年表网上申报部分）  type = 2  ； 实地考察要求（未成年表实地考察部分）  type = 3 ；问卷主要内容（未成年表问卷调查部分） type = 4',
  `test_content` varchar(255) DEFAULT '' COMMENT '测评内容（南开表）type=1 上报材料和检查提示（未成年表网上申报部分）type = 2   未成年表实地考察部分和问卷调查部分没有',
  `evaluation_standard` varchar(255) DEFAULT '' COMMENT '评测标准(南开表)  未成年表没有',
  `type` int(11) DEFAULT '1' COMMENT '1南开创建全国文明 2未成年网上申报 3未成年实地考察 4未成年问卷调查',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=458 DEFAULT CHARSET=utf8 COMMENT='---------公文管理';

-- ----------------------------
-- Records of nk_document_common
-- ----------------------------
INSERT INTO `nk_document_common` VALUES ('61', '公共广场、主干道：\r\n运用多种形式宣传展示精神文明创建内容。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-36\r\n群众广泛参与\r\n', 'Ⅲ-81\r\n宣传动员\r\n', '城乡公共场所利用多种形式宣传展示精神文明创建内容。', '1');
INSERT INTO `nk_document_common` VALUES ('62', '城市社区：\r\n运用多种形式宣传展示精神文明创建内容。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-36\r\n群众广泛参与\r\n', 'Ⅲ-81\r\n宣传动员\r\n', '城乡公共场所利用多种形式宣传展示精神文明创建内容。', '1');
INSERT INTO `nk_document_common` VALUES ('63', '公共广场、主干道：\r\n运用多种形式宣传展示精神文明创建内容。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-36\r\n群众广泛参与\r\n', 'Ⅲ-81\r\n宣传动员\r\n', '城乡公共场所利用多种形式宣传展示精神文明创建内容。', '1');
INSERT INTO `nk_document_common` VALUES ('64', '饭店：\r\n无露天烧烤、乱排油烟现象。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-11\r\n可持续发展的生态环境\r\n', 'Ⅱ-33\r\n环境管理与环境质量\r\n', 'Ⅲ-77\r\n公众参与\r\n', '开展环境保护主题活动，大力宣传生态文明理念，推进生活方式绿色化。', '1');
INSERT INTO `nk_document_common` VALUES ('65', '主次干道、商业大街：\r\n垃圾箱分类收集垃圾。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-11\r\n可持续发展的生态环境\r\n', 'Ⅱ-33\r\n环境管理与环境质量\r\n', 'Ⅲ-77\r\n公众参与\r\n', '开展环境保护主题活动，大力宣传生态文明理念，推进生活方式绿色化。', '1');
INSERT INTO `nk_document_common` VALUES ('66', '建成区：\r\n没有黑臭水体。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-11\r\n可持续发展的生态环境\r\n', 'Ⅱ-33\r\n环境管理与环境质量\r\n', 'Ⅲ-73 \r\n消除黑臭水体\r\n', '城市建成区内未出现黑臭水体。', '1');
INSERT INTO `nk_document_common` VALUES ('67', '城市二类及二类以上避难场所：\r\n①设有避难场所的标识牌；\r\n②功能完备，设备维护及时。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-10\r\n安全稳定的社会环境\r\n', 'Ⅱ-30\r\n公共安全体系建设\r\n', 'Ⅲ-67\r\n突发公共事件应急处理\r\n', '1）建立减灾、防灾、救灾综合协调机制和灾害应急管理体系，设置明确的城市避难场所，开展社区减灾、防灾宣传教育，建立健全救灾应急预案；', '1');
INSERT INTO `nk_document_common` VALUES ('68', '拨打问题药品举报电话：\r\n查验电话接通及服务情况。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-10\r\n安全稳定的社会环境\r\n', 'Ⅱ-30\r\n公共安全体系建设\r\n', 'Ⅲ-65\r\n食品药品安全监管\r\n', '2）公布举报电话，问题药品得到及时查处。', '1');
INSERT INTO `nk_document_common` VALUES ('69', '①统计建成区登记在册志愿者人数占建成区人口总数的比例≥13%（统计表格）；\r\n此项由中国精神文明网根据日常考评结果提供相应分数。', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚', 'Ⅱ-11\r\n中国文明网联盟网站建设', 'Ⅲ-22\r\n联盟网站建设', '1）建有中国文明网联盟网站，配备专职工作人员，有必需的专项运行经费；\r\n2）通过联盟网站有效开展社会主义核心价值观网上宣传，形成特色宣传品牌；\r\n3）开通官方微信、微博和手机客户端，加入“文明中国”矩阵，利用新媒体平台扩大传播范围和效果。', '1');
INSERT INTO `nk_document_common` VALUES ('70', '①说明本区开展网上精神文明创建活动的情况（说明报告）；', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚', 'Ⅱ-12\r\n网上精神文明建设', 'Ⅲ-23\r\n网络文明传播', '1）开展网上精神文明创建活动，推动线上线下互动，推动与当地媒体融合互动；\r\n2）壮大网络文明传播志愿者队伍，加强网络评论的业务培训。', '1');
INSERT INTO `nk_document_common` VALUES ('71', '②说明本区壮大网络文明传播志愿者队伍，加强网络评论的业务培训的情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚', 'Ⅱ-12\r\n网上精神文明建设', 'Ⅲ-23\r\n网络文明传播', '1）开展网上精神文明创建活动，推动线上线下互动，推动与当地媒体融合互动；\r\n2）壮大网络文明传播志愿者队伍，加强网络评论的业务培训。', '1');
INSERT INTO `nk_document_common` VALUES ('72', '说明本区部署开展创建文明网站活动，加强网络空间治理和网络内容建设，倡导文明办网、文明上网的具体举措和实际效果（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚', 'Ⅱ-12\r\n网上精神文明建设', 'Ⅲ-24\r\n网德建设工程', '1）开展创建文明网站活动，倡导文明办网、文明上网；', '1');
INSERT INTO `nk_document_common` VALUES ('73', '提供本区依法打击网络欺诈、网络谣言和网上淫秽色情信息、查处违法违规网站的情况总结（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚', 'Ⅱ-12\r\n网上精神文明建设', 'Ⅲ-24\r\n网德建设工程', '2）依法打击网络谣言和网上淫秽色情信息，查处违法违规网站。', '1');
INSERT INTO `nk_document_common` VALUES ('74', '说明本区组织学习宣传优秀党员干部的情况（统计表格，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-4\r\n廉洁高效的政务环境', 'Ⅱ-13\r\n党风廉政建设', 'Ⅲ-25\r\n全面从严治党专题教育', '2）大力学习宣传优秀党员干部。', '1');
INSERT INTO `nk_document_common` VALUES ('75', '①提供区委贯彻中央《关于新形势下党内政治生活的若干准则》和《中国共产党党内监督条例》的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-4\r\n廉洁高效的政务环境', 'Ⅱ-13\r\n党风廉政建设', 'Ⅲ-26\r\n落实全面从严治党要求', '强化党委主体责任和纪委监督责任，党风廉政和反腐败教育经常化、制度化。', '1');
INSERT INTO `nk_document_common` VALUES ('76', '②提供反映本区加强党风廉政建设，建立反腐败教育工作制度的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-4\r\n廉洁高效的政务环境', 'Ⅱ-13\r\n党风廉政建设', 'Ⅲ-26\r\n落实全面从严治党要求', '强化党委主体责任和纪委监督责任，党风廉政和反腐败教育经常化、制度化。', '1');
INSERT INTO `nk_document_common` VALUES ('77', '③说明本区运用监督执纪“四种形态”，以严明的纪律推进全面从严治党的情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-4\r\n廉洁高效的政务环境', 'Ⅱ-13\r\n党风廉政建设', 'Ⅲ-26\r\n落实全面从严治党要求', '强化党委主体责任和纪委监督责任，党风廉政和反腐败教育经常化、制度化。', '1');
INSERT INTO `nk_document_common` VALUES ('78', '①提供本区在食品药品安全、工商质检、公共卫生、安全生产、文化旅游、资源环境、农林水利、交通运输、城乡建设等领域推进综合执法的规范文件和工作进展情况；', '1490863606', null, null, '-1', '0', 'Ⅰ-4\r\n廉洁高效的政务环境', 'Ⅱ-14\r\n政务行为规范', 'Ⅲ-27\r\n依法行政', '1）推进政府综合执法，完善行政执法管理；', '1');
INSERT INTO `nk_document_common` VALUES ('79', '②说明本区完善行政执法管理，提高执法和服务水平的情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-4\r\n廉洁高效的政务环境', 'Ⅱ-14\r\n政务行为规范', 'Ⅲ-27\r\n依法行政', '1）推进政府综合执法，完善行政执法管理；', '1');
INSERT INTO `nk_document_common` VALUES ('80', '①列举政府部门规范行政行为、简化办事程序的具体举措（说明报告）；\r\n②说明本区压缩审批时限，减少审批事项，优化审批程序的效果（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-4\r\n廉洁高效的政务环境', 'Ⅱ-14\r\n政务行为规范', 'Ⅲ-27\r\n依法行政', '2）改革行政审批制度，压缩审批时限，减少审批事项，优化审批程序。', '1');
INSERT INTO `nk_document_common` VALUES ('81', '①说明政府部门公布权力清单、执行政务公开制度的情况（说明报告）；\r\n②说明政府部门推进责任清单工作的进展情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-4\r\n廉洁高效的政务环境', 'Ⅱ-14\r\n政务行为规范', 'Ⅲ-28\r\n政务公开', '1）公布权力清单，建立健全权力清单动态管理机制，积极推进责任清单工作；', '1');
INSERT INTO `nk_document_common` VALUES ('82', '列举政府部门的具体举措（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-4\r\n廉洁高效的政务环境', 'Ⅱ-14\r\n政务行为规范', 'Ⅲ-28\r\n政务公开', '2）推进政务公开信息化，加强互联网政务信息数据服务平台和便民服务平台建设。', '1');
INSERT INTO `nk_document_common` VALUES ('83', '①提供区委宣传部、区司法局贯彻落实《关于在公民中开展法治宣传教育的第七个五年规划（2016—2020年）》的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', 'Ⅱ-15\r\n法治宣传教育', 'Ⅲ-29\r\n全民普法教育', '1）完成普法规划任务，引导全体人民自觉尊法、学法、守法、用法；', '1');
INSERT INTO `nk_document_common` VALUES ('84', '②提供反映区委组织部、宣传部和区司法局、人社局贯彻落实《关于完善国家工作人员学法用法制度的意见》的规范文件，说明把宪法法律列入区委中心组学习内容，列为区党校、行政学院、干部学院必修课的情况（说明报告）；', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', 'Ⅱ-15\r\n法治宣传教育', 'Ⅲ-29\r\n全民普法教育', '1）完成普法规划任务，引导全体人民自觉尊法、学法、守法、用法；', '1');
INSERT INTO `nk_document_common` VALUES ('85', '③说明区教育部门在中小学设立法治知识课程的情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', 'Ⅱ-15\r\n法治宣传教育', 'Ⅲ-29\r\n全民普法教育', '1）完成普法规划任务，引导全体人民自觉尊法、学法、守法、用法；', '1');
INSERT INTO `nk_document_common` VALUES ('86', '①说明本区建立法官、检察官、行政执法人员、律师等以案释法制度的情况（说明报告，实景图片）；', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', 'Ⅱ-15\r\n法治宣传教育', 'Ⅲ-29\r\n全民普法教育', '2）落实“谁执法谁普法”的普法责任制，加强普法讲师团、普法志愿者队伍建设；', '1');
INSERT INTO `nk_document_common` VALUES ('87', '②提供本区普法讲师团、普法志愿者队伍建设和活动开展情况（统计表格，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', 'Ⅱ-15\r\n法治宣传教育', 'Ⅲ-29\r\n全民普法教育', '2）落实“谁执法谁普法”的普法责任制，加强普法讲师团、普法志愿者队伍建设；', '1');
INSERT INTO `nk_document_common` VALUES ('88', '①说明法治宣传教育进乡村、进社区、进企业、进单位活动开展情况（说明报告、实景图片）；', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', 'Ⅱ-15\r\n法治宣传教育', 'Ⅲ-29\r\n全民普法教育', '3）开展群众性法治文化活动，全民法治宣传教育的普及率≥80%。', '1');
INSERT INTO `nk_document_common` VALUES ('89', '②说明本区开展“国家宪法日”法治文化活动的情况（说明报告、实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', 'Ⅱ-15\r\n法治宣传教育', 'Ⅲ-29\r\n全民普法教育', '3）开展群众性法治文化活动，全民法治宣传教育的普及率≥80%。', '1');
INSERT INTO `nk_document_common` VALUES ('90', '①提供本区健全公共法律服务体系的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', 'Ⅱ-16\r\n公民权益维护', 'Ⅲ-30\r\n维护公民合法权益', '1）健全公共法律服务体系；', '1');
INSERT INTO `nk_document_common` VALUES ('91', '②统计由财政保障的区级法律援助机构的数量以及区级财政经费投入的总量（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', 'Ⅱ-16\r\n公民权益维护', 'Ⅲ-30\r\n维护公民合法权益', '1）健全公共法律服务体系；', '1');
INSERT INTO `nk_document_common` VALUES ('92', '①说明区级维护劳动者权益的协调部门、协调程序，提供维权举报电话（说明报告）；\r\n②提供反映本区建立进城务工人员最低工资保障制度的规范文件，列举主要措施（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', 'Ⅱ-16\r\n公民权益维护', 'Ⅲ-30\r\n维护公民合法权益', '2）建立维护劳动者权益的协调机制，执行进城务工人员最低工资保障制度；', '1');
INSERT INTO `nk_document_common` VALUES ('93', '①提供反映区有关部门建立保护消费者权益机制的规范文件；\r\n②提供本区保护消费者权益的机构名称及联系方式（说明报告）；\r\n③列举本区受理消费者投诉举报的渠道（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', 'Ⅱ-16\r\n公民权益维护', 'Ⅲ-30\r\n维护公民合法权益', '3）建立健全保护消费者权益的机制，设立受理消费者投诉举报的渠道。', '1');
INSERT INTO `nk_document_common` VALUES ('94', '①提供区委或区委办公室印发的“两学一做”学习教育方案（规范文件）', '1490863606', null, null, '-1', '0', 'Ⅰ-1理想信念教育', 'Ⅱ-1\r\n学习宣传贯彻习近平总书记系列重要讲话精神\r\n', 'Ⅲ-1\r\n干部群众全面深入学习\r\n', '1）把学习贯彻习近平总书记讲话精神作为党委政府一项长期政治任务，制定具体学习计划及实施方案；', '1');
INSERT INTO `nk_document_common` VALUES ('95', '②说明本区在全体党员中深入开展“学党章党规、学系列讲话，做合格党员”学习教育，引导党员干部进一步增强政治意识、大局意识、核心意识、看齐意识，做讲政治、有信念，讲规矩、有纪律，讲道德、有品行，讲奉献、有作为的合格党员的情况（说明报告，实景图片）', '1490863606', null, null, '-1', '0', 'Ⅰ-1理想信念教育', 'Ⅱ-1\r\n学习宣传贯彻习近平总书记系列重要讲话精神\r\n', 'Ⅲ-1\r\n干部群众全面深入学习\r\n', '1）把学习贯彻习近平总书记讲话精神作为党委政府一项长期政治任务，制定具体学习计划及实施方案；', '1');
INSERT INTO `nk_document_common` VALUES ('96', '③提供区委主要负责同志在“两学一做”学习教育中讲党课的情况（说明报告）；', '1490863606', null, null, '-1', '0', 'Ⅰ-1理想信念教育', 'Ⅱ-1\r\n学习宣传贯彻习近平总书记系列重要讲话精神\r\n', 'Ⅲ-1\r\n干部群众全面深入学习\r\n', '1）把学习贯彻习近平总书记讲话精神作为党委政府一项长期政治任务，制定具体学习计划及实施方案；', '1');
INSERT INTO `nk_document_common` VALUES ('97', '④提供区直机关围绕“两学一做”开展专题学习研讨情况（说明报告）；提供反映区委及区直机关开展学习情况的实景图片（每张图片需注明刊发或首播时间、报道内容）', '1490863606', null, null, '-1', '0', 'Ⅰ-1理想信念教育', 'Ⅱ-1\r\n学习宣传贯彻习近平总书记系列重要讲话精神\r\n', 'Ⅲ-1\r\n干部群众全面深入学习\r\n', '2）系统全面学习习近平总书记系列重要讲话精神，抓好《习近平谈治国理政》、《习近平总书记系列重要讲话读本》的学习，专题学习关于精神文明建设的重要论述', '1');
INSERT INTO `nk_document_common` VALUES ('98', '超市、集贸市场：\r\n无过期、变质、伪劣食品。\r\n', '1490863606', null, null, '1', '1491620528', 'Ⅰ-10\r\n安全稳定的社会环境\r\n', 'Ⅱ-30\r\n公共安全体系建设\r\n', 'Ⅲ-65\r\n食品药品安全监管\r\n', '1）食品经营单位和集贸市场不出售过期、变质、伪劣食品，食品安全事故及时查处，无漏报、瞒报情况；', '1');
INSERT INTO `nk_document_common` VALUES ('99', '政务大厅、城市社区、商场超市、集贸市场、中小学校：\r\n①有符合标准的物防、技防、人防、消防设施；\r\n②无占用、堵塞、封闭消防车通道现象。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-10\r\n安全稳定的社会环境\r\n', 'Ⅱ-30\r\n公共安全体系建设\r\n', 'Ⅲ-64\r\n公共安全保障\r\n', '2）社会面、重点单位及社区物防、技防、人防、消防水平符合安全要求。', '1');
INSERT INTO `nk_document_common` VALUES ('100', '医院、社区卫生服务机构：\r\n利用多种形式宣传普及公共卫生知识，倡导健康文明的生活方式。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境\r\n', 'Ⅱ-28\r\n医疗与公共卫生\r\n', 'Ⅲ-61\r\n医疗卫生服务体系\r\n', '1）贯彻《全国医疗卫生服务体系规划纲要（2015-2020年）》，制定本地区具体区域卫生规划和医疗机构设置规划；', '1');
INSERT INTO `nk_document_common` VALUES ('101', '城市社区：\r\n①小区环境绿化美化，卫生状况良好，无乱扔垃圾、随地吐痰现象；\r\n②小区内路面硬化、平整，无明显坑洼积水，无露天排水沟渠；\r\n③生活垃圾定点投放、分类收集，垃圾房、箱（桶）完好、整洁；\r\n④楼门内干净整洁，楼道无堵塞，墙面、玻璃无污秽破损，照明灯完好；\r\n⑤在显著位置张贴公布社区居民公约，倡导邻里和睦、守望相助。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境\r\n', 'Ⅱ-27\r\n公共服务\r\n', 'Ⅲ-60\r\n社区生活环境\r\n', '1）环境绿化美化，卫生状况良好，无脏乱差现象；\r\n2）路面硬化、平整，无明显坑洼积水，排水设施完善，无露天排水沟渠；\r\n3）倡导“垃圾减量分类”，生活垃圾定点投放、分类收集、定时清运；\r\n4）楼门内干净整洁，楼道无堵塞，墙面、玻璃无污秽破损，照明灯完好；\r\n6）制定社区居民公约，倡导邻里和睦、守望相助。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('102', '景区：\r\n①环境卫生干净整洁，垃圾清运及时；\r\n②管理规范有序，无占道经营、违章停车现象；\r\n③经营性场所证照齐全、亮证经营；\r\n④公共厕所保洁及时，无明显异味\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境\r\n', 'Ⅱ-27\r\n公共服务\r\n', 'Ⅲ-59\r\n主要街道和公共场所面貌\r\n', '1）环境卫生干净整洁，无脏乱差现象；\r\n2）依法规范管理，公共秩序良好，文明引导有力。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('103', '集贸市场、商场超市：\r\n①环境卫生干净整洁，垃圾清运及时；\r\n②管理规范有序，无占道经营、违章停车现象；\r\n③经营性场所证照齐全、亮证经营；\r\n④公共厕所保洁及时，无明显异味。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境\r\n', 'Ⅱ-27\r\n公共服务\r\n', 'Ⅲ-59\r\n主要街道和公共场所面貌\r\n', '1）环境卫生干净整洁，无脏乱差现象；\r\n2）依法规范管理，公共秩序良好，文明引导有力。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('104', '公共广场、公园：\r\n①环境卫生干净整洁，垃圾清运及时；\r\n②管理规范有序，无占道经营、违章停车现象；\r\n③经营性场所证照齐全、亮证经营；\r\n④公共厕所保洁及时，无明显异味。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境\r\n', 'Ⅱ-27\r\n公共服务\r\n', 'Ⅲ-59\r\n主要街道和公共场所面貌\r\n', '1）环境卫生干净整洁，无脏乱差现象；\r\n2）依法规范管理，公共秩序良好，文明引导有力。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('105', '主次干道、商业大街、公交站点：\r\n①环境卫生干净整洁，垃圾清运及时；\r\n②管理规范有序，无占道经营、违章停车现象；\r\n③经营性场所证照齐全、亮证经营；\r\n④公共厕所保洁及时，无明显异味。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境\r\n', 'Ⅱ-27\r\n公共服务\r\n', 'Ⅲ-59\r\n主要街道和公共场所面貌\r\n', '1）环境卫生干净整洁，无脏乱差现象；\r\n2）依法规范管理，公共秩序良好，文明引导有力。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('106', '建成区背街小巷：\r\n①路面硬化，无明显坑洼不平；\r\n②排水设施完善，无露天排水沟渠；\r\n③装灯率100%，亮灯率≥95%。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境\r\n', 'Ⅱ-27\r\n公共服务\r\n', 'Ⅲ-57\r\n街道设施\r\n', '2）主干机动车道无被侵占、毁坏现象，主干道装灯率100%，亮灯率99%；\r\n3）街巷道路路面硬化，装灯率100%，亮灯率95%，排水设施完善；\r\n4）城市道路的人行道、非机动车道连续、平整、无损坏和被违规占用现象，行人过街、机非分离、人车分离等安全设施配置完整。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('107', '主次干道、商业大街：\r\n①主干机动车道无被侵占、毁坏现象；\r\n②主干道装灯率100%，亮灯率≥99%；\r\n③人行道、非机动车道连续、平整、无损坏和被违规占用现象；\r\n④行人过街、机非分离、人车分离等安全设施配置完整。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境\r\n', 'Ⅱ-27\r\n公共服务\r\n', 'Ⅲ-57\r\n街道设施\r\n', '2）主干机动车道无被侵占、毁坏现象，主干道装灯率100%，亮灯率99%；\r\n3）街巷道路路面硬化，装灯率100%，亮灯率95%，排水设施完善；\r\n4）城市道路的人行道、非机动车道连续、平整、无损坏和被违规占用现象，行人过街、机非分离、人车分离等安全设施配置完整。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('108', '政务大厅：\r\n①设有无障碍设施；\r\n②管理、使用情况良好。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境\r\n', 'Ⅱ-27\r\n公共服务\r\n', 'Ⅲ-56\r\n无障碍设施\r\n', '道路、公共建筑及设施、新建居住建筑及居住区设有无障碍设施，管理、使用情况良好。', '1');
INSERT INTO `nk_document_common` VALUES ('109', '商场超市：\r\n①设有无障碍设施；\r\n②管理、使用情况良好。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境\r\n', 'Ⅱ-27\r\n公共服务\r\n', 'Ⅲ-56\r\n无障碍设施\r\n', '道路、公共建筑及设施、新建居住建筑及居住区设有无障碍设施，管理、使用情况良好。', '1');
INSERT INTO `nk_document_common` VALUES ('110', '室外公共厕所：\r\n①设有无障碍设施；\r\n②管理、使用情况良好。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境\r\n', 'Ⅱ-27\r\n公共服务\r\n', 'Ⅲ-56\r\n无障碍设施\r\n', '道路、公共建筑及设施、新建居住建筑及居住区设有无障碍设施，管理、使用情况良好。', '1');
INSERT INTO `nk_document_common` VALUES ('111', '新建社区：\r\n①设有无障碍设施；\r\n②管理、使用情况良好。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境\r\n', 'Ⅱ-27\r\n公共服务\r\n', 'Ⅲ-56\r\n无障碍设施\r\n', '道路、公共建筑及设施、新建居住建筑及居住区设有无障碍设施，管理、使用情况良好。', '1');
INSERT INTO `nk_document_common` VALUES ('112', '医院：\r\n①设有无障碍设施；\r\n②管理、使用情况良好。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境\r\n', 'Ⅱ-27\r\n公共服务\r\n', 'Ⅲ-56\r\n无障碍设施\r\n', '道路、公共建筑及设施、新建居住建筑及居住区设有无障碍设施，管理、使用情况良好。', '1');
INSERT INTO `nk_document_common` VALUES ('113', '主次干道、商业大街：\r\n①建有盲道、缘石坡等无障碍设施；\r\n②盲道、缘石坡等无障碍设施无被侵占现象。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境\r\n', 'Ⅱ-27\r\n公共服务\r\n', 'Ⅲ-56\r\n无障碍设施\r\n', '道路、公共建筑及设施、新建居住建筑及居住区设有无障碍设施，管理、使用情况良好。', '1');
INSERT INTO `nk_document_common` VALUES ('114', '社区、主要交通路口、公交车站：\r\n友善对待外来人员，耐心热情回答陌生人的询问。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-25\r\n市民文明素质\r\n', 'Ⅲ-50\r\n友善礼让\r\n', '2）人际关系融洽，友善对待外来人员，耐心热情回答陌生人的询问。', '1');
INSERT INTO `nk_document_common` VALUES ('115', '公交车、地铁：\r\n乘客为老、弱、病、残、孕及怀抱婴儿者主动让座。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-25\r\n市民文明素质\r\n', 'Ⅲ-50\r\n友善礼让\r\n', '1）公共交通工具上为老、弱、病、残、孕及怀抱婴儿者主动让座；', '1');
INSERT INTO `nk_document_common` VALUES ('116', '①说明区直机关工委、组织部、宣传部、教育部门通过个人自学、集体交流、理论研讨、集中培训等多种方式组织干部群众全面学习讲话精神和《习近平谈治国理政》、《习近平总书记系列重要讲话读本》（2016年版）的情况（说明报告）；', '1490863606', null, null, '1', '1491643431', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-1\r\n学习宣传贯彻习近平总书记系列重要讲话精神\r\n', 'Ⅲ-1\r\n干部群众全面深入学习\r\n', '2）系统全面学习习近平总书记系列重要讲话精神，抓好《习近平谈治国理政》、《习近平总书记系列重要讲话读本》的学习，专题学习关于精神文明建设的重要论述。', '1');
INSERT INTO `nk_document_common` VALUES ('117', '②提供区委专题学习习近平总书记关于宣传思想文化工作和精神文明建设的重要论述的情况（说明报告）', '1490863606', null, null, '1', '1491643390', 'Ⅰ-1\r\n理想信念教育\r\nⅡ-1\r\n学习宣传贯彻习近平总书记系列重要讲话精神\r\n', 'Ⅱ-1\r\n学习宣传贯彻习近平总书记系列重要讲话精神\r\n', 'Ⅲ-1\r\n干部群众全面深入学习\r\n', '2）系统全面学习习近平总书记系列重要讲话精神，抓好《习近平谈治国理政》、《习近平总书记系列重要讲话读本》的学习，专题学习关于精神文明建设的重要论述。', '1');
INSERT INTO `nk_document_common` VALUES ('118', '①提供将习近平总书记讲话精神纳入区委中心组学习内容的情况，说明学习次数、具体时间、学习内容（统计表格）；提供本区落实党委中心组学习经验交流座谈会的情况（说明报告）；', '1490863606', null, null, '1', '1491892190', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-1\r\n学习宣传贯彻习近平总书记系列重要讲话精神\r\n', 'Ⅲ-2\r\n健全完善学习制度\r\n', '1）以党委（党组）中心组学习为示范带动，一级抓一级、层层抓学习，完善督查考核办法；', '1');
INSERT INTO `nk_document_common` VALUES ('119', '①提供本区负责残疾儿童、弃婴救助和收养安置工作的机构或部门名称及联系方式（说明报告）；\r\n②提供反映本区落实孤儿供养标准的规范文件。', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', '', 'Ⅲ-31\r\n未成年人、老年人、残疾人、妇女权益保护', '1）做好孤残儿童、弃婴救助和收养安置工作，制定落实孤儿供养标准；', '1');
INSERT INTO `nk_document_common` VALUES ('120', '提供反映本区统筹规划残疾人劳动就业的规范文件，列举优惠政策和扶持保护措施（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', '', 'Ⅲ-31\r\n未成年人、老年人、残疾人、妇女权益保护', '2）统筹规划残疾人劳动就业，制定优惠政策和扶持保护措施；', '1');
INSERT INTO `nk_document_common` VALUES ('121', '①提供反映将老年医疗卫生服务纳入城乡医疗卫生服务规划的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', '', 'Ⅲ-31\r\n未成年人、老年人、残疾人、妇女权益保护', '3）将老年医疗卫生服务纳入城乡医疗卫生服务规划,逐步增加对养老服务的投入；', '1');
INSERT INTO `nk_document_common` VALUES ('122', '②提供区级财政对养老服务的投入经费情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', '', 'Ⅲ-31\r\n未成年人、老年人、残疾人、妇女权益保护', '3）将老年医疗卫生服务纳入城乡医疗卫生服务规划,逐步增加对养老服务的投入；', '1');
INSERT INTO `nk_document_common` VALUES ('123', '①提供本区承担婚姻家庭辅导服务和妇女权益保障工作的机构或部门名称及联系方式（说明报告）；\r\n②说明区有关部门开展妇女权益保障工作的情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', '', 'Ⅲ-31\r\n未成年人、老年人、残疾人、妇女权益保护', '4）有机构承担婚姻家庭辅导服务和妇女权益保障工作。', '1');
INSERT INTO `nk_document_common` VALUES ('124', '列举本区的具体举措（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', 'Ⅱ-17\r\n基层民主政治', 'Ⅲ-32\r\n基层党群组织建设', '加强城市社区、机关、学校、企业和新经济组织、新社会组织等基层党、群组织建设。', '1');
INSERT INTO `nk_document_common` VALUES ('125', '①列举本区的具体举措（说明报告）；\r\n②从建成区选取若干社区，提供社区居委会、社区党支部、业主委员会、物业公司和居民代表共同商讨社区重大事务的情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境', 'Ⅱ-17\r\n基层民主政治', 'Ⅲ-33\r\n社区民主建设与管理', '社区居委会、社区党支部、业主委员会、物业公司和居民代表共同商讨社区重大事务，形成社区事务的民主决策、民主管理和民主监督制度。', '1');
INSERT INTO `nk_document_common` VALUES ('126', '①提供区委、区政府或由其明确的信用体系建设牵头部门贯彻《纲要》的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境', 'Ⅱ-18\r\n推进诚信建设制度化', 'Ⅲ-34\r\n社会信用体系建设', '1）贯彻国务院《社会信用体系建设规划纲要（2014-2020年）》，推进建立覆盖全社会的征信系统，在重点领域建立起信用记录，建设信用信息互联互通、交换共享的平台；', '1');
INSERT INTO `nk_document_common` VALUES ('127', '②说明工商、税务、安全生产、产品质量、食品药品安全、住建、环境保护、交通运输等重点领域推动自身信用信息系统建设、开展从业人员信用记录征集的情况（说明报告）；', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境', 'Ⅱ-18\r\n推进诚信建设制度化', 'Ⅲ-34\r\n社会信用体系建设', '1）贯彻国务院《社会信用体系建设规划纲要（2014-2020年）》，推进建立覆盖全社会的征信系统，在重点领域建立起信用记录，建设信用信息互联互通、交换共享的平台；', '1');
INSERT INTO `nk_document_common` VALUES ('128', '③提供地方公共信用信息网络平台网址，说明网络平台的信用信息记录更新情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境', 'Ⅱ-18\r\n推进诚信建设制度化', 'Ⅲ-34\r\n社会信用体系建设', '1）贯彻国务院《社会信用体系建设规划纲要（2014-2020年）》，推进建立覆盖全社会的征信系统，在重点领域建立起信用记录，建设信用信息互联互通、交换共享的平台；', '1');
INSERT INTO `nk_document_common` VALUES ('129', '提供反映区委、区政府或区文明委推进诚信建设制度化年度工作安排的规范文件。', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境', 'Ⅱ-18\r\n推进诚信建设制度化', 'Ⅲ-34\r\n社会信用体系建设', '2）贯彻中央文明委《关于推进诚信建设制度化的意见》，建立统分结合的工作机制。', '1');
INSERT INTO `nk_document_common` VALUES ('130', '①提供反映本区落实国务院《关于建立完善守信联合激励和失信联合惩戒制度加快推进社会诚信建设的指导意见》的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境', 'Ⅱ-18\r\n推进诚信建设制度化', 'Ⅲ-35\r\n诚信奖惩制度', '依法建立诚信“红黑名单”制度，制定守信优待政策，对失信违法者进行联合惩戒，开展失信突出问题专项整治。', '1');
INSERT INTO `nk_document_common` VALUES ('131', '②分别说明本区守信联合激励和失信联合惩戒机制的主要内容（说明报告）；', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境', 'Ⅱ-18\r\n推进诚信建设制度化', 'Ⅲ-35\r\n诚信奖惩制度', '依法建立诚信“红黑名单”制度，制定守信优待政策，对失信违法者进行联合惩戒，开展失信突出问题专项整治。', '1');
INSERT INTO `nk_document_common` VALUES ('132', '③分别说明本区法院、税务、环保、海关、质检、安监、食药监部门牵头实施守信联合激励或失信联合惩戒的具体举措（说明报告）；', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('133', '④提供本区法院判决案件的实际执结率，由市级文明办征求市级法院意见、作出评价（规范文件）；', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('134', '⑤提供本区纳税信用等级为A级和B级的企业占本区全部注册企业的比例，由市级文明办征求市级税务部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('135', '说明本区媒体对诚信人物、诚信企业、诚信群体的宣传情况（说明报告、统计表格、实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境', '', 'Ⅲ-36\r\n诚信教育实践', '1）媒体发掘宣传诚信人物、诚信企业、诚信群体，批评鞭挞失信败德行为；', '1');
INSERT INTO `nk_document_common` VALUES ('136', '①提供本区生产企业、流通企业、窗口行业、食品药品企业开展诚信主题实践活动的情况（说明报告、实景图片）；', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境', '', 'Ⅲ-36\r\n诚信教育实践', '2）开展“质量第一”、“诚信做产品”、“百城万店讲诚信”、“诚信经营示范点”、“守合同重信用”企业公示、“放心消费创建”等活动，开展“3.15”消费者权益日、“食品安全宣传周”等主题活动。', '1');
INSERT INTO `nk_document_common` VALUES ('137', '②提供本区在“3.15”消费者权益日、“食品安全宣传周”开展集中宣传教育活动的情况（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境', '', 'Ⅲ-36\r\n诚信教育实践', '2）开展“质量第一”、“诚信做产品”、“百城万店讲诚信”、“诚信经营示范点”、“守合同重信用”企业公示、“放心消费创建”等活动，开展“3.15”消费者权益日、“食品安全宣传周”等主题活动。', '1');
INSERT INTO `nk_document_common` VALUES ('138', '①列举打击假冒伪劣的区级主管部门（说明报告）；\r\n②简述打击假冒伪劣的监督、投诉和处置机制的主要内容（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境', 'Ⅱ-19\r\n市场监管', 'Ⅲ-37\r\n依法查处违法经营行为', '1）建立和完善打击假冒伪劣的监督、投诉和处置机制；', '1');
INSERT INTO `nk_document_common` VALUES ('139', '提供本区开展专项行动的情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境', 'Ⅱ-19\r\n市场监管', 'Ⅲ-37\r\n依法查处违法经营行为', '2）开展整治虚假违法广告专项行动。', '1');
INSERT INTO `nk_document_common` VALUES ('140', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-21\r\n国民教育', 'Ⅲ-39\r\n生均义务教育公用经费支出', '＞1000（元）；	＞700（元）；	≤700（元）', '1');
INSERT INTO `nk_document_common` VALUES ('141', '列举本区的主要措施（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-21\r\n国民教育', 'Ⅲ-40\r\n义务教育均衡发展', '1）均衡配置公共教育资源，有具体的扶持弱校措施，实行免试就近入学和信息公开制度；', '1');
INSERT INTO `nk_document_common` VALUES ('142', '①说明中小学建立校务公开与收费公示制度的情况（说明报告）；\r\n②提供区主管部门定期开展教育收费专项检查的情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-21\r\n国民教育', 'Ⅲ-41\r\n学校管理', '推行校务公开和收费公示制度，政府部门定期开展教育收费专项检查，建立学校乱收费责任追究制度。', '1');
INSERT INTO `nk_document_common` VALUES ('143', '①提供区有关部门实施《全民科学素质行动计划纲要》的规范文件；\r\n②说明在全民科普日、科技活动周等时间节点开展科普活动的情况（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-22\r\n科学普及', 'Ⅲ-42\r\n开展全民科学素质行动', '利用全民科普日、科技活动周等时间节点，深化拓展科普活动。', '1');
INSERT INTO `nk_document_common` VALUES ('144', '②提供区级委办局党委（党组）、街道办事处建立完善学习制度的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-1\r\n学习宣传贯彻习近平总书记系列重要讲话精神\r\n', 'Ⅲ-2\r\n健全完善学习制度\r\n', '		Ⅲ-2\r\n健全完善学习制度	1）以党委（党组）中心组学习为示范带动，一级抓一级、层层抓学习，完善督查考核办法；	①提供将习近平总书记讲话精神纳入区委中心组学习内容的情况，说明学习次数、具体时间、学习内容（统计表格）；提供本区落实党委中心组学习经验交流座谈会的情况（说明报告）；	区委宣传部	\r\n1）以党委（党组）中心组学习为示范带动，一级抓一级、层层抓学习，完善督查考核办法；', '1');
INSERT INTO `nk_document_common` VALUES ('145', '③提供区委或区委办公室或区委组织部关于将考核结果纳入领导干部综合评价体系和领导班子建设目标管理体系的规范文件。', '1490863606', null, null, '1', '1491881937', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-1\r\n学习宣传贯彻习近平总书记系列重要讲话精神\r\n', 'Ⅲ-2\r\n健全完善学习制度\r\n', '1）以党委（党组）中心组学习为示范带动，一级抓一级、层层抓学习，完善督查考核办法；', '1');
INSERT INTO `nk_document_common` VALUES ('146', '③提供区委或区委办公室或区委组织部关于将考核结果纳入领导干部综合评价体系和领导班子建设目标管理体系的规范文件。', '1490863606', null, null, '1', '1491888308', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-1\r\n学习宣传贯彻习近平总书记系列重要讲话精神\r\n', 'Ⅲ-2\r\n健全完善学习制度\r\n', '1）以党委（党组）中心组学习为示范带动，一级抓一级、层层抓学习，完善督查考核办法；', '1');
INSERT INTO `nk_document_common` VALUES ('147', '公交车站、长途汽车站：\r\n①乘客排队候车（候船），依次上下车（船）；\r\n②无拥挤、争抢座位等现象。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-25\r\n市民文明素质\r\n', 'Ⅲ-49\r\n文明交通\r\n', '2）车辆、行人各行其道，机动车让行人行横道，无闯红灯、乱穿马路现象，乘客排队候车（候船）、依次上下车（船）；', '1');
INSERT INTO `nk_document_common` VALUES ('148', '主要交通路口（交通人流高峰期）：\r\n①车辆、行人各行其道；\r\n②机动车在有交通信号灯的人行横道处让行；\r\n③无闯红灯、乱穿马路现象。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-25\r\n市民文明素质\r\n', 'Ⅲ-49\r\n文明交通\r\n', '2）车辆、行人各行其道，机动车让行人行横道，无闯红灯、乱穿马路现象，乘客排队候车（候船）、依次上下车（船）；', '1');
INSERT INTO `nk_document_common` VALUES ('149', '主次干道、商业大街：\r\n①车辆、行人各行其道；\r\n②无行人乱穿马路、翻越隔离栏现象。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-25\r\n市民文明素质\r\n', 'Ⅲ-49\r\n文明交通\r\n', '2）车辆、行人各行其道，机动车让行人行横道，无闯红灯、乱穿马路现象，乘客排队候车（候船）、依次上下车（船）；', '1');
INSERT INTO `nk_document_common` VALUES ('150', '影剧院、图书馆、纪念馆、博物馆：\r\n①有序排队入场，无插队现象；\r\n②无大声喧哗吵闹现象；\r\n③无乱扔垃圾、随地吐痰现象；\r\n④有明显禁烟标识，无烟区没有吸烟现象。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-25\r\n市民文明素质\r\n', 'Ⅲ-48\r\n文明行为\r\n', '3）影剧院、图书馆、纪念馆、博物馆、会场、赛场、景区、公园、广场、主要街道、机场、车站、码头等场所文明有序。', '1');
INSERT INTO `nk_document_common` VALUES ('151', '医院：\r\n①有明显禁烟标识；\r\n②无烟区没有吸烟现象。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-25\r\n市民文明素质\r\n', 'Ⅲ-48\r\n文明行为\r\n', '2）城市无烟草广告，室内公共场所和工作场所有明显禁烟标识，无烟区没有吸烟现象；', '1');
INSERT INTO `nk_document_common` VALUES ('152', '长途汽车站：\r\n①有明显禁烟标识；\r\n②无烟区没有吸烟现象。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-25\r\n市民文明素质\r\n', 'Ⅲ-48\r\n文明行为\r\n', '2）城市无烟草广告，室内公共场所和工作场所有明显禁烟标识，无烟区没有吸烟现象；', '1');
INSERT INTO `nk_document_common` VALUES ('153', '宾馆饭店：\r\n①有明显禁烟标识；\r\n②无烟区没有吸烟现象。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-25\r\n市民文明素质\r\n', 'Ⅲ-48\r\n文明行为\r\n', '2）城市无烟草广告，室内公共场所和工作场所有明显禁烟标识，无烟区没有吸烟现象；', '1');
INSERT INTO `nk_document_common` VALUES ('154', '政务大厅：\r\n①有明显禁烟标识；\r\n②无烟区没有吸烟现象。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-25\r\n市民文明素质\r\n', 'Ⅲ-48\r\n文明行为\r\n', '2）城市无烟草广告，室内公共场所和工作场所有明显禁烟标识，无烟区没有吸烟现象；', '1');
INSERT INTO `nk_document_common` VALUES ('155', '主次干道、商业街区、公园景区、公共广场、公交车站、长途汽车站：\r\n①无乱扔杂物、车窗抛物现象；\r\n②无随地吐痰现象；\r\n③无损坏花草树木现象；\r\n④无争吵谩骂现象；\r\n⑤无躺卧公共座椅现象。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-25\r\n市民文明素质\r\n', 'Ⅲ-48\r\n文明行为\r\n', '1）公共场所无争吵谩骂、乱扔杂物、随地吐痰、损坏花木等不文明行为；', '1');
INSERT INTO `nk_document_common` VALUES ('156', '城市公共图书馆、公共博物馆（非文物建筑及遗址类）、公共美术馆、群艺馆、文化馆（站）、科技馆：\r\n①免费开放；\r\n②基本服务项目健全；\r\n③建有学雷锋志愿服务站点，能够正常提供服务。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-24\r\n现代公共文化服务体系建设\r\n', 'Ⅲ-47\r\n文化服务供给\r\n', '1）完善公共文化设施免费开放的保障机制，推进公共图书馆、公共博物馆（非文物建筑及遗址类）、公共美术馆、群艺馆、文化馆（站）等免费开放工作，健全基本服务项目；', '1');
INSERT INTO `nk_document_common` VALUES ('157', '街道、社区：\r\n①晨晚练体育活动点正常运行及设备维护情况；\r\n②晨晚练体育活动点无被挪用或侵占现象。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-24\r\n现代公共文化服务体系建设\r\n', 'Ⅲ-46\r\n基层文化设施\r\n', '3）按照人口规模或服务人群的距离，建设选址适中、与地域条件协调的文体广场，每个街道拥有晨晚练体育活动点5个以上，人均体育场地面积＞1.08平方米，公共体育场地设施状况良好；', '1');
INSERT INTO `nk_document_common` VALUES ('158', '文体广场：\r\n①正常运行及设备维护情况；\r\n②场所无被挪用或侵占现象。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-24\r\n现代公共文化服务体系建设\r\n', 'Ⅲ-46\r\n基层文化设施\r\n', '3）按照人口规模或服务人群的距离，建设选址适中、与地域条件协调的文体广场，每个街道拥有晨晚练体育活动点5个以上，人均体育场地面积＞1.08平方米，公共体育场地设施状况良好；', '1');
INSERT INTO `nk_document_common` VALUES ('159', '街道、社区：\r\n①综合文化站或综合文化服务中心正常运行及设备维护情况；\r\n②综合文化站或综合文化服务中心无被挪用或侵占现象；\r\n③综合文化站或综合文化服务中心向居民开放的情况。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-24\r\n现代公共文化服务体系建设\r\n', 'Ⅲ-46\r\n基层文化设施\r\n', '1）在街道、社区统筹建设综合文化站和综合文化服务中心，开展宣传文化、党员教育、市民教育、科技普及、普法教育等活动；', '1');
INSERT INTO `nk_document_common` VALUES ('160', '（邮政、移动、电信、联通）营业厅：\r\n①从业人员文明用语，礼貌待人，规范服务；\r\n②有高效的投诉处理机制。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境\r\n', 'Ⅱ-20\r\n文明诚信服务\r\n', 'Ⅲ-38\r\n执法监管部门和窗口服务单位\r\n', '1）从业人员文明用语，礼貌待人，规范服务；\r\n2）有高效的投诉处理机制；\r\n3）有效整治门难进、脸难看、事难办等突出问题，无吃拿卡要、慵懒散拖现象。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('161', '分别提供区委党校、行政学院、干部学院的课程安排（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-1\r\n学习宣传贯彻习近平总书记系列重要讲话精神\r\n', 'Ⅲ-2\r\n健全完善学习制度\r\n', '2）党校、行政学院、干部学院把学习讲话精神纳入培训教学。', '1');
INSERT INTO `nk_document_common` VALUES ('162', '①提供反映区委宣传部开展“五位一体”总体布局和“四个全面”战略布局主题宣传教育的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-2\r\n学习宣传贯彻“四个全面”战略布局\r\n', 'Ⅲ-3\r\n加强宣传阐释\r\n', '深入开展协调推进“四个全面”战略布局宣传教育，引导人们深刻认识全面建成小康社会、全面深化改革、全面依法治国、全面从严治党的重大意义、丰富内涵、内在联系和实践要求。', '1');
INSERT INTO `nk_document_common` VALUES ('163', '②说明本区新闻媒体宣传阐释“五位一体”总体布局和“四个全面”战略布局的情况（说明报告，实景图片）；', '1490863606', null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-2\r\n学习宣传贯彻“四个全面”战略布局\r\n', 'Ⅲ-3\r\n加强宣传阐释\r\n', '深入开展协调推进“四个全面”战略布局宣传教育，引导人们深刻认识全面建成小康社会、全面深化改革、全面依法治国、全面从严治党的重大意义、丰富内涵、内在联系和实践要求。', '1');
INSERT INTO `nk_document_common` VALUES ('164', '③提供反映区委宣传部开展新发展理念宣传教育的规范文件和组织宣传阐释新发展理念的情况（说明报告、实景图片）；', '1490863606', null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-2\r\n学习宣传贯彻“四个全面”战略布局\r\n', 'Ⅲ-3\r\n加强宣传阐释\r\n', '深入开展协调推进“四个全面”战略布局宣传教育，引导人们深刻认识全面建成小康社会、全面深化改革、全面依法治国、全面从严治党的重大意义、丰富内涵、内在联系和实践要求。', '1');
INSERT INTO `nk_document_common` VALUES ('165', '④说明本区新闻媒体宣传新发展理念的情况（说明报告，实景图片）', '1490863606', null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-2\r\n学习宣传贯彻“四个全面”战略布局\r\n', 'Ⅲ-3\r\n加强宣传阐释\r\n', '深入开展协调推进“四个全面”战略布局宣传教育，引导人们深刻认识全面建成小康社会、全面深化改革、全面依法治国、全面从严治党的重大意义、丰富内涵、内在联系和实践要求。', '1');
INSERT INTO `nk_document_common` VALUES ('166', '①说明区委区政府领导和专家学者到基层一线的宣讲情况（说明报告，实景图片）；', '1490863606', null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-2\r\n学习宣传贯彻“四个全面”战略布局\r\n', 'Ⅲ-4\r\n开展形势政策教育\r\n', '1）组织领导干部、专家学者到基层一线宣讲，加强思想政治工作，统一思想、凝聚共识；', '1');
INSERT INTO `nk_document_common` VALUES ('167', '②说明运用展览展示等形式开展形势政策教育的情况（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-2\r\n学习宣传贯彻“四个全面”战略布局\r\n', 'Ⅲ-4\r\n开展形势政策教育\r\n', '1）组织领导干部、专家学者到基层一线宣讲，加强思想政治工作，统一思想、凝聚共识；', '1');
INSERT INTO `nk_document_common` VALUES ('168', '提供本区做好热点难点问题舆论引导的情况（统计表格，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-2\r\n学习宣传贯彻“四个全面”战略布局\r\n', 'Ⅲ-4\r\n开展形势政策教育\r\n', '2）积极稳妥做好经济社会热点难点问题的舆论引导，抵制各种错误思潮的影响。', '1');
INSERT INTO `nk_document_common` VALUES ('169', '①提供反映区有关部门用中国特色社会主义理论体系武装党员群众的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-3\r\n中国特色社会主义和中国梦学习宣传教育\r\n', 'Ⅲ-5\r\n学习教育和主题实践系统化长期化\r\n', '1）坚持不懈开展中国特色社会主义理论体系学习教育，坚定干部群众的道路自信、理论自信、制度自信； ', '1');
INSERT INTO `nk_document_common` VALUES ('170', '②提供组织党员干部学习中国特色社会主义理论的情况（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-3\r\n中国特色社会主义和中国梦学习宣传教育\r\n', 'Ⅲ-5\r\n学习教育和主题实践系统化长期化\r\n', '1）坚持不懈开展中国特色社会主义理论体系学习教育，坚定干部群众的道路自信、理论自信、制度自信； ', '1');
INSERT INTO `nk_document_common` VALUES ('171', '②说明区有关部门在重要时间节点（清明、五一、五四、六一、七一、八一、十一及抗战胜利纪念日、烈士纪念日、国家公祭日等），运用网上访谈、基层宣讲、展览展示、演讲征文等方式，组织开展中国道路宣传教育的情况（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-3\r\n中国特色社会主义和中国梦学习宣传教育\r\n', 'Ⅲ-5\r\n学习教育和主题实践系统化长期化\r\n', '2）大力宣传党的十八大以来经济、政治、文化、社会、生态文明建设和党的建设取得的巨大成就，广泛开展党史、国史、社会主义发展史教育，加强中国道路宣传教育，汇聚起同心共筑中国梦的强大力量；', '1');
INSERT INTO `nk_document_common` VALUES ('172', '说明区有关部门推进民族团结进步创建活动、开展民族团结进步宣传教育、宣传民族团结进步模范的情况（实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-23\r\n民族团结进步', 'Ⅲ-43\r\n开展民族团结进步创建活动', '推进民族事务服务体系建设。', '1');
INSERT INTO `nk_document_common` VALUES ('173', '提供本区基本公共文化服务指导标准（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-24\r\n现代公共文化服务体系建设', 'Ⅲ-44\r\n公共文化服务均等化标准化', '1）根据国家基本公共文化服务指导标准，制定与本区经济社会发展水平相适应的地方标准；', '1');
INSERT INTO `nk_document_common` VALUES ('174', '①说明近两年文化投入增幅与财政经常性收入增幅的比较关系（说明报告）；\r\n②说明近两年文化事业费占财政总支出的比重及与全市平均水平相比较的情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-24\r\n现代公共文化服务体系建设', 'Ⅲ-45\r\n文化事业发展', '1）公共财政对文化建设投入的增长幅度高于同级财政经常性收入的增长幅度，文化事业费占财政总支出的比重高于全市平均水平；', '1');
INSERT INTO `nk_document_common` VALUES ('175', '①提供区属范围内有面向社会的三级以上图书馆的名称及联系方式（说明报告）；\r\n②说明区图书馆全国文化信息资源共享工程支中心和免费开放的公共电子阅览室的建立情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-24\r\n现代公共文化服务体系建设', 'Ⅲ-45\r\n文化事业发展', '2）区属范围内有面向社会的三级以上图书馆，建有全国文化信息资源共享工程支中心和免费的公共电子阅览室。', '1');
INSERT INTO `nk_document_common` VALUES ('176', '说明本区用于社区公共文化设施建设，或提供相应面积的综合文化活动场的费用占城市住房开发投资的比率（统计表格）。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-24\r\n现代公共文化服务体系建设', 'Ⅲ-46\r\n基层文化设施', '2）从城市住房开发投资中提取1%，用于社区公共文化设施建设，或提供相应面积的综合文化活动场所；', '1');
INSERT INTO `nk_document_common` VALUES ('177', '①说明本区文体广场建设的总体情况（说明报告）；\r\n②统计本区每个街道拥有晨晚练体育活动点的数量（统计表格）；\r\n③统计本区人均体育场地面积（统计表格）。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-24\r\n现代公共文化服务体系建设', 'Ⅲ-46\r\n基层文化设施', '3）按照人口规模或服务人群的距离，建设选址适中、与地域条件协调的文体广场，每个街道拥有晨晚练体育活动点5个以上，人均体育场地面积＞1.08平方米，公共体育场地设施状况良好；', '1');
INSERT INTO `nk_document_common` VALUES ('178', '提供反映本区完善公共图书馆、公共博物馆（非文物建筑及遗址类）、公共美术馆、群艺馆、文化馆（站）、科技馆免费开放的保障机制的规范文件。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-24\r\n现代公共文化服务体系建设', 'Ⅲ-47\r\n文化服务供给', '1）完善公共文化设施免费开放的保障机制，推进公共图书馆、博物馆、文化馆、纪念馆、美术馆等免费开放工作，健全基本服务项目；', '1');
INSERT INTO `nk_document_common` VALUES ('179', '提供本区开展活动的情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-24\r\n现代公共文化服务体系建设', 'Ⅲ-47\r\n文化服务供给', '2）开展全民阅读活动；', '1');
INSERT INTO `nk_document_common` VALUES ('180', '说明区、街道开展活动的情况（说明报告）。\r\n注：区各级政府组织的综合性全民健身活动（运动项目超过5项），每年1次以上；区各级政府组织的全区性单项型体育活动每年5次以上。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-24\r\n现代公共文化服务体系建设', 'Ⅲ-47\r\n文化服务供给', '3）开展全民健身活动。', '1');
INSERT INTO `nk_document_common` VALUES ('181', '说明本区实施行动计划的主要举措（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-25\r\n市民文明素质', 'Ⅲ-49\r\n文明交通', '1）实施文明交通行动计划；', '1');
INSERT INTO `nk_document_common` VALUES ('182', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-25\r\n市民文明素质', 'Ⅲ-49\r\n文明交通', '3）建成区万车死亡率达到国家畅通工程评价标准。', '1');
INSERT INTO `nk_document_common` VALUES ('183', '①说明本区开展公益活动的情况（说明报告）；', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-25\r\n市民文明素质', 'Ⅲ-51\r\n公益活动', '1）开展扶贫帮困、慈善捐助、支教助学、义务献血、捐赠器官、义演义诊、环境保护、植绿护绿等活动；', '1');
INSERT INTO `nk_document_common` VALUES ('184', '②提供党政机关带头参加公益活动（至少3种）的简要情况（说明报告）；', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', 'Ⅱ-25\r\n市民文明素质', 'Ⅲ-51\r\n公益活动', '1）开展扶贫帮困、慈善捐助、支教助学、义务献血、捐赠器官、义演义诊、环境保护、植绿护绿等活动；', '1');
INSERT INTO `nk_document_common` VALUES ('185', '③统计自愿无偿献血占临床用血的比例或千人口献血人次（统计表格）。\r\n注：临床用血100%来自自愿无偿献血，或千人口献血人次＞10；每献血200毫升折算为1人次。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('186', '列举本区设计开展的特色网络公益活动项目（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', '', '', '2）设计开展网络公益活动。', '1');
INSERT INTO `nk_document_common` VALUES ('187', '①提供反映区有关部门完善见义勇为人员认定机制、补偿救济机制的规范文件；\r\n②列举本区对见义勇为人员的权益保障和抚恤待遇的具体措施（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境', '', 'Ⅲ-52\r\n见义勇为', '完善见义勇为人员认定机制、补偿救济机制，落实见义勇为人员权益保障和抚恤待遇。', '1');
INSERT INTO `nk_document_common` VALUES ('188', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境', 'Ⅱ-26\r\n经济发展', 'Ⅲ-53\r\n财政总收入', '高于全市平均水平；	等于全市\r\n平均水平；	低于全市\r\n平均水平', '1');
INSERT INTO `nk_document_common` VALUES ('189', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境', 'Ⅱ-26\r\n经济发展', 'Ⅲ-54\r\n区级财政收入年增长率', '高于全市平均水平；	等于全市\r\n平均水平；	低于全市\r\n平均水平', '1');
INSERT INTO `nk_document_common` VALUES ('190', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境', 'Ⅱ-26\r\n经济发展', 'Ⅲ-55\r\n城镇居民人均可支配收入或增速', '高于全市平均水平；	等于全市\r\n平均水平；	低于全市\r\n平均水平', '1');
INSERT INTO `nk_document_common` VALUES ('191', '说明本区推进智慧城市建设的主要举措和实际成效（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境', 'Ⅱ-27\r\n公共服务', 'Ⅲ-57\r\n街道设施', '1）建设数字化城市管理系统，并有效运行；', '1');
INSERT INTO `nk_document_common` VALUES ('192', '①说明本区加强社区服务场所建设的具体举措及实际成效（说明报告）；\r\n②分别统计本区近两年的社区综合服务设施覆盖率（统计表格）。', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境', 'Ⅱ-27\r\n公共服务', 'Ⅲ-60\r\n社区生活环境', '5）社区日常管理服务规范有序；', '1');
INSERT INTO `nk_document_common` VALUES ('193', '宾馆：\r\n①从业人员文明用语，礼貌待人，规范服务；\r\n②有高效的投诉处理机制。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境\r\n', 'Ⅱ-20\r\n文明诚信服务\r\n', 'Ⅲ-38\r\n执法监管部门和窗口服务单位\r\n', '1）从业人员文明用语，礼貌待人，规范服务；\r\n2）有高效的投诉处理机制；\r\n3）有效整治门难进、脸难看、事难办等突出问题，无吃拿卡要、慵懒散拖现象。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('194', '银行网点：\r\n①从业人员文明用语，礼貌待人，规范服务；\r\n②有高效的投诉处理机制。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境\r\n', 'Ⅱ-20\r\n文明诚信服务\r\n', 'Ⅲ-38\r\n执法监管部门和窗口服务单位\r\n', '1）从业人员文明用语，礼貌待人，规范服务；\r\n2）有高效的投诉处理机制；\r\n3）有效整治门难进、脸难看、事难办等突出问题，无吃拿卡要、慵懒散拖现象。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('195', '商场超市、集贸市场：\r\n①从业人员文明用语，礼貌待人，规范服务；\r\n②有高效的投诉处理机制。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境\r\n', 'Ⅱ-20\r\n文明诚信服务\r\n', 'Ⅲ-38\r\n执法监管部门和窗口服务单位\r\n', '1）从业人员文明用语，礼貌待人，规范服务；\r\n2）有高效的投诉处理机制；\r\n3）有效整治门难进、脸难看、事难办等突出问题，无吃拿卡要、慵懒散拖现象。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('196', '医院：\r\n①从业人员文明用语，礼貌待人，规范服务；\r\n②有高效的投诉处理机制。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境\r\n', 'Ⅱ-20\r\n文明诚信服务\r\n', 'Ⅲ-38\r\n执法监管部门和窗口服务单位\r\n', '1）从业人员文明用语，礼貌待人，规范服务；\r\n2）有高效的投诉处理机制；\r\n3）有效整治门难进、脸难看、事难办等突出问题，无吃拿卡要、慵懒散拖现象。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('197', '政务大厅：\r\n①办事人员文明用语，礼貌待人，规范服务；\r\n②有高效的投诉处理机制；\r\n③无门难进、脸难看、事难办等突出问题，无慵懒散拖现象。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境\r\n', 'Ⅱ-20\r\n文明诚信服务\r\n', 'Ⅲ-38\r\n执法监管部门和窗口服务单位\r\n', '1）从业人员文明用语，礼貌待人，规范服务；\r\n2）有高效的投诉处理机制；\r\n3）有效整治门难进、脸难看、事难办等突出问题，无吃拿卡要、慵懒散拖现象。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('198', '政务大厅：\r\n①有信用信息互联互通、交换共享的平台；\r\n②运用多种形式开展诚信宣传教育。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境\r\n', 'Ⅱ-18\r\n推进诚信建设制度化\r\n', 'Ⅲ-34\r\n社会信用体系建设\r\n', '1）贯彻国务院《社会信用体系建设规划纲要（2014-2020年）》，推进建立覆盖全社会的征信系统，在重点领域建立起信用记录，建设信用信息互联互通、交换共享的平台；\r\n2）贯彻中央文明委《关于推进诚信建设制度化的意见》，建立统分结合的工作机制。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('199', '在正常工作时间里拨打受理消费者投诉举报电话：\r\n查验热线接通与服务情况。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境\r\n', 'Ⅱ-16\r\n公民权益维护\r\n', 'Ⅲ-30\r\n维护公民合法权益\r\n', '3）建立健全保护消费者权益的机制，设立受理消费者投诉举报的渠道。', '1');
INSERT INTO `nk_document_common` VALUES ('200', '在正常工作时间里拨打劳动者合法权益维权举报电话：\r\n查验热线接通与服务情况。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境\r\n', 'Ⅱ-16\r\n公民权益维护\r\n', 'Ⅲ-30\r\n维护公民合法权益\r\n', '2）建立维护劳动者权益的协调机制，执行进城务工人员最低工资保障制度；', '1');
INSERT INTO `nk_document_common` VALUES ('201', '主次干道、商业街区、公共广场、公园景区、商场超市、集贸市场、宾馆饭店、政务大厅、城市社区、公交车站、长途汽车站等公共场所：\r\n①在公共场所广泛刊播展示公益广告，把社会主义核心价值观和文明风尚有机融入各类生活场景之中，让人们抬眼可见、举足即观；\r\n②在公共场所刊播的公益广告可以是中宣部、中央文明办发布的通稿作品，也可以是本地组织设计制作的、体现地方特色的、符合公益广告宣传主题要求的作品。\r\n建筑工地围挡：\r\n公益广告展示面积不少于建筑工地围挡墙体面积的30%。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-10\r\n“讲文明树新风”公益广告\r\n', 'Ⅲ-21\r\n制作刊播情况\r\n', '1）刊播“讲文明树新风”公益广告和“图说我们的价值观”通稿；\r\n2）自行制作刊播高质量、有新意的公益广告作品；\r\n4）社会公共场所、公共交通工具刊播公益广告。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('202', '在建成区内的景点、景区内询问若干名游客：\r\n请他们对当地旅游市场秩序作出评价。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-9\r\n文明旅游\r\n', 'Ⅲ-19\r\n强化教育引导和监督管理\r\n', '4）治理规范旅游市场秩序。', '1');
INSERT INTO `nk_document_common` VALUES ('203', '建成区内的景点、景区：\r\n运用多种形式开展文明告知、文明提醒、文明规劝。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-9\r\n文明旅游\r\n', 'Ⅲ-19\r\n强化教育引导和监督管理\r\n', '2）机场、车站、码头、旅游集散中心营造文明旅游的浓厚氛围，出入境办证大厅、出境口岸进行文明出境游宣传，主要景点、景区开展文明告知、文明提醒、文明规劝；', '1');
INSERT INTO `nk_document_common` VALUES ('204', '出入境办证大厅、旅行社：\r\n运用多种形式进行文明出境游宣传。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-9\r\n文明旅游\r\n', 'Ⅲ-19\r\n强化教育引导和监督管理\r\n', '2）机场、车站、码头、旅游集散中心营造文明旅游的浓厚氛围，出入境办证大厅、出境口岸进行文明出境游宣传，主要景点、景区开展文明告知、文明提醒、文明规劝；', '1');
INSERT INTO `nk_document_common` VALUES ('205', '旅游集散中心：\r\n运用多种形式宣传展示文明旅游。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-9\r\n文明旅游\r\n', 'Ⅲ-19\r\n强化教育引导和监督管理\r\n', '2）机场、车站、码头、旅游集散中心营造文明旅游的浓厚氛围，出入境办证大厅、出境口岸进行文明出境游宣传，主要景点、景区开展文明告知、文明提醒、文明规劝；', '1');
INSERT INTO `nk_document_common` VALUES ('206', '文化馆或博物馆或纪念馆或少年宫（从本区“道德模范在身边网上大看台”的报送点位中选取1个）：\r\n设有道德模范事迹专题展览。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-7\r\n道德模范评选表彰和学习宣传\r\n', 'Ⅲ-15\r\n开展学习宣传活动\r\n', '2）开展道德模范事迹展览展示、基层巡讲、“故事会”巡演以及道德模范“传帮带”等学习宣传活动。', '1');
INSERT INTO `nk_document_common` VALUES ('207', '建成区的古遗址、古建筑、近现代历史建筑：\r\n①保护完好；\r\n②无人为损坏或疏于管理现象。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-6\r\n文化培育\r\n', 'Ⅲ-13\r\n弘扬中华优秀传统文化\r\n', '2）做好非物质文化遗产传承工作，加强对历史文化名胜、文物古迹、传统古村落的保护。', '1');
INSERT INTO `nk_document_common` VALUES ('208', '宾馆饭店：\r\n运用多种形式进行“节俭养德”、“文明餐桌”温馨提示。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-6\r\n文化培育\r\n', 'Ⅲ-12\r\n培育勤劳节俭之风\r\n', '2）开展文明餐桌活动。', '1');
INSERT INTO `nk_document_common` VALUES ('209', '窗口单位：\r\n在显著位置展示行业规范。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-5\r\n教育实践\r\n', 'Ⅲ-9\r\n融入日常生活\r\n', '2）开展市民公约、村规民约、学生守则、行业规范、职业规则、团体章程等规范守则教育实践活动；', '1');
INSERT INTO `nk_document_common` VALUES ('210', '中小学校：\r\n在显著位置展示学生守则。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-5\r\n教育实践\r\n', 'Ⅲ-9\r\n融入日常生活\r\n', '2）开展市民公约、村规民约、学生守则、行业规范、职业规则、团体章程等规范守则教育实践活动；', '1');
INSERT INTO `nk_document_common` VALUES ('211', '城市社区：\r\n在显著位置展示市民公约。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-5\r\n教育实践\r\n', 'Ⅲ-9\r\n融入日常生活\r\n', '2）开展市民公约、村规民约、学生守则、行业规范、职业规则、团体章程等规范守则教育实践活动；', '1');
INSERT INTO `nk_document_common` VALUES ('212', '青少年课外活动中心：\r\n运用多种形式宣传展示核心价值观。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-5\r\n教育实践\r\n', 'Ⅲ-9\r\n融入日常生活\r\n', '1）依托基层宣传文化阵地和爱国主义教育基地、道德讲堂等，开展核心价值观教育；', '1');
INSERT INTO `nk_document_common` VALUES ('213', '爱国主义教育基地：\r\n运用多种形式宣传展示核心价值观。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-5\r\n教育实践\r\n', 'Ⅲ-9\r\n融入日常生活\r\n', '1）依托基层宣传文化阵地和爱国主义教育基地、道德讲堂等，开展核心价值观教育；', '1');
INSERT INTO `nk_document_common` VALUES ('214', '街道综合文化站、社区综合文化服务中心、青少年课外活动中心：\r\n运用多种形式宣传展示核心价值观。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-5\r\n教育实践\r\n', 'Ⅲ-9\r\n融入日常生活\r\n', '1）依托基层宣传文化阵地和爱国主义教育基地、道德讲堂等，开展核心价值观教育；', '1');
INSERT INTO `nk_document_common` VALUES ('215', '①提供所获荣誉称号的完整名称、颁发时间与颁发机构，并统计所获荣誉称号次数（统计表格）；\r\n②提供所获荣誉称号的牌匾或证书的照片（实景图片）。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', '荣誉称号', '获得国家、有关部委的荣誉称号', '每获得一项有效荣誉称号得1分，4项以上（包括4项）得4分。', '1');
INSERT INTO `nk_document_common` VALUES ('216', '②说明区、街道基层创建工作队伍建设情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-40\r\n完善保障机制\r\n', 'Ⅲ-90\r\n投入保障\r\n', '2）加强基层创建工作力量，切实解决人员配备、工作条件等实际问题，建设一支高素质的工作队伍。', '1');
INSERT INTO `nk_document_common` VALUES ('217', '①提供区委区政府在切实解决创建工作人员配备、工作条件等实际问题方面采取的具体举措及取得的进展成效（说明报告）；', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-40\r\n完善保障机制\r\n', 'Ⅲ-90\r\n投入保障\r\n', '2）加强基层创建工作力量，切实解决人员配备、工作条件等实际问题，建设一支高素质的工作队伍。', '1');
INSERT INTO `nk_document_common` VALUES ('218', '说明区财政对精神文明建设投入随财政收入增长逐步提高的情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-40\r\n完善保障机制\r\n', 'Ⅲ-90\r\n投入保障\r\n', '1）创建活动经费列入财政预算，随财政收入增长逐步提高；', '1');
INSERT INTO `nk_document_common` VALUES ('219', '①提供区文明委制定的创建工作考核评价办法（规范文件）；\r\n②统计本区文明创建中各类荣誉称号管理和淘汰退出情况（说明报告）。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-39\r\n加强动态管理\r\n', 'Ⅲ-89\r\n创建活动常态化\r\n', '3）完善考核评价办法，形成文明创建评先的淘汰退出机制。', '1');
INSERT INTO `nk_document_common` VALUES ('220', '①提供区文明委制定的文明创建工作负面清单（规范文件）；\r\n②说明本区防止形式主义、弄虚作假、突击迎检、扰民行为的制度设计、具体举措和实际成效（说明报告）。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-39\r\n加强动态管理\r\n', 'Ⅲ-89\r\n创建活动常态化\r\n', '）制定文明创建工作负面清单，防止形式主义、弄虚作假、突击迎检和扰民行为等；\r\n2\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('221', '提供区有关部门制定规划的规范文件。', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境', 'Ⅱ-28\r\n医疗与公共卫生', 'Ⅲ-61\r\n医疗卫生服务体系', '1）贯彻《全国医疗卫生服务体系规划纲要（2015-2020年）》，制定本地区具体区域卫生规划和医疗机构设置规划；', '1');
INSERT INTO `nk_document_common` VALUES ('222', '①统计社区卫生服务机构纳入城镇医疗保险定点机构的比率（统计表格）；\r\n②统计每千名常住人口公共卫生人员数（统计表格）；\r\n③说明本区医疗卫生服务机构普及公共卫生知识、倡导健康文明生活方式的情况（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境', 'Ⅱ-28\r\n医疗与公共卫生', 'Ⅲ-61\r\n医疗卫生服务体系', '2）≥95%的社区卫生服务机构纳入城镇医疗保险定点机构，每千名常住人口公共卫生人员数≥0.83人。', '1');
INSERT INTO `nk_document_common` VALUES ('223', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境', 'Ⅱ-29\r\n社会保障', 'Ⅲ-62\r\n社会保险参保计划完成率', '100%；	＞90%；	≤90%', '1');
INSERT INTO `nk_document_common` VALUES ('224', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境', 'Ⅱ-29\r\n社会保障', 'Ⅲ-63\r\n城镇登记失业率', '低于年度控制目标；	等于年度控制目标；	高于年度控制目标', '1');
INSERT INTO `nk_document_common` VALUES ('225', '列举区有关部门的具体措施（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-10安全稳定的社会环境', 'Ⅱ-30\r\n公共安全体系建设', 'Ⅲ-64\r\n公共安全保障', '1）加强社会治安防控体系建设；', '1');
INSERT INTO `nk_document_common` VALUES ('226', '①列举区有关部门的具体措施（说明报告）；\r\n②市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-10安全稳定的社会环境', 'Ⅱ-30\r\n公共安全体系建设', 'Ⅲ-65\r\n食品药品安全监管', '1）食品经营单位和集贸市场不出售过期、变质、伪劣食品，食品安全事故及时查处，无漏报、瞒报情况；', '1');
INSERT INTO `nk_document_common` VALUES ('227', '市文明办征求市主管部门意见，对本区定期监测、检测本行政区域内供水厂出水和用户水龙头水质等饮水安全状况作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-10安全稳定的社会环境', 'Ⅱ-30\r\n公共安全体系建设', 'Ⅲ-66\r\n饮用水安全', '定期监测、检测本行政区域内供水厂出水和用户水龙头水质等饮水安全状况，并向社会公布。', '1');
INSERT INTO `nk_document_common` VALUES ('228', '①提供反映本区建立综合协调机制和灾害应急管理体系的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-10安全稳定的社会环境', 'Ⅱ-30\r\n公共安全体系建设', 'Ⅲ-67\r\n突发公共事件应急处理', '1）建立减灾、防灾、救灾综合协调机制和灾害应急管理体系，设置明确的城市避难场所，开展社区减灾、防灾宣传教育，建立健全救灾应急预案；', '1');
INSERT INTO `nk_document_common` VALUES ('229', '②提供本区开展减灾、防灾宣传教育的情况（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-10安全稳定的社会环境', 'Ⅱ-30\r\n公共安全体系建设', 'Ⅲ-67\r\n突发公共事件应急处理', '1）建立减灾、防灾、救灾综合协调机制和灾害应急管理体系，设置明确的城市避难场所，开展社区减灾、防灾宣传教育，建立健全救灾应急预案；', '1');
INSERT INTO `nk_document_common` VALUES ('230', '提供区有关部门的规范文件。', '1490863606', null, null, '-1', '0', 'Ⅰ-10安全稳定的社会环境', 'Ⅱ-30\r\n公共安全体系建设', 'Ⅲ-67\r\n突发公共事件应急处理', '2）建立突发公共事件应急指挥系统，严格执行事件报告、通报和信息发布制度。', '1');
INSERT INTO `nk_document_common` VALUES ('231', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-10安全稳定的社会环境', 'Ⅱ-30\r\n公共安全体系建设', 'Ⅲ-68\r\n安全生产', '亿元国内生产总值生产安全事故死亡率控制在政府下达的控制指标以内。', '1');
INSERT INTO `nk_document_common` VALUES ('232', '提供区有关部门加强服务管理的情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-10安全稳定的社会环境', 'Ⅱ-31\r\n社会治安', 'Ⅲ-69\r\n治安管理', '1）加强刑满释放人员、吸毒人员等重点人群的服务管理；', '1');
INSERT INTO `nk_document_common` VALUES ('233', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-10安全稳定的社会环境', 'Ⅱ-31\r\n社会治安', 'Ⅲ-69\r\n治安管理', '2）预防和打击涉众型经济犯罪、打击“两抢一盗”等犯罪成效明显；', '1');
INSERT INTO `nk_document_common` VALUES ('234', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-10安全稳定的社会环境', 'Ⅱ-31\r\n社会治安', 'Ⅲ-69\r\n治安管理', '4）有效预防打击传销活动。', '1');
INSERT INTO `nk_document_common` VALUES ('235', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-11\r\n可持续发展的生态环境', 'Ⅱ-32\r\n城市绿化', 'Ⅲ-70\r\n建成区绿化覆盖率', '＞35%；	＞30%；	≤30%', '1');
INSERT INTO `nk_document_common` VALUES ('236', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-11\r\n可持续发展的生态环境', 'Ⅱ-32\r\n城市绿化', 'Ⅲ-71\r\n人均公园绿地面积', '人均公园绿地面积≥5㎡。', '1');
INSERT INTO `nk_document_common` VALUES ('237', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-11\r\n可持续发展的生态环境', 'Ⅱ-33\r\n环境管理与环境质量', 'Ⅲ-73 消除黑臭水体', '城市建成区内未出现黑臭水体。', '1');
INSERT INTO `nk_document_common` VALUES ('238', '提供反映本区文明城区、文明村镇、文明单位、文明家庭创建工作标准及长效机制的规范文件。', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-39\r\n加强动态管理\r\n', 'Ⅲ-89\r\n创建活动常态化\r\n', '1）明确本区创建活动的工作标准、长效机制；', '1');
INSERT INTO `nk_document_common` VALUES ('239', '②提供本区窗口单位开展文明行业创建的情况（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-37\r\n文明单位创建\r\n', 'Ⅲ-85\r\n扩大创建覆盖面\r\n', '2）文明委成员单位开展具有行业特色、职业特点的文明创建活动。', '1');
INSERT INTO `nk_document_common` VALUES ('240', '①提供反映区文明委部署开展文明行业创建的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-37\r\n文明单位创建\r\n', 'Ⅲ-85\r\n扩大创建覆盖面\r\n', '2）文明委成员单位开展具有行业特色、职业特点的文明创建活动。', '1');
INSERT INTO `nk_document_common` VALUES ('241', '④说明本区将文明单位创建延伸到“两新”组织的举措和成效（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-37\r\n文明单位创建\r\n', 'Ⅲ-85\r\n扩大创建覆盖面\r\n', '1）在机关、企事业、学校、社区、景区等普遍开展文明单位创建活动，并延伸到新经济组织、新社会组织；', '1');
INSERT INTO `nk_document_common` VALUES ('242', '③说明基层广泛开展创建文明单位活动的情况（说明报告，实景图片）；', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-37\r\n文明单位创建\r\n', 'Ⅲ-85\r\n扩大创建覆盖面\r\n', '1）在机关、企事业、学校、社区、景区等普遍开展文明单位创建活动，并延伸到新经济组织、新社会组织；', '1');
INSERT INTO `nk_document_common` VALUES ('243', '②提供本区文明单位创建活动的管理办法（规范文件）；', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-37\r\n文明单位创建\r\n', 'Ⅲ-85\r\n扩大创建覆盖面\r\n', '1）在机关、企事业、学校、社区、景区等普遍开展文明单位创建活动，并延伸到新经济组织、新社会组织；', '1');
INSERT INTO `nk_document_common` VALUES ('244', '①提供区文明委部署开展文明单位创建活动的实施意见（规范文件）；', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-37\r\n文明单位创建\r\n', 'Ⅲ-85\r\n扩大创建覆盖面\r\n', '1）在机关、企事业、学校、社区、景区等普遍开展文明单位创建活动，并延伸到新经济组织、新社会组织；', '1');
INSERT INTO `nk_document_common` VALUES ('245', '说明建立群众评价机制的具体办法（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-36\r\n群众广泛参与\r\n', 'Ⅲ-83\r\n群众评价\r\n', '3）建立健全群众评价机制，以群众满意为衡量工作成效的最高标准。', '1');
INSERT INTO `nk_document_common` VALUES ('246', '②列举通过征求民意查找到的突出问题，说明整改情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-36\r\n群众广泛参与\r\n', 'Ⅲ-83\r\n群众评价\r\n', '2）采取问卷调查、民意测评等方式，查找存在突出问题，及时进行整改；', '1');
INSERT INTO `nk_document_common` VALUES ('247', '①统计本区组织问卷调查或民意测评的情况（统计表格）；', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-36\r\n群众广泛参与\r\n', 'Ⅲ-83\r\n群众评价\r\n', '2）采取问卷调查、民意测评等方式，查找存在突出问题，及时进行整改；', '1');
INSERT INTO `nk_document_common` VALUES ('248', '①提供反映区文明委或文明办建立健全群众监督机制的规范文件；\r\n②说明本区为精神文明创建活动开设的举报电话号码、电子邮箱地址，提供有效处理群众举报问题的情况总结（说明报告）。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-36\r\n群众广泛参与\r\n', 'Ⅲ-83\r\n群众评价\r\n', '1）建立健全群众监督机制，认真处理群众举报问题；', '1');
INSERT INTO `nk_document_common` VALUES ('249', '列举具体举措（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-36\r\n群众广泛参与\r\n', 'Ⅲ-82\r\n群众参与\r\n', '2）为市民群众参与创建工作搭建平台、畅通渠道；', '1');
INSERT INTO `nk_document_common` VALUES ('250', '提供本区的情况总结（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-36\r\n群众广泛参与\r\n', 'Ⅲ-82\r\n群众参与\r\n', '1）创建工作规划、重要举措、所办实事等公开发布宣传，听取群众意见建议；', '1');
INSERT INTO `nk_document_common` VALUES ('251', '提供本区主要新闻媒体设立精神文明创建专题专栏的情况（说明报告、实景图片）；提供本区公共场所宣传展示精神文明创建内容的情况（说明报告、实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-36\r\n群众广泛参与\r\n', 'Ⅲ-81\r\n宣传动员\r\n', '主要新闻媒体设有精神文明创建专题专栏，城区公共场所利用多种形式宣传展示精神文明创建内容。', '1');
INSERT INTO `nk_document_common` VALUES ('252', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-11\r\n可持续发展的生态环境', 'Ⅱ-33\r\n环境管理与环境质量', 'Ⅲ-74\r\n城市空气质量', '全年优良天数比例≥80%；	全年优良天数比例≥70%	；全年优良天数比例＜70%', '1');
INSERT INTO `nk_document_common` VALUES ('253', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-11\r\n可持续发展的生态环境', 'Ⅱ-33\r\n环境管理与环境质量', 'Ⅲ-75\r\n城市水环境质量', '1）按国家规范划分集中式饮用水水源保护区，且水质达到或好于Ⅲ类；', '1');
INSERT INTO `nk_document_common` VALUES ('254', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-11\r\n可持续发展的生态环境', 'Ⅱ-33\r\n环境管理与环境质量', 'Ⅲ-75\r\n城市水环境质量', '3）辖区内劣于Ⅴ类水体断面比例连续三年下降无劣于Ⅴ类水体。', '1');
INSERT INTO `nk_document_common` VALUES ('255', '①提供本区部署开展环境保护主题活动的年度安排（规范文件）；', '1490863606', null, null, '-1', '0', 'Ⅰ-11\r\n可持续发展的生态环境', 'Ⅱ-33\r\n环境管理与环境质量', 'Ⅲ-77\r\n公众参与', '开展环境保护主题活动，大力宣传生态文明理念，推进生活方式绿色化。', '1');
INSERT INTO `nk_document_common` VALUES ('256', '②说明区有关部门开展环境保护主题活动，宣传生态文明理念，倡导文明、节约、绿色的消费方式和生活习惯的情况（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-11\r\n可持续发展的生态环境', 'Ⅱ-33\r\n环境管理与环境质量', 'Ⅲ-77\r\n公众参与', '开展环境保护主题活动，大力宣传生态文明理念，推进生活方式绿色化。', '1');
INSERT INTO `nk_document_common` VALUES ('269', '②说明区群团组织积极发挥作用的情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-35\r\n组织领导体制\r\n', 'Ⅲ-80\r\n文明委组织协调\r\n', '2）文明委成员单位落实责任，群团组织积极发挥作用，形成齐抓共管合力。', '1');
INSERT INTO `nk_document_common` VALUES ('270', '①说明落实区文明委成员单位责任制的情况（说明报告）；', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-35\r\n组织领导体制\r\n', 'Ⅲ-80\r\n文明委组织协调\r\n', '2）文明委成员单位落实责任，群团组织积极发挥作用，形成齐抓共管合力。', '1');
INSERT INTO `nk_document_common` VALUES ('271', '提供反映区文明委及其办公室健全工作制度，发挥文明委及其办事机构对精神文明建设规划、指导、协调、督促的重要作用的规范文件。', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-35\r\n组织领导体制\r\n', 'Ⅲ-80\r\n文明委组织协调\r\n', '1）各级文明委及其办公室有健全的工作制度和具体的保障措施，负起统筹协调、督促检查职责； ', '1');
INSERT INTO `nk_document_common` VALUES ('272', '①提供区委区政府专题研究精神文明建设事项的情况（说明报告）；\r\n②提供反映区委区政府主要领导亲自抓精神文明建设的情况说明（说明报告，实景图片）。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-35\r\n组织领导体制\r\n', 'Ⅲ-79\r\n党委政府重视\r\n', '2）党政主要负责同志带头履职尽责，加强对精神文明建设工作的领导。', '1');
INSERT INTO `nk_document_common` VALUES ('273', '提供将精神文明建设纳入区委区政府年度工作要点的规范文件和经济社会发展的总体规划。', '1490863606', null, null, '-1', '0', 'Ⅰ-12长效常态的创建工作机制', 'Ⅱ-35\r\n组织领导体制\r\n', 'Ⅲ-79\r\n党委政府重视\r\n', '1）把精神文明建设纳入经济社会发展总体规划；', '1');
INSERT INTO `nk_document_common` VALUES ('274', '①提供区委或区委办公室贯彻落实《党委（党组）意识形态工作责任制实施办法》的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', '', '', '3）党委切实负起意识形态工作的政治责任和领导责任，经常研究解决重大问题，掌握领导权、话语权；', '1');
INSERT INTO `nk_document_common` VALUES ('275', '②提供区委常委会研究意识形态工作的情况（说明报告）', '1490863606', null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', '', '', '3）党委切实负起意识形态工作的政治责任和领导责任，经常研究解决重大问题，掌握领导权、话语权；', '1');
INSERT INTO `nk_document_common` VALUES ('276', '说明区有关部门开展宣传教育的情况（说明报告，实景图片）', '1490863606', null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', '', '', '4）加强法治意识、国家意识、社会责任意识和家庭意识教育。', '1');
INSERT INTO `nk_document_common` VALUES ('277', '①提供区委落实中办《关于培育和践行社会主义核心价值观的意见》的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-4\r\n组织实施\r\n', 'Ⅲ-6\r\n制定实施方案\r\n', '落实中办《关于培育和践行社会主义核心价值观的意见》和中宣部、中央文明办《培育和践行社会主义核心价值观行动方案》，制定年度工作实施方案。', '1');
INSERT INTO `nk_document_common` VALUES ('278', '②提供区委宣传部、文明办落实《培育和践行社会主义核心价值观行动方案》的年度工作实施方案（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-4\r\n组织实施\r\n', 'Ⅲ-6\r\n制定实施方案\r\n', '落实中办《关于培育和践行社会主义核心价值观的意见》和中宣部、中央文明办《培育和践行社会主义核心价值观行动方案》，制定年度工作实施方案。', '1');
INSERT INTO `nk_document_common` VALUES ('279', '①提供反映本区建立健全党委统一领导、党政齐抓共管、宣传部门组织协调、有关部门分工负责、社会力量积极参与的领导体制和工作机制的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-4\r\n组织实施\r\n', 'Ⅲ-7\r\n建立健全机制\r\n', '完善领导体制和工作机制，明确责任分工，加强督促检查', '1');
INSERT INTO `nk_document_common` VALUES ('280', '②提供反映把社会主义核心价值观建设工作成效纳入本区科学发展考核评价体系的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-4\r\n组织实施\r\n', 'Ⅲ-7\r\n建立健全机制\r\n', '完善领导体制和工作机制，明确责任分工，加强督促检查', '1');
INSERT INTO `nk_document_common` VALUES ('281', '③说明定期开展督查的情况（说明报告）', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-4\r\n组织实施\r\n', 'Ⅲ-7\r\n建立健全机制\r\n', '完善领导体制和工作机制，明确责任分工，加强督促检查', '1');
INSERT INTO `nk_document_common` VALUES ('282', '说明本区运用微信、微博和手机客户端等新媒体拓展核心价值观网上传播平台的情况(说明报告)。', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-5\r\n教育实践\r\n', 'Ⅲ-8\r\n深化推广普及\r\n', '1)主要新闻媒体、都市类媒体、网络媒体持续有效宣传普及12个主题词；', '1');
INSERT INTO `nk_document_common` VALUES ('283', '说明区级相关部门组织专家学者和实际工作者深入城乡基层，运用讲坛论坛、座谈交流、通俗读物等，开展核心价值观宣讲解读的情况（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-5\r\n教育实践\r\n', 'Ⅲ-8\r\n深化推广普及\r\n', '3）编写通俗读物，开展宣讲解读；', '1');
INSERT INTO `nk_document_common` VALUES ('284', '提供区属文艺院团或其他文化团体创作推出展示核心价值观的电影、电视剧、广播剧、小说、诗词、戏剧、动漫、歌曲、曲艺等文艺作品（不少于3种）的剧照、海报、封面照片或新闻报道截图。', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-5\r\n教育实践\r\n', 'Ⅲ-8\r\n深化推广普及\r\n', '4）运用文艺形式和民族民间文化样式传播核心价值观。', '1');
INSERT INTO `nk_document_common` VALUES ('285', '①说明依托图书馆、文化馆、博物馆、纪念馆、科技馆和少年宫等基层文化设施（任选3个点位）组织开展核心价值观教育实践活动的情况（说明报告，实景图片）', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', '', 'Ⅲ-9\r\n融入日常生活\r\n', '1）依托基层宣传文化阵地和爱国主义教育基地、道德讲堂等，开展核心价值观教育；', '1');
INSERT INTO `nk_document_common` VALUES ('286', '②说明把核心价值观教育融入到爱国主义教育基地、民族团结教育基地、科普教育基地、国防教育基地、青少年课外活动基地建设之中的情况（说明报告，实景图片）；', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', '', 'Ⅲ-9\r\n融入日常生活\r\n', '1）依托基层宣传文化阵地和爱国主义教育基地、道德讲堂等，开展核心价值观教育；', '1');
INSERT INTO `nk_document_common` VALUES ('287', '③说明运用道德讲堂、文化讲堂等开展核心价值观教育的情况（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', '', 'Ⅲ-9\r\n融入日常生活\r\n', '1）依托基层宣传文化阵地和爱国主义教育基地、道德讲堂等，开展核心价值观教育；', '1');
INSERT INTO `nk_document_common` VALUES ('288', '①说明把核心价值观融入市民公约、村规民约、行业规范、职业规则、团体章程，在党员干部、公众人物、青少年中开展规范守则教育实践活动的情况（说明报告，实景图片），提供本区张贴悬挂市民公约、村规民约、行业规范的实景图片；', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', '', 'Ⅲ-9\r\n融入日常生活\r\n', '2）开展市民公约、村规民约、学生守则、行业规范、职业规则、团体章程等规范守则教育实践活动；', '1');
INSERT INTO `nk_document_common` VALUES ('289', '②说明本区印制和发放市民文明手册行为教育引导，加强公共文明建设的情况（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', '', 'Ⅲ-9\r\n融入日常生活\r\n', '2）开展市民公约、村规民约、学生守则、行业规范、职业规则、团体章程等规范守则教育实践活动；', '1');
INSERT INTO `nk_document_common` VALUES ('290', '提供反映建立和规范礼仪制度的规范文件，说明开展纪念庆典活动的情况（说明报告，实景图片），提供本区组织升国旗仪式、成人仪式、入党入团入队仪式的实景图片。', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', '', 'Ⅲ-9\r\n融入日常生活\r\n', '3）运用升国旗仪式、成人仪式、入党入团入队仪式等礼仪制度传播主流价值。', '1');
INSERT INTO `nk_document_common` VALUES ('291', '①说明本区广泛开展“我推荐、我评议身边好人”活动的情况（说明报告）；', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-5\r\n教育实践\r\n', 'Ⅲ-10\r\n发挥榜样作用\r\n', '1）开展“我推荐、我评议身边好人”活动；', '1');
INSERT INTO `nk_document_common` VALUES ('292', '②说明举办“道德模范与身边好人”现场交流活动的情况（说明报告、实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-5\r\n教育实践\r\n', 'Ⅲ-10\r\n发挥榜样作用\r\n', '1）开展“我推荐、我评议身边好人”活动；', '1');
INSERT INTO `nk_document_common` VALUES ('293', '①说明本区广泛发现和树立各类先进典型，推动形成群星灿烂和七星共明的先进群体格局的情况（说明报告，实景图片），提供开展先进典型学习宣传活动的现场照片；', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-5\r\n教育实践\r\n', 'Ⅲ-10\r\n发挥榜样作用\r\n', '2）开展最美人物、时代楷模、凡人善举等学习宣传活动', '1');
INSERT INTO `nk_document_common` VALUES ('294', '②说明本区开展时代楷模、最美人物、凡人善举的学习宣传情况（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-5\r\n教育实践\r\n', 'Ⅲ-10\r\n发挥榜样作用\r\n', '2）开展最美人物、时代楷模、凡人善举等学习宣传活动；', '1');
INSERT INTO `nk_document_common` VALUES ('295', '说明区有关部门开展活动，加强公众人物社会责任教育，提升道德境界的情况（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-5\r\n教育实践\r\n', 'Ⅲ-10\r\n发挥榜样作用\r\n', '3）开展文化界、体育界、教育界、科技界人士及企业家“重品行、树形象、做榜样”活动；', '1');
INSERT INTO `nk_document_common` VALUES ('296', '①提供反映区有关部门组织开展活动的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-6\r\n文化培育\r\n', 'Ⅲ-11\r\n培育良好家风家教\r\n', '1）倡导注重家庭、注重家教、注重家风，开展传承好家风好家训活动；', '1');
INSERT INTO `nk_document_common` VALUES ('297', '②说明开展活动的情况（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-6\r\n文化培育\r\n', 'Ⅲ-11\r\n培育良好家风家教\r\n', '1）倡导注重家庭、注重家教、注重家风，开展传承好家风好家训活动；', '1');
INSERT INTO `nk_document_common` VALUES ('298', '①提供区文明委贯彻落实《关于深化家庭文明建设的意见》的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-6\r\n文化培育\r\n', 'Ⅲ-11\r\n培育良好家风家教\r\n', '2）深化文明家庭创建活动，推进领导干部廉洁家庭建设。', '1');
INSERT INTO `nk_document_common` VALUES ('299', '②说明本区开展文明家庭创建活动的情况（说明报告，实景图片）', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-6\r\n文化培育\r\n', 'Ⅲ-11\r\n培育良好家风家教\r\n', '2）深化文明家庭创建活动，推进领导干部廉洁家庭建设。', '1');
INSERT INTO `nk_document_common` VALUES ('300', '说明本区开展主题活动，培养人们的节俭节约、社会责任意识，倡导合理消费，力戒奢侈浪费，制止奢靡之风的情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-6\r\n文化培育\r\n', 'Ⅲ-12\r\n培育勤劳节俭之风\r\n', '1）开展节俭养德全民节约行动；', '1');
INSERT INTO `nk_document_common` VALUES ('301', '①提供区有关部门开展活动的年度安排（规范文件）；', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', '', 'Ⅲ-13\r\n弘扬中华优秀传统文化\r\n', '1）深入推进“我们的节日”主题活动；', '1');
INSERT INTO `nk_document_common` VALUES ('302', '②说明春节、元宵、清明、端午、七夕、中秋、重阳七个传统节日期间全区开展主题活动的情况（说明报告，实景图片）', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', '', 'Ⅲ-13\r\n弘扬中华优秀传统文化\r\n', '1）深入推进“我们的节日”主题活动；', '1');
INSERT INTO `nk_document_common` VALUES ('303', '①提供区文物部门关于加强文化遗产保护传承和合理利用的规范文件，列举本区保护古遗址、古建筑、近现代历史建筑的具体举措及实际成效（说明报告，实景图片）；', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', '', 'Ⅲ-13\r\n弘扬中华优秀传统文化\r\n', '2）做好非物质文化遗产传承工作，加强对历史文化名胜、文物古迹、传统古村落的保护。', '1');
INSERT INTO `nk_document_common` VALUES ('304', '②说明本区历史文化街区划定和历史建筑确定工作的进展情况（说明报告）；', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', '', 'Ⅲ-13\r\n弘扬中华优秀传统文化\r\n', '2）做好非物质文化遗产传承工作，加强对历史文化名胜、文物古迹、传统古村落的保护。', '1');
INSERT INTO `nk_document_common` VALUES ('305', '③市文明办征求市文物主管部门意见，对本区无重大文物违法案件、文物建筑火灾事故、盗窃盗掘文物案件和不可移动文物大规模消失情况作出评价。', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', '', 'Ⅲ-13\r\n弘扬中华优秀传统文化\r\n', '2）做好非物质文化遗产传承工作，加强对历史文化名胜、文物古迹、传统古村落的保护。', '1');
INSERT INTO `nk_document_common` VALUES ('306', '④提供本区落实国办《关于支持戏曲传承发展若干政策的通知》的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', '', 'Ⅲ-13\r\n弘扬中华优秀传统文化\r\n', '2）做好非物质文化遗产传承工作，加强对历史文化名胜、文物古迹、传统古村落的保护。', '1');
INSERT INTO `nk_document_common` VALUES ('307', '⑤说明本区加大政府购买服务力度，推动戏曲进校园的情况（说明报告）；', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', '', 'Ⅲ-13\r\n弘扬中华优秀传统文化\r\n', '2）做好非物质文化遗产传承工作，加强对历史文化名胜、文物古迹、传统古村落的保护。', '1');
INSERT INTO `nk_document_common` VALUES ('308', '⑥提供戏曲进校园的实景图片（每张图片需注明主办单位、学校名称、演出院团、演出曲种、演出剧目）。', '1490863606', null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', '', 'Ⅲ-13\r\n弘扬中华优秀传统文化\r\n', '2）做好非物质文化遗产传承工作，加强对历史文化名胜、文物古迹、传统古村落的保护。', '1');
INSERT INTO `nk_document_common` VALUES ('309', '①提供区文明委或文明办制定的道德模范评选表彰办法（规范文件）', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-7\r\n道德模范评选表彰和学习宣传\r\n', 'Ⅲ-14\r\n选树道德模范\r\n', '1）建立完善道德模范评选表彰制度，发动群众选树典型性、先进性、示范性强的道德标杆；', '1');
INSERT INTO `nk_document_common` VALUES ('310', '②说明本区广泛发动群众推荐道德模范的情况（说明报告）；', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-7\r\n道德模范评选表彰和学习宣传\r\n', 'Ⅲ-14\r\n选树道德模范\r\n', '1）建立完善道德模范评选表彰制度，发动群众选树典型性、先进性、示范性强的道德标杆；', '1');
INSERT INTO `nk_document_common` VALUES ('311', '③提供本区入选全国道德模范（含提名奖）名单和人数（说明报告）；\r\n④提供本区入选市级、区级道德模范的人数和名单（说明报告）。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-7\r\n道德模范评选表彰和学习宣传\r\n', 'Ⅲ-14\r\n选树道德模范\r\n', '1）建立完善道德模范评选表彰制度，发动群众选树典型性、先进性、示范性强的道德标杆；', '1');
INSERT INTO `nk_document_common` VALUES ('312', '①提供反映区文明委或文明办建立健全帮扶礼遇道德模范制度的规范文件；\r\n②说明本区帮扶道德模范的人数、资金及具体举措（说明报告）；\r\n③列举区文明委贯彻中央文明委《全国道德模范荣誉称号管理暂行办法》的具体举措（说明报告）。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-7\r\n道德模范评选表彰和学习宣传\r\n', 'Ⅲ-14\r\n选树道德模范\r\n', '2）建立健全道德模范帮扶礼遇制度，加强对道德模范荣誉称号的管理。', '1');
INSERT INTO `nk_document_common` VALUES ('313', '提供在区级媒体开办专题专栏进行道德模范和身边好人等重大先进典型宣传的情况（说明报告、统计表格、实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-7\r\n道德模范评选表彰和学习宣传\r\n', 'Ⅲ-15\r\n开展学习宣传活动\r\n', '1）在媒体开展“德耀中华”道德模范等重大先进典型专题宣传。', '1');
INSERT INTO `nk_document_common` VALUES ('314', '提供本区开展道德模范学习宣传活动的样报图片或视频截图或实景图片（实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-7\r\n道德模范评选表彰和学习宣传\r\n', 'Ⅲ-15\r\n开展学习宣传活动\r\n', '2）开展道德模范事迹展览展示、基层巡讲、“故事会”巡演以及道德模范“传帮带”等学习宣传活动。', '1');
INSERT INTO `nk_document_common` VALUES ('315', '①提供区文明委推进志愿服务制度化的年度工作安排（规范文件）', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-8\r\n志愿服务制度化\r\n', 'Ⅲ-16\r\n制度化建设\r\n', '1）落实中央文明委《关于推进志愿服务制度化的意见》', '1');
INSERT INTO `nk_document_common` VALUES ('316', '②提供区委宣传部或文明办落实《关于支持和发展志愿服务组织的意见》的规范文件，说明本区支持和发展志愿服务组织的具体举措及实际成效（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-8\r\n志愿服务制度化\r\n', 'Ⅲ-16\r\n制度化建设\r\n', '1）落实中央文明委《关于推进志愿服务制度化的意见》', '1');
INSERT INTO `nk_document_common` VALUES ('320', '①统计建成区登记在册志愿者人数占建成区人口总数的比例≥13%（统计表格）；\r\n②说明注册志愿者参加志愿服务活动的人数占注册志愿者总人数的比例的情况（说明报告）。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', '', '', '2）大力弘扬志愿精神，积极培育志愿服务文化，市民对志愿服务活动认同和支持率≥90%，注册志愿者人数占城市建成区常住人口比例≥10%，注册志愿者参加志愿服务活动的人数占注册志愿者总人数的比例≥70%，注册志愿者每年人均参加志愿服务活动的时间≥25个小时；', '1');
INSERT INTO `nk_document_common` VALUES ('321', '①提供区文明办发挥牵头作用，协调各有关部门开展志愿服务工作的情况（说明报告）；', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', '', '', 'Ⅰ-3\r\n培育文明道德风尚			2）大力弘扬志愿精神，积极培育志愿服务文化，市民对志愿服务活动认同和支持率≥90%，注册志愿者人数占城市建成区常住人口比例≥10%，注册志愿者参加志愿服务活动的人数占注册志愿者总人数的比例≥70%，注册志愿者每年人均参加志愿服务活动的时间≥25个小时；\r\n			3）建立健全组织协调、注册培训、活动运行、服务记录、回馈激励等机制。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('322', '②从建成区抽选若干社区或单位，每个社区或单位需提供：\r\n分别说明志愿者登记注册、服务记录、关系转接、兑换服务、褒奖激励的情况（说明报告）。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', '', '', 'Ⅰ-3\r\n培育文明道德风尚			2）大力弘扬志愿精神，积极培育志愿服务文化，市民对志愿服务活动认同和支持率≥90%，注册志愿者人数占城市建成区常住人口比例≥10%，注册志愿者参加志愿服务活动的人数占注册志愿者总人数的比例≥70%，注册志愿者每年人均参加志愿服务活动的时间≥25个小时；\r\n			3）建立健全组织协调、注册培训、活动运行、服务记录、回馈激励等机制。\r\n', '1');
INSERT INTO `nk_document_common` VALUES ('323', '提供区文明委或文明办下发的社区志愿服务工作流程和活动项目的规范文件。', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-8\r\n志愿服务制度化\r\n', 'Ⅲ-17\r\n志愿服务活动\r\n', '1）落实中央文明办《社区志愿服务方案》，确定社区志愿服务的工作流程和活动项目；', '1');
INSERT INTO `nk_document_common` VALUES ('324', '①提供区有关部门开展关爱空巢老人、留守儿童、困难职工、残疾人志愿服务活动的年度工作安排（规范文件），分别统计活动情况（统计表格）；', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-8\r\n志愿服务制度化\r\n', 'Ⅲ-17\r\n志愿服务活动\r\n', '2）开展关爱空巢老人、留守儿童、困难职工、残疾人志愿服务活动，开展党员志愿服务，开展文明旅游、文明交通、文明上网等志愿服务活动，组织专业志愿服务队开展志愿服务。', '1');
INSERT INTO `nk_document_common` VALUES ('325', '②说明开展党员志愿服务的情况（说明报告，实景图片）；', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-8\r\n志愿服务制度化\r\n', 'Ⅲ-17\r\n志愿服务活动\r\n', '2）开展关爱空巢老人、留守儿童、困难职工、残疾人志愿服务活动，开展党员志愿服务，开展文明旅游、文明交通、文明上网等志愿服务活动，组织专业志愿服务队开展志愿服务。', '1');
INSERT INTO `nk_document_common` VALUES ('326', '④分别说明本区开展文明旅游、文明交通、文明上网志愿服务的情况（说明报告，实景图片）；', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('327', '⑤从建成区抽选若干社区，提供文化、医疗卫生、法律、环保、消防等专业志愿服务队进社区开展志愿服务的情况（说明报告，实景图片）；', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('328', '⑥提供本区贯彻中宣部、中央文明办等部门《关于公共文化设施开展学雷锋志愿服务的实施意见》的规范文件，说明本区推进公共文化设施学雷锋志愿服务的情况（说明报告，实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('329', '①提供建立区级联席会议制度的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('330', '②提供每年召开联席会议的情况记录（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-9\r\n文明旅游\r\n', 'Ⅲ-18\r\n制度机制建设\r\n', '1）建立部门联席会议或工作领导小组，形成统筹协调，各方联动的工作制度；', '1');
INSERT INTO `nk_document_common` VALUES ('331', '①提供区文明办或旅游部门落实《暂行办法》的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-9\r\n文明旅游\r\n', 'Ⅲ-18\r\n制度机制建设\r\n', '1）建立部门联席会议或工作领导小组，形成统筹协调，各方联动的工作制度；', '1');
INSERT INTO `nk_document_common` VALUES ('332', '②说明建立游客不文明信息通报机制的具体举措和执行情况（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-9\r\n文明旅游\r\n', 'Ⅲ-18\r\n制度机制建设\r\n', '2）落实《游客不文明行为记录管理暂行办法》，建立游客不文明信息通报机制。', '1');
INSERT INTO `nk_document_common` VALUES ('333', '提供区级媒体加强文明旅游正面引导与反面曝光的情况（说明报告、统计表格、实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-9\r\n文明旅游\r\n', 'Ⅲ-18\r\n制度机制建设\r\n', '2）落实《游客不文明行为记录管理暂行办法》，建立游客不文明信息通报机制。', '1');
INSERT INTO `nk_document_common` VALUES ('334', '①提供区级旅游部门制定的规范文件；', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-9\r\n文明旅游\r\n', 'Ⅲ-19\r\n强化教育引导和监督管理\r\n', '1）新闻媒体做好文明旅游正面引导和反面曝光，旅游黄金时节有热潮，宣传引导常态化；', '1');
INSERT INTO `nk_document_common` VALUES ('335', '②说明本区在把好“六关”方面的具体举措（说明报告）。', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-9\r\n文明旅游\r\n', 'Ⅲ-19\r\n强化教育引导和监督管理\r\n', '3）落实行前教育、行中引导、行后总结制度，把好护照关、组团关、出境关、交通关、落地关、行程关。', '1');
INSERT INTO `nk_document_common` VALUES ('336', '市文明办征求市主管部门意见、作出评价（规范文件）。', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-9\r\n文明旅游\r\n', 'Ⅲ-19\r\n强化教育引导和监督管理\r\n', '4）治理规范旅游市场秩序。', '1');
INSERT INTO `nk_document_common` VALUES ('337', '①提供反映本区落实《广告法》、《公益广告促进和管理暂行办法》，制定具体举措的规范文件，说明本区贯彻中央文明办2016年全国公益广告工作推进会的有关情况（说明报告）；', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-10\r\n“讲文明树新风”公益广告\r\n', 'Ⅲ-20\r\n公益广告宣传形成制度\r\n', '1）落实《广告法》、《公益广告促进和管理暂行办法》，健全完善文明委统筹协调、相关职能部门各负其责的领导体制和工作机制；', '1');
INSERT INTO `nk_document_common` VALUES ('338', '②提供反映本区建立健全文明委统筹指导，工商、新闻出版广电、住建、交通运输、工信、网信等部门各负其责的运行机制的规范文件。', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-10\r\n“讲文明树新风”公益广告\r\n', 'Ⅲ-20\r\n公益广告宣传形成制度\r\n', '1）落实《广告法》、《公益广告促进和管理暂行办法》，健全完善文明委统筹协调、相关职能部门各负其责的领导体制和工作机制；', '1');
INSERT INTO `nk_document_common` VALUES ('339', '①提供反映本区鼓励、支持公益广告活动的规范文件；\r\n②说明本区鼓励、支持、引导单位和个人以提供资金、技术、劳动力、智力成果、媒介资源等方式参与公益广告宣传的情况（说明报告）。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-10\r\n“讲文明树新风”公益广告\r\n', 'Ⅲ-21\r\n制作刊播情况\r\n', '3）出台公益广告的财政扶持、税收优惠和相关激励政策。', '1');
INSERT INTO `nk_document_common` VALUES ('340', '提供本区利用报纸、电视、互联网等媒体刊播公益广告的情况（说明报告、统计表格、实景图片）。', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-10\r\n“讲文明树新风”公益广告\r\n', 'Ⅲ-21\r\n制作刊播情况\r\n', '3）报纸、广播、电视、期刊、互联网等媒体刊播公益广告', '1');
INSERT INTO `nk_document_common` VALUES ('341', '①提供主次干道、商场、宾馆、商业街区、城市社区、广场、公园、机场、车站、码头等公共场所刊播公益广告的情况（实景图片）；\r\n②提供建筑工地围挡、景观灯杆等构筑物刊播公益广告的情况（实景图片）。\r\n注：①在各类公共场所和公共交通工具广泛刊播展示公益广告，把社会主义核心价值观和文明风尚有机融入各类生活场景之中，让人们抬眼可见、举足即观。\r\n②公益广告可以是中宣部、中央文明办发布的通稿作品，也可以是本地组织设计制作的、体现地方特色的、符合公益广告宣传主题要求的作品。\r\n', '1490863606', null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\n', 'Ⅱ-10\r\n“讲文明树新风”公益广告\r\n', 'Ⅲ-21\r\n制作刊播情况\r\n', '4）社会公共场所、公共交通工具刊播公益广告。', '1');
INSERT INTO `nk_document_common` VALUES ('343', '①提供市属新闻媒体开展成就宣传的情况（统计表格，实景图片）；', '1490863606', null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-3\r\n中国特色社会主义和中国梦学习宣传教育\r\n', 'Ⅲ-5\r\n学习教育和主题实践系统化长期化\r\n', '2）大力宣传党的十八大以来经济、政治、文化、社会、生态文明建设和党的建设取得的巨大成就，广泛开展党史、国史、社会主义发展史教育，加强中国道路宣传教育，汇聚起同心共筑中国梦的强大力量；', '1');
INSERT INTO `nk_document_common` VALUES ('344', '①围绕贯彻落实中央文明委工作安排，召开会议进行研究部署，有会议通知、领导讲话等材料。', null, null, null, '-1', '0', '1.领导体制和工作机制', '1）召开会议进行安排部署，制定下发专门的工作方案或责任分工。', '上报：会议通知（规范文件）、领导讲话（规范文件）等材料。 注：会议通知文件可以是公函、传真、电报。', '', '2');
INSERT INTO `nk_document_common` VALUES ('345', '②有落实未成年人思想道德建设工作的具体方案或任务分工。', null, null, null, '-1', '0', '1.领导体制和工作机制', '1）召开会议进行安排部署，制定下发专门的工作方案或责任分工。', '上报：具体方案或任务分工（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('346', '有建立健全学校、家庭、社会“三结合”教育网络，包括发挥学校龙头作用、家庭基础作用、社区平台作用，形成工作合力等方面的情况。', null, null, null, '-1', '0', '1.领导体制和工作机制', '2）健全完善学校、家庭、社会“三结合”教育网络的措施、办法。', '上报：建立健全学校、家庭、社会“三结合”教育网络的材料（说明报告，800字）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('347', '①有教育、民政、文化、团委、妇联、残联、关工委等部门在加强和改进未成年人思想道德建设工作方面创造的典型经验、成功做法的材料。', null, null, null, '-1', '0', '1.领导体制和工作机制', '3）教育、民政、文化、团委、妇联、残联、关工委等部门有常态化工作品牌或经验。', '上报：教育、民政、文化、团委、妇联、残联、关工委等部门经验、做法的材料（说明报告，800字）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('348', '②有教育、民政、文化、团委、妇联、残联、关工委等部门在未成年人思想道德建设工作方面创造的工作品牌或经验的媒体报道材料。', null, null, null, '-1', '0', '1.领导体制和工作机制', '3）教育、民政、文化、团委、妇联、残联、关工委等部门有常态化工作品牌或经验。', '上报：报刊、电视、网络等媒体对本市（区）教育、民政、文化、团委、妇联、残联、关工委等部门的工作品牌或经验所作宣传报道的实景图片（每个部门经验上传1种媒体报道的图片或截图即可，最多3种媒体，图片总量控制在21张以内）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('349', '①有实施未成年人思想道德建设工作检查考评的工作安排，如方案或通知等。', null, null, null, '-1', '0', '1.领导体制和工作机制', '4）范围内每年有1至2次未成年人思想道德建设工作检查考评。', '上报：实施未成年人思想道德建设工作检查考评的工作安排（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('350', '		②有开展未成年人思想道德建设工作检查考评，包括时间、内容及结果等情况的材料。	上报：开展未成年人思想道德建设工作检查考评情况的材料（说明报告）。	文明办\r\n教育局', null, null, null, '-1', '0', '1.领导体制和工作机制', '4）范围内每年有1至2次未成年人思想道德建设工作检查考评。', '上报：开展未成年人思想道德建设工作检查考评情况的材料（说明报告）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('351', '1）培育和践行社会主义核心价值观进教材、进课堂、进头脑。', null, null, null, '-1', '0', '3.学校教育', '中小学校：\r\n①中小学校校园、教室有社会主义核心价值观宣传；\r\n②学生熟知社会主义核心价值观的内容。   \r\n', '', '', '3');
INSERT INTO `nk_document_common` VALUES ('352', '3）广泛开展文明校园创建活动，措施扎实，氛围浓厚，成效明显。', null, null, null, '-1', '0', '3.学校教育', '中小学校：\r\n有反映中小学校文明校园创建工作安排和落实情况的文字、图片资料。\r\n', '', '', '3');
INSERT INTO `nk_document_common` VALUES ('353', '1）社区将家长学校或家庭教育指导服务站点建设纳入社区发展规划，将家庭教育指导作为向辖区居民提供的一项公共服务内容。', null, null, null, '-1', '0', '4.家庭教育和社会教育', '社区：\r\n①设有专属或共享的家长学校或家庭教育指导服务站点等家庭教育场所；\r\n②家庭教育场所有管理制度，有工作记录；\r\n③有开展家庭教育活动的文字、图片资料。\r\n', '', '', '3');
INSERT INTO `nk_document_common` VALUES ('354', '2）社区有未成年人开展文体活动的场所、设施和活动安排。', null, null, null, '-1', '0', '4.家庭教育和社会教育', '社区：\r\n①文化活动中心（站、室）等设有未成年人专属或共享的活动场所；\r\n②未成年人专属或共享的活动场所有管理制度，有工作记录；\r\n③有未成年人开展活动的文字、图片资料。 \r\n注：以社区服务设施现有情况、社区原始记录为考核依据，以社区居民群众满意度为主要评价标准，不以悬挂牌子、建立该项工作的专门台账等为考核要求。\r\n', '', '', '3');
INSERT INTO `nk_document_common` VALUES ('355', '4）爱国主义教育基地和公益性文化设施免费接纳未成年人参观学习有安排、有效果。', null, null, null, '-1', '0', '4.家庭教育和社会教育', '公益性文化设施，如博物馆、纪念馆、爱国主义教育示范基地以及美术馆、公共图书馆、文化馆(站)等：\r\n①未成年人进入公益性文化设施没有被收取任何费用；\r\n②公益性文化设施在显著位置公示服务项目、开放时间以及免费开放的详细情况。若有收费项目，列出收费项目内容和收费标准。 \r\n', '', '', '3');
INSERT INTO `nk_document_common` VALUES ('356', '5）有校外未成年人心理健康辅导站（点），运用网络、电话、授课等多种形式开展教育引导。', null, null, null, '-1', '0', '4.家庭教育和社会教育', '未成年人心理健康辅导站（点）：\r\n①有专门的工作场地；\r\n②有心理健康辅导人员名单；\r\n③有心理咨询电话或网络咨询热线；\r\n④有开展心理健康辅导等方面的工作记录。\r\n', '', '', '3');
INSERT INTO `nk_document_common` VALUES ('357', '3）加强网吧管理、取缔“黑网吧”，经营性网吧无接纳未成年人。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '网吧：\r\n①在营业场所显著位置悬挂《网络文化经营许可证》和营业执照；\r\n②实名登记并查看身份证；\r\n③显著位置设有未成年人禁入的警示牌；\r\n④无未成年人上网现象。\r\n', '', '', '3');
INSERT INTO `nk_document_common` VALUES ('358', '4）整治中小学校周边环境常态化、效果实。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '中小学校：\r\n①校园周边200米内无互联网上网服务营业场所（经营性网吧）、电子游戏经营场所；\r\n②无歌厅、舞厅、卡拉OK厅、游艺厅、台球厅等娱乐场所；\r\n③无非法行医或以人流、性病治疗业务为主的诊所；\r\n④无从事非法经营活动的游商和无证照摊点；\r\n⑤无“三无食品”，无恐怖、迷信、低俗、色情的玩具、文具、饰品和出版物销售。\r\n', '', '', '3');
INSERT INTO `nk_document_common` VALUES ('359', '5）关心关爱特殊群体未成年人有措施、效果实。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '公共广场、商业大街、城市干道：\r\n无流浪、乞讨未成年人。\r\n', '', '', '3');
INSERT INTO `nk_document_common` VALUES ('360', '6）本区主要新闻媒体、都市类媒体、网络媒体和社会媒介做好关爱保护未成年人健康成长的宣传。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '公共广场、商业大街、城市干道：\r\n运用户外广告、橱窗、展板、电子显示屏等形式，展示加强未成年人教育保护、关心关爱未成年人，或其他有益于促进未成年人健康成长的公益广告。\r\n', '', '', '3');
INSERT INTO `nk_document_common` VALUES ('361', '1）未成年人熟知社会主义核心价值观“24个字”。', null, null, null, '1', '1491891783', '2.思想道德教育实践活动', '对社会主义主义核心价值观的熟悉程度。', '', '', '4');
INSERT INTO `nk_document_common` VALUES ('362', '3）广泛开展文明校园创建活动，措施扎实，氛围浓厚，成效明显。', null, null, null, '-1', '0', '3.学校教育', '师生对文明校园创建的知晓率和满意度。', '', '', '4');
INSERT INTO `nk_document_common` VALUES ('363', '4）中小学校德育课、少先队活动落实，效果好。', null, null, null, '-1', '0', '3.学校教育', '①中小学德育课、少先队活动是否有安排；\r\n②德育课、少先队活动是否有减少课时或被占用的现象。\r\n', '', '', '4');
INSERT INTO `nk_document_common` VALUES ('364', '5）中小学校实施师德师风建设工程有具体方案、有实际效果。', null, null, null, '-1', '0', '3.学校教育', '对教师师德和师风的评价。 ', '', '', '4');
INSERT INTO `nk_document_common` VALUES ('365', '8）实施《国家学生体质健康标准》，落实体育课程设置和课时安排要求。', null, null, null, '-1', '0', '3.学校教育', '①中小学体育课、体育大课间是否有安排；\r\n②体育课是否有减少课时或被占用的现象。\r\n', '', '', '4');
INSERT INTO `nk_document_common` VALUES ('366', '①有开展清明祭英烈、学习和争做美德少年（或学习雷锋、做美德少年）、童心向党、向国旗敬礼等活动的工作安排，如方案或通知等。', null, null, null, '-1', '0', '2.思想道德教育实践活动', '2）在重要时间节点组织好“我的中国梦”主题教育实践活动。', '上报：组织开展清明祭英烈、学习和争做美德少年（或学习雷锋、做美德少年）、童心向党、向国旗敬礼等活动的工作安排（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('367', '②有说明开展清明祭英烈、学习和争做美德少年（或学习雷锋、做美德少年）、童心向党、向国旗敬礼等活动的说明材料和相关图片。', null, null, null, '1', '1491891820', '2.思想道德教育实践活动', '2）在重要时间节点组织好“我的中国梦”主题教育实践活动。', '上报：反映清明祭英烈、学习和争做美德少年（或学习雷锋、做美德少年）、童心向党、向国旗敬礼等活动情况的说明材料（说明报告，800字）、情况统计表和相关实景图片（每个活动3张，总数控制在12张以内）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('368', '	3）开展美德少年等身边榜样学习活动常态化。	①有开展美德少年等身边榜样学习活动的年度或经常性的工作安排，如方案或通知等。	上报：开展美德少年等身边榜样学习活动的年度或经常性的工作安排（规范文件）。	文明办\r\n教育局	\r\n②有开展美德少年等身边榜样学习活动的情况和相关图片。', null, null, null, '-1', '0', '2.思想道德教育实践活动', '3）开展美德少年等身边榜样学习活动常态化。', '上报：开展美德少年等身边榜样学习活动的年度或经常性的工作安排（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('369', '②有开展美德少年等身边榜样学习活动的情况和相关图片。', null, null, null, '-1', '0', '2.思想道德教育实践活动', '3）开展美德少年等身边榜样学习活动常态化。', '上报：开展美德少年等身边榜样学习活动的情况（说明报告，800字）、情况统计表和实景图片（3张）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('370', '①有组织开展中华经典诵读活动、加强中小学生中华优秀传统文化教育的工作安排，如方案或通知等。', null, null, null, '-1', '0', '2.思想道德教育实践活动', '4）组织开展以孝敬、友善、节俭和诚信为主要内容的中华经典诵读活动，加强未成年人中华优秀传统文化教育。', '上报：组织开展中华经典诵读活动，加强未成年人中华优秀传统文化教育的工作安排（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('371', '②有中小学校开展中华经典诵读活动、加强中华优秀传统文化教育的情况及相关图片。', null, null, null, '-1', '0', '2.思想道德教育实践活动', '4）组织开展以孝敬、友善、节俭和诚信为主要内容的中华经典诵读活动，加强未成年人中华优秀传统文化教育。', '上报：中小学校开展经典诵读活动、加强中华优秀传统文化教育的情况（说明报告，800字）、情况统计表和实景图片（3张）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('372', '4）爱国主义教育基地和公益性文化设施免费接纳未成年人参观学习有安排、有效果。', null, null, null, '-1', '0', '4.家庭教育和社会教育', '是否到当地爱国主义教育基地和公益性文化设施参观学习。', '', '', '4');
INSERT INTO `nk_document_common` VALUES ('373', '3）加强网吧管理、取缔“黑网吧”，经营性网吧无接纳未成年人。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '对本区网吧管理的评价。', '', '', '4');
INSERT INTO `nk_document_common` VALUES ('374', '4）整治中小学校周边环境常态化、效果实。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '对学校周边社会文化环境的评价。', '', '', '4');
INSERT INTO `nk_document_common` VALUES ('375', '6）本区主要新闻媒体、都市类媒体、网络媒体和社会媒介做好关爱保护未成年人健康成长的宣传。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '对本区开展未成年人教育保护宣传工作的评价。', '', '', '4');
INSERT INTO `nk_document_common` VALUES ('376', '2）社区有未成年人开展文体活动的场所、设施和活动安排。', null, null, null, '-1', '0', '4.家庭教育和社会教育', '①所在社区是否有未成年人活动场所；\r\n②所在社区是否组织过面向未成年人的活动。\r\n', '', '', '4');
INSERT INTO `nk_document_common` VALUES ('377', '①有教育行政部门推动社会主义核心价值观进教材、进课堂、进学生头脑的工作安排，如方案或通知等。', null, null, null, '-1', '0', '3.学校教育', '1）培育和践行社会主义核心价值观进教材、进课堂、进头脑。', '上报：教育行政部门推动社会主义核心价值观进教材、进课堂、进学生头脑的工作安排（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('378', '②有推动社会主义核心价值观进教材、进课堂、进学生头脑取得进展成效的材料。', null, null, null, '-1', '0', '3.学校教育', '1）培育和践行社会主义核心价值观进教材、进课堂、进头脑。上报：推动社会主义核心价值观进教材、进课堂、进学生头脑取得进展成效的材料（说明报告，800字）。', '上报：推动社会主义核心价值观进教材、进课堂、进学生头脑取得进展成效的材料（说明报告，800字）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('379', '①有教育行政部门关于在中小学校开展“爱学习、爱劳动、爱祖国”活动的工作安排，如方案或通知等。', null, null, null, '-1', '0', '3.学校教育', '2）有中小学校开展“爱学习、爱劳动、爱祖国”活动安排和落实情况。', '上报：教育行政部门关于开展“爱学习、爱劳动、爱祖国”活动的工作安排（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('380', '②有教育行政部门在中小学校开展“爱学习、爱劳动、爱祖国”活动情况。', null, null, null, '-1', '0', '3.学校教育', '2）有中小学校开展“爱学习、爱劳动、爱祖国”活动安排和落实情况。', '上报：本区教育行政部门在中小学校开展“爱学习、爱劳动、爱祖国”活动的情况（说明报告，800字）、情况统计表和实景图片（3张）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('381', '①有文明委或文明办、教育行政部门关于开展文明校园创建活动的工作安排，如方案或通知。', null, null, null, '-1', '0', '3.学校教育', '	3）广泛开展文明校园创建活动，措施扎实，氛围浓厚，成效明显。	①有文明委或文明办、教育行政部门关于开展文明校园创建活动的工作安排，如方案或通知。	上报：文明委或文明办、教育行政部门关于开展文明校园创建活动的工作安排（规范文件）。	文明办\r\n教育局	\r\n	3）广泛开展文明校园创建活动，措施扎实，氛围浓厚，成效明显。	①有文明委或文明办、教育行政部门关于开展文明校园创建活动的工作安排，如方案或通知。	上报：文明委或文明办、教育行政部门关于开展文明校园创建活动的工作安排（规范文件）。	文明办\r\n教育局	\r\n', '上报：文明委或文明办、教育行政部门关于开展文明校园创建活动的工作安排（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('382', '②有开展文明校园创建活动进展成效的材料。', null, null, null, '-1', '0', '3.学校教育', '	3）广泛开展文明校园创建活动，措施扎实，氛围浓厚，成效明显。	①有文明委或文明办、教育行政部门关于开展文明校园创建活动的工作安排，如方案或通知。	上报：文明委或文明办、教育行政部门关于开展文明校园创建活动的工作安排（规范文件）。	文明办\r\n教育局	\r\n', '上报：开展文明校园创建活动的情况（说明报告，800字）、情况统计表和实景图片（3张）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('383', '①提供中小学校思想品德课（思想政治课）、少先队活动的安排。', null, null, null, '-1', '0', '3.学校教育', '4）中小学校德育课、少先队活动落实，效果好。', '上报：中小学校思想品德课（思想政治课）、少先队活动的安排（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('384', '②提供中小学校思想品德课（思想政治课）、少先队活动的落实情况。', null, null, null, '-1', '0', '3.学校教育', '4）中小学校德育课、少先队活动落实，效果好。', '上报：落实中小学校德育课、少先队活动情况（说明报告）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('385', '①提供教育行政部门关于实施师德师风建设工程的工作安排，如方案或通知等。', null, null, null, '-1', '0', '3.学校教育', '5）中小学校实施师德师风建设工程有具体方案、有实际效果。', '上报：教育行政部门关于实施师德师风建设工程的工作安排（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('386', '②提供实施师德师风建设工程、提高教师职业道德素养的进展和成效情况。', null, null, null, '-1', '0', '3.学校教育', '5）中小学校实施师德师风建设工程有具体方案、有实际效果。', '上报：实施师德师风建设工程、提高教师职业道德素养的进展和成效情况（说明报告）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('387', '①提供关于中小学校建立家长委员会、开办家长学校，加强家校联系的有关安排，如方案或通知等。', null, null, null, '-1', '0', '3.学校教育', '6）中小学校建立家长委员会，办好家长学校，加强家校联系。', '上报：关于中小学校建立家长委员会、开办家长学校，加强家校联系的有关安排（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('388', '②提供在中小学校建立家长委员会、开办家长学校，加强家校联系的工作进展情况。', null, null, null, '-1', '0', '3.学校教育', '6）中小学校建立家长委员会，办好家长学校，加强家校联系。', '上报：在中小学校建立家长委员会、开办家长学校，加强家校联系的情况（说明报告）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('389', '①提供保障进城务工人员子女平等接受义务教育的工作安排，如方案或通知等。', null, null, null, '-1', '0', '3.学校教育', '7）进城务工人员子女平等接受义务教育有措施、落实好。', '上报：保障进城务工人员子女平等接受义务教育的工作安排（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('390', '②提供保障进城务工人员子女平等接受义务教育的情况。', null, null, null, '-1', '0', '3.学校教育', '7）进城务工人员子女平等接受义务教育有措施、落实好。', '上报：保障进城务工人员子女平等接受义务教育的情况（说明报告）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('391', '①统计并计算本地实施《国家学生体质健康标准》测试并将数据上报国家数据库的学校比例。', null, null, null, '-1', '0', '3.学校教育', '8）实施《国家学生体质健康标准》，落实体育课程设置和课时安排要求。', '填写统计表格3-8-1 参加测试的学校比例', '', '2');
INSERT INTO `nk_document_common` VALUES ('392', '②统计并计算本地参加《国家学生体质健康标准》测试的学生比例。', null, null, null, '-1', '0', '3.学校教育', '8）实施《国家学生体质健康标准》，落实体育课程设置和课时安排要求。', '填写统计表格3-8-2 参加测试的学生比例', '', '2');
INSERT INTO `nk_document_common` VALUES ('393', '③统计并计算本地测试结果达到《国家学生体质健康标准》合格的学生比例。', null, null, null, '-1', '0', '3.学校教育', '8）实施《国家学生体质健康标准》，落实体育课程设置和课时安排要求。', '填写统计表格3-8-3 合格学生的比例', '', '2');
INSERT INTO `nk_document_common` VALUES ('394', '①说明建立社区家长学校或家庭教育指导服务站点等的情况，80%的城市社区已建立了家长学校或家庭教育指导服务站点。', null, null, null, '-1', '0', '4.家庭教育和社会教育', '1）社区将家长学校或家庭教育指导服务站点建设纳入社区发展规划，将家庭教育指导作为向辖区居民提供的一项公共服务内容。', '上报：建立社区家长学校或家庭教育指导服务站点等的情况（说明报告）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('395', '②说明依托社区家长学校或家庭教育指导服务站点开展家庭教育培训的情况。', null, null, null, '-1', '0', '4.家庭教育和社会教育', '1）社区将家长学校或家庭教育指导服务站点建设纳入社区发展规划，将家庭教育指导作为向辖区居民提供的一项公共服务内容。', '上报：依托社区家长学校或家庭教育指导服务站点开展家庭教育培训的情况（说明报告）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('396', '说明社区针对困难家庭、流动人口家庭子女开展关爱帮扶活动的具体措施和工作成效。', null, null, null, '-1', '0', '4.家庭教育和社会教育', '3）社区有具体措施关爱帮扶困难家庭、流动人口家庭未成年子女。', '上报：社区针对困难家庭、流动人口家庭子女开展关爱帮扶活动的具体措施和工作成效（说明报告）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('397', '说明落实爱国主义教育基地和公益性文化设施向未成年人免费开放的工作措施以及提供服务、组织活动等情况。注：主要检查根据2004年以来中央和国家机关有关部门下发的文件，提出要免费开放的公共博物馆、纪念馆、爱国主义教育示范基地以及美术馆、公共图书馆、文化馆(站)等场所。', null, null, null, '-1', '0', '4.家庭教育和社会教育', '4）爱国主义教育基地和公益性文化设施免费接纳未成年人参观学习有安排、有效果。', '上报：落实爱国主义教育基地和公益性文化设施向未成年人免费开放的工作措施以及提供服务、组织活动等情况（说明报告，800字）、情况统计表和实景图片（每个活动3张，总数控制在12张以内）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('398', '①提供成长指导中心、心理维护中心等未成年人心理健康辅导站建设、管理和使用方面的材料。', null, null, null, '-1', '0', '4.家庭教育和社会教育', '5）有校外未成年人心理健康辅导站（点），运用网络、电话、授课等多种形式开展教育引导。', '上报：成长指导中心、心理维护中心等未成年人心理健康辅导站建设、管理和使用方面的情况（说明报告）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('399', '②提供通过网络、电话、现场授课等形式开展心理健康教育辅导的工作情况和相关图片。', null, null, null, '-1', '0', '4.家庭教育和社会教育', '5）有校外未成年人心理健康辅导站（点），运用网络、电话、授课等多种形式开展教育引导。', '上报：通过网络、电话、现场授课等形式开展心理健康教育辅导的情况（说明报告）和实景图片（3张）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('400', '④提供本地县级青少年活动中心、示范性综合实践基地等青少年校外活动场所的建设、管理、使用情况说明。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '1）扎实推进乡村学校少年宫项目以及县级青少年活动中心、示范性综合实践基地等青少年校外活动场所建设，有管理制度、活动项目、经费保障和专兼职辅导员队伍。', '上报：本地县级青少年活动中心、示范性综合实践基地等青少年校外活动场所的建设、管理、使用情况（说明报告）。\r\n注：根据本地实际进行说明即可。如果没有这两方面或某一方面的情况，需请省级教育部门出具证明。', '', '2');
INSERT INTO `nk_document_common` VALUES ('401', '①提供优秀童谣征集、推广和传唱活动的安排，如方案或通知等。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '2）优秀童谣征集和推广、传唱活动措施具体，普遍开展。', '上报：优秀童谣征集、推广和传唱活动的安排（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('402', '②提供优秀童谣推广、传唱活动情况材料。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '2）优秀童谣征集和推广、传唱活动措施具体，普遍开展。', '上报：优秀童谣推广、传唱活动情况（说明报告，800字）、情况统计表和实景图片（每个活动3张，总数控制在12张以内）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('403', '①提供加强网吧管理方面的工作安排，如通知或方案等。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '3）加强网吧管理、取缔“黑网吧”，经营性网吧无接纳未成年人。', '上报：加强网吧管理方面的工作安排（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('404', '②提供加强网吧管理方面的情况。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '3）加强网吧管理、取缔“黑网吧”，经营性网吧无接纳未成年人。', '上报：加强网吧管理方面的情况（说明报告）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('405', '①提供整治中小学校周边环境的工作安排，如通知或方案等。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '4）整治中小学校周边环境常态化、效果实。', '上报：整治中小学校周边环境的工作安排（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('414', '①提供整治中小学校周边环境的工作安排，如通知或方案等。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '4）整治中小学校周边环境常态化、效果实。', '上报：整治中小学校周边环境的工作安排（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('415', '②提供整治中小学校周边环境的情况。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '4）整治中小学校周边环境常态化、效果实。', '上报：整治中小学校周边环境的情况（说明报告）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('416', '①提供关心关爱留守儿童、困境儿童、流浪儿童等特殊群体未成年人的工作安排。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '5）关心关爱特殊群体未成年人有措施、效果实。', '上报：关心关爱留守儿童、困境儿童、流浪儿童等特殊群体未成年人的工作安排（规范文件）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('417', '②提供关心关爱特殊群体未成年人的情况。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '5）关心关爱特殊群体未成年人有措施、效果实。', '上报：关心关爱特殊群体未成年人的情况（说明报告）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('418', '①提供在媒体做好关爱保护未成年人健康成长宣传的情况。', null, null, null, '-1', '0', '5.营造良好社会文化环境', '6）主要新闻媒体、都市类媒体、网络媒体和社会媒介做好关爱保护未成年人健康成长的宣传。', '上报：在媒体做好关爱保护未成年人健康成长宣传的情况（说明报告）和报纸、电视、网络宣传的实景图片（每种图片或截图3张，总量控制在9张以内，注明时间、媒体名称）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('419', '		②有刊播关爱保护未成年人健康成长公益广告的情况说明和相关图片。	上报：刊播关爱保护未成年人健康成长公益广告的情况（说明报告）和报纸、电视以及公共场所有关公益广告的实景图片（每种图片3张，总量控制在9张以内，注明时间、媒体名称或地点）。	新闻中心	文明办', null, null, null, '-1', '0', '5.营造良好社会文化环境', '6）主要新闻媒体、都市类媒体、网络媒体和社会媒介做好关爱保护未成年人健康成长的宣传。', '上报：刊播关爱保护未成年人健康成长公益广告的情况（说明报告）和报纸、电视以及公共场所有关公益广告的实景图片（每种图片3张，总量控制在9张以内，注明时间、媒体名称或地点）。', '', '2');
INSERT INTO `nk_document_common` VALUES ('420', '说明本区中小学校开展青少年志愿服务的情况（说明报告，实景图片）；', null, null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚\r\nⅠ-3\r\n培育文明道德风尚', 'Ⅱ-8\r\n志愿服务制度化\r\n', 'Ⅲ-17\r\n志愿服务活动\r\n', '2）开展关爱空巢老人、留守儿童、困难职工、残疾人志愿服务活动，开展党员志愿服务，开展文明旅游、文明交通、文明上网等志愿服务活动，组织专业志愿服务队开展志愿服务。', '1');
INSERT INTO `nk_document_common` VALUES ('421', 'Ⅲ-5\r\n学习教育和主题实践系统化长期化\r\n', null, null, null, '-1', '0', 'Ⅰ-1\r\n理想信念教育\r\n', 'Ⅱ-3\r\n中国特色社会主义和中国梦学习宣传教育\r\n', '对本区开展中国梦宣传教育效果的评价。', '', '5');
INSERT INTO `nk_document_common` VALUES ('422', 'Ⅲ-8\r\n深化推广普及\r\n', null, null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-5\r\n教育实践\r\n', '对本区宣传普及社会主义核心价值观效果的评价。', '', '5');
INSERT INTO `nk_document_common` VALUES ('423', 'Ⅲ-9\r\n融入日常生活\r\n', null, null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-5\r\n教育实践\r\n', '对本区发放市民文明手册情况的评价。', '', '5');
INSERT INTO `nk_document_common` VALUES ('424', 'Ⅲ-11\r\n培育良好家风家教\r\n', null, null, null, '-1', '0', 'Ⅰ-2\r\n社会主义核心价值观建设\r\n', 'Ⅱ-6\r\n文化培育\r\n', '对本区家庭、家教、家风建设方面的评价。', '', '5');
INSERT INTO `nk_document_common` VALUES ('425', 'Ⅲ-15\r\n开展学习宣传活动', null, null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚', 'Ⅱ-7\r\n道德模范评选表彰和学习宣传\r\n', '对本区道德模范、最美人物、时代楷模、身边好人等先进典型学习宣传的评价。', '', '5');
INSERT INTO `nk_document_common` VALUES ('426', 'Ⅲ-16\r\n制度化建设\r\n（市民对志愿服务活动认同和支持率≥90%）', null, null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚', 'Ⅱ-8\r\n志愿服务制度化\r\n', '①是否愿意参加志愿服务活动；\r\n②身边的志愿服务活动氛围是否浓厚。\r\n', '', '5');
INSERT INTO `nk_document_common` VALUES ('427', 'Ⅲ-21\r\n制作刊播情况\r\n', null, null, null, '-1', '0', 'Ⅰ-3\r\n培育文明道德风尚', 'Ⅱ-10\r\n“讲文明树新风”公益广告\r\n', '对本区刊播展示公益广告的评价。', '', '5');
INSERT INTO `nk_document_common` VALUES ('428', 'Ⅲ-27\r\n依法行政\r\n', null, null, null, '-1', '0', 'Ⅰ-4\r\n廉洁高效的政务环境\r\n', 'Ⅱ-14\r\n政务行为规范\r\n', '对本区政务行为规范的评价。', '', '5');
INSERT INTO `nk_document_common` VALUES ('429', 'Ⅲ-29\r\n全民普法教育（引导全体人民自觉尊法、学法、守法、用法；全民法治宣传教育的普及率≥80%）', null, null, null, '-1', '0', 'Ⅰ-5\r\n公平正义的法治环境\r\n', 'Ⅱ-15\r\n法治宣传教育\r\n', '①对本区尊法、学法、守法、用法情况的评价；\r\n②是否参加过本区组织的法治宣传教育活动。\r\n', '', '5');
INSERT INTO `nk_document_common` VALUES ('430', 'Ⅲ-34\r\n社会信用体系建设\r\n', null, null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境\r\n', 'Ⅱ-18\r\n推进诚信建设制度化\r\n', '对本区诚信建设的评价。', '', '5');
INSERT INTO `nk_document_common` VALUES ('431', 'Ⅲ-37\r\n依法查处违法经营行为（开展整治虚假违法广告专项行动）', null, null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境\r\n', 'Ⅱ-19\r\n市场监管\r\n', '在本区生活中是否经常接触到虚假违法广告。', '', '5');
INSERT INTO `nk_document_common` VALUES ('432', 'Ⅲ-38\r\n执法监管部门和窗口服务单位\r\n', null, null, null, '-1', '0', 'Ⅰ-6\r\n诚信守法的市场环境\r\n', 'Ⅱ-20\r\n文明诚信服务\r\n', '①对本区窗口单位服务质量的评价；\r\n②对本区行政执法监管部门工作的评价。\r\n', '', '5');
INSERT INTO `nk_document_common` VALUES ('433', 'Ⅲ-40\r\n义务教育均衡发展（市民对义务教育的满意度≥75%）', null, null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-21\r\n国民教育\r\n', '对本区义务教育的满意度。', '', '5');
INSERT INTO `nk_document_common` VALUES ('434', 'Ⅲ-48\r\n文明行为\r\n', null, null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-25\r\n市民文明素质\r\n', '对本区民风和道德素质的评价。', '', '5');
INSERT INTO `nk_document_common` VALUES ('435', 'Ⅲ-51\r\n公益活动\r\n', null, null, null, '-1', '0', 'Ⅰ-7\r\n健康向上的人文环境\r\n', 'Ⅱ-25\r\n市民文明素质\r\n', '对本区开展公益活动的评价。', '', '5');
INSERT INTO `nk_document_common` VALUES ('436', 'Ⅲ-60\r\n社区生活环境（社区日常管理服务规范有序；制定社区居民公约，倡导邻里和睦、守望相助）', null, null, null, '-1', '0', 'Ⅰ-9\r\n舒适便利的生活环境\r\n', 'Ⅱ-27\r\n公共服务\r\n', '①对社区生活便利程度的评价；\r\n②对社区邻里守望相助、社会道德风尚的评价。\r\n', '', '5');
INSERT INTO `nk_document_common` VALUES ('437', 'Ⅲ-64\r\n公共安全保障（加强社会治安防控体系建设）', null, null, null, '-1', '0', 'Ⅰ-10\r\n安全稳定的社会环境\r\n', 'Ⅱ-30\r\n公共安全体系建设\r\n', '对自身安全感的评价。', '', '5');
INSERT INTO `nk_document_common` VALUES ('438', 'Ⅲ-69\r\n治安管理（卖淫嫖娼、聚众赌博、吸毒贩毒制毒等违法犯罪得到有效控制）', null, null, null, '-1', '0', 'Ⅰ-10\r\n安全稳定的社会环境\r\n', 'Ⅱ-31\r\n社会治安\r\n', '对本区打击“黄赌毒”的评价。', '', '5');
INSERT INTO `nk_document_common` VALUES ('439', 'Ⅲ-77\r\n公众参与\r\n', null, null, null, '-1', '0', 'Ⅰ-11\r\n可持续发展的生态环境\r\n', 'Ⅱ-33\r\n环境管理与环境质量\r\n', '是否参加过环境保护、生态文明主题活动。', '', '5');
INSERT INTO `nk_document_common` VALUES ('440', 'Ⅲ-82\r\n群众参与（创建活动的群众参与率＞90%）', null, null, null, '-1', '0', 'Ⅰ-12\r\n长效常态的创建工作机制\r\n', 'Ⅱ-36\r\n群众广泛参与\r\n', '是否参与过本区组织开展的精神文明创建活动。', '', '5');
INSERT INTO `nk_document_common` VALUES ('441', 'Ⅲ-84\r\n群众满意度调查（＞80% ＞75% ≤75%）', null, null, null, '-1', '0', 'Ⅰ-12\r\n长效常态的创建工作机制\r\n', 'Ⅱ-36\r\n群众广泛参与\r\n', '①对本区参评全国文明城市的支持率；\r\n②对本区开展文明城市创建活动的满意率。\r\n', '', '5');
INSERT INTO `nk_document_common` VALUES ('442', '测试android端文明城区', '1493359812', null, null, '-1', '0', '测试android端文明城区', '测试android端文明城区', '测试android端文明城区', '测试android端文明城区', '1');
INSERT INTO `nk_document_common` VALUES ('443', null, null, null, null, '-1', '0', '', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('444', null, null, null, null, '-1', '0', '', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('445', null, null, null, null, '-1', '0', '', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('446', null, null, null, null, '-1', '0', '', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('447', null, null, null, null, '-1', '0', '', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('448', null, null, null, null, '-1', '0', '', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('449', null, null, null, null, '-1', '0', '', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('450', null, null, null, null, '-1', '0', '', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('451', null, null, null, null, '-1', '0', '', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('452', null, null, null, null, '-1', '0', '', '', '', '', '1');
INSERT INTO `nk_document_common` VALUES ('453', '测试实地考察', '1493363518', null, null, '-1', '0', '测试实地考察', '测试实地考察', '测试实地考察', '测试实地考察', '6');
INSERT INTO `nk_document_common` VALUES ('454', '文件调查android端测试', '1493365321', null, null, '-1', '0', '文件调查android端测试', '文件调查android端测试', '文件调查android端测试', '', '5');
INSERT INTO `nk_document_common` VALUES ('455', '网申1', '1493365495', null, null, '-1', '0', '网申1', '网申1', '网申1', '', '2');
INSERT INTO `nk_document_common` VALUES ('456', '实地考察1', '1493365528', null, null, '-1', '0', '实地考察1', '实地考察1', '', '', '3');
INSERT INTO `nk_document_common` VALUES ('457', '实地考察1', '1493365548', null, null, '-1', '0', '文件调查1', '实地考察1', '', '', '4');

-- ----------------------------
-- Table structure for nk_email
-- ----------------------------
DROP TABLE IF EXISTS `nk_email`;
CREATE TABLE `nk_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `send_from` int(11) DEFAULT NULL,
  `send_time` int(11) DEFAULT NULL,
  `picture_id` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `is_delete` int(11) DEFAULT '-1' COMMENT '1.删除 -1.未删除',
  `email_type` int(11) DEFAULT '1' COMMENT '1发邮件 2回复邮件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 COMMENT='-------个人邮箱';

-- ----------------------------
-- Records of nk_email
-- ----------------------------
INSERT INTO `nk_email` VALUES ('154', '12313', '<p>123123</p>', '90', '1492517697', '', '1', '1');

-- ----------------------------
-- Table structure for nk_friend
-- ----------------------------
DROP TABLE IF EXISTS `nk_friend`;
CREATE TABLE `nk_friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `friend_id` int(11) DEFAULT NULL,
  `is_delete` int(11) DEFAULT '-1' COMMENT '1.删除 -1正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='----------邮箱好友表---------';

-- ----------------------------
-- Records of nk_friend
-- ----------------------------
INSERT INTO `nk_friend` VALUES ('2', '1', '4', '-1');
INSERT INTO `nk_friend` VALUES ('3', '45', '4', '-1');
INSERT INTO `nk_friend` VALUES ('4', '45', '1', '-1');
INSERT INTO `nk_friend` VALUES ('5', '45', '2', '-1');
INSERT INTO `nk_friend` VALUES ('6', '52', '1', '-1');
INSERT INTO `nk_friend` VALUES ('7', '52', '54', '-1');
INSERT INTO `nk_friend` VALUES ('8', '52', '53', '-1');
INSERT INTO `nk_friend` VALUES ('10', '53', '54', '-1');
INSERT INTO `nk_friend` VALUES ('11', '53', '1', '-1');
INSERT INTO `nk_friend` VALUES ('13', '54', '53', '-1');
INSERT INTO `nk_friend` VALUES ('14', '47', '53', '-1');
INSERT INTO `nk_friend` VALUES ('15', '47', '52', '-1');
INSERT INTO `nk_friend` VALUES ('16', '47', '45', '-1');
INSERT INTO `nk_friend` VALUES ('17', '47', '54', '-1');
INSERT INTO `nk_friend` VALUES ('18', '47', '55', '-1');
INSERT INTO `nk_friend` VALUES ('19', '4', '47', '-1');

-- ----------------------------
-- Table structure for nk_news
-- ----------------------------
DROP TABLE IF EXISTS `nk_news`;
CREATE TABLE `nk_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL COMMENT '简述',
  `content` text,
  `create_time` int(11) DEFAULT NULL,
  `department_id` varchar(50) DEFAULT '0' COMMENT '0全部',
  `type` int(11) DEFAULT '1' COMMENT '1.公告 2.通知',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='-------新闻\r\n';

-- ----------------------------
-- Records of nk_news
-- ----------------------------

-- ----------------------------
-- Table structure for nk_newspaper
-- ----------------------------
DROP TABLE IF EXISTS `nk_newspaper`;
CREATE TABLE `nk_newspaper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `desc` varchar(255) DEFAULT NULL COMMENT '简述',
  `content` text COMMENT '内容',
  `create_time` int(11) DEFAULT NULL COMMENT '发送时间',
  `pic_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COMMENT='----------新闻下简报----------';

-- ----------------------------
-- Records of nk_newspaper
-- ----------------------------
INSERT INTO `nk_newspaper` VALUES ('41', '第1期：南开区全国文明城区创建冲刺发力', '摘要：南开区创建全国文明城区工作动员部署会召开一月以来，各创建指挥部积极行动，全区上下广泛响应，形成全面发动的创建局面。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">1</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); font-size: 19px;\"><span style=\"font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">16</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"></span></p><hr/><p style=\"line-height:150%\"><span style=\"background-color: rgb(255, 0, 0);\"></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"></span><br/></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">工作综述</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\"font-size: 29px; font-family: 方正小标宋简体;\">南开区全国文明城区创建冲刺发力</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">南开区创建全国文明城区工作动员部署会召开一月以来，各创建指挥部积极行动，全区上下广泛响应，形成全面发动的创建局面。</span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区领导高度重视，深入开展督查指导。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">各分指挥部督办区领导深入各责任单位，结合区创文办提供的周重点工作提示，做到每周督办，及时掌握创文工作进展，进行工作指导。来英书记先后多次到鼓楼街域暗访，重点对鼓楼周边交通秩序、新安商场附近游商摊贩治理进行督导；卫华区长深入长虹街道专题调研，视察街道行政服务大厅，对非法药品交易、集贸市场治理等重点事项作出批示；玉恒主任组织市容、房管、环卫、市政等部门在学府街现场办公，着重对街道推动创文、创卫同步实施提出指导意见；东升主席实地巡查王顶堤街</span>,研究解决社区路面破损、增设分类垃圾桶等难点问题。据统计29位区领导召开创文专项工作会议35场，先后下基层调研督查百余次，指导解决市场管理、秩序维护、环境治理、氛围营造等32项具体问题。</span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">各单位积极行动，全面启动创文攻坚工作。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">各责任单位积极发动广大干部职工和社区群众启动创文活动，进一步建立健全组织机构，制定工作进度安排，深化创文主题宣传，营造浓厚的社会氛围。一月来，全区</span>31个重点责任单位陆续组织召开了动员部署会，很多社区也组织召开了宣传发动会，78个单位报送了《创文工作组织机构联系表》、72个单位制定了本单位具体创文任务进度计划安排。各单位组织宣传教育和创建实践活动200余场，部分重点建设工作已经进入实施状态，卫计委、教育局、环卫局等单位创文工作情况得到市暗访组好评。</span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">创文办双对接双联系，大力推进创文工作。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">创文办四个工作组坚持对接各分指挥部、对接各责任单位，联系市属部门、联系各级媒体，搞好服务，抓好推动。一是先后向市文明办报送</span>9类193页的创建工作清单和进展情况汇总表。通过市文明办协调，与市交通运输委进行了专门对接，对主次干道交通秩序、道路设施建设、宣传氛围营造、交通邮政等窗口单位的文明服务进行推动。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">二是</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">与各指挥部和重点责任单位建立联络员周联系机制，实行阶段工作重点提示举措，开展与各责任单位的点对点对接和实地巡视服务，对接走访</span>37个单位，组织8次专项推动会，做好指标任务解读与指导服务。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">三是</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">推动任务提示清单和问题整改清单的执行落实，针对市文明办</span>2月28日暗访情况，向17家相关责任单位反馈11类点位41项具体问题；结合日常巡查和市民巡访情况，向相关单位反映反馈各类问题200余条。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">四是</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">建立了</span>“市级媒体看南开文明”周座谈机制，组织了教育系统“小手牵大手”文明礼仪进校园、环卫局机扫服务中心学雷锋示范岗、迎全运志愿服务行动等市级媒体集中宣传，在各市级媒体发布创文活动报道70余条，刊发文明网信息160余条，微信公众号信息32条，形成良好宣传效果。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">五是</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">制定创文活动安排计划，明确</span>37项全区性重点活动，组织“迎全运做文明有礼南开人”文明专项志愿服务暨全民健身活动启动仪式，牵头开展7场“我们的节日”主题活动、23场志愿服务主题实践活动和宣传教育实践活动。设计20幅主题宣传公益广告，增设公益广告展牌800余块；发放3万张创文主题宣传海报、1万张主题宣传卡和300个宣传桌牌，通过多种形式宣传形成创文动员发动的良好声势。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p><br/></p>', '1492656909', null);
INSERT INTO `nk_newspaper` VALUES ('42', '第2期：统筹协调 靠前指挥 强化督导 区创文工作指挥部领导深入推进创文工作开展', '摘要：南开区创建全国文明城区工作动员部署会后，区创文工作指挥部领导高度重视，统筹协调，靠前指挥，强化督导，做到重要问题亲自部署、重点环节亲自协调、落实情况亲自督查，有力推动各项重点工作深入开展，确保创建任务落到实处、取得实效。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">2 </span><span style=\"line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px; font-family: 方正小标宋_GBK;\">期</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px; font-size: 20px;\"><br/></span><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); font-size: 19px;\"><span style=\"font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">17</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"></span></p><hr/><p style=\"line-height: 150%;\"><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">工作推动</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"text-align:center;line-height:40px\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">统筹协调</span> <span style=\"font-family:方正小标宋简体\">靠前指挥</span> <span style=\"font-family:方正小标宋简体\">强化督导</span></span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区创文工作指挥部领导深入推进创文工作开展</span></p><p style=\"text-indent:45px;text-align:center;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">南开区创建全国文明城区工作动员部署会后，区创文工作指挥部领导高度重视，统筹协调，靠前指挥，强化督导，做到重要问题亲自部署、重点环节亲自协调、落实情况亲自督查，有力推动各项重点工作深入开展，确保创建任务落到实处、取得实效。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区委书记、区创文工作指挥部总指挥姚来英同志多次听取创文办工作进展情况汇报，并提出要求。近期到区教育系统、华苑街、兴南街等单位调研时，实地检查社区、学校等基层单位创文工作开展情况，强调要把创文工作与本部门、本街道日常各项工作紧密结合起来，确保创文工作各项任务落实到位。深入联系督导的鼓楼街明察暗访，认真审阅创文工作材料汇编以及考察点位及标准等有关创文材料，重点检查市容环境和社区管理，对鼓楼周边交通秩序、新安购物中心附近游商摊贩清理进行督查。对群众来信反映鼓楼街晋丰大厦社区存在墙体涂料脱落、道路破损、垃圾转运不及时等问题作出批示，要求督查督办，目前已初步得到解决。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区委副书记、区长、区创文工作指挥部副总指挥冯卫华同志在区政府常务会议、区长办公会议上多次就创文工作进行部署，反复抓、抓反复，具体抓、抓具体。主持召开专题会议，听取区文明办工作汇报，并提出具体要求。结合联系督导的长虹街实际情况，深入现场调研指导，视察街道居民社会事务服务大厅，要求对照市检查组暗访情况积极整改，提出着力解决非法药品交易聚集问题、市场外溢占路摆卖问题等督办问题，带领区市政局专程走访市水务局研究长虹街部分道路雨季积水问题，协调解决部分银行抵制张贴创文标语等问题。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区人大常委会主任、区创文工作指挥部副总指挥陈玉恒同志高度重视创文工作，要求各相关单位进一步统一思想、提高认识，坚持整体推进、突出重点、打造亮点，增强创文工作的使命感和责任感，不断提高人民群众的认可度、满意度、参与度。深入联系督导的学府街现场调研，实地查看学湖里等社区，组织市容、房管、环卫、市政等部门现场办公，要求有关部门要加强协调、通力合作，打造示范社区。在环卫局调研时，实地查看垃圾转运站、机扫水洗作业情况，要求发挥部门主力军示范引领作用，以点带面，推动创文工作与创卫工作齐头并进。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区政协主席、区创文工作指挥部副总指挥王东升同志多次在主席办公会上提出创文工作要求，积极督促任务落实。重视调动政协委员的力量，建言建策、形成合力，进一步营造良好氛围。在联系督导的王顶堤街现场调研时指出，要统一思想，增强创文工作的责任感和紧迫感；要强化责任机制，层层落实责任，做实、做细；要主动上门听取群众的意见和建议，认真落实各项民生工程，发现问题早，解决问题巧，争取居民的理解和支持；要结合实际抓好垃圾分类工作，探索有效的分类模式，推动社区环境面貌质的提升，为创文工作提供坚实保障。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">区委副书记、区创文工作指挥部副总指挥田金萍同志将创文工作要求贯穿于精品社区创建工作中，深入水上公园街观景里、万兴街玉泉北里、华苑街天华里等社区开展调研，明确要求将创文工作开展情况作为精品社区评选的重要依据。多次深入联系督导的向阳路街实地督查，重点检查汾水道等道路交通秩序、市容环境整治情况、战备楼拆迁情况以及泾水园等小区环境卫生、绿化提升等社区管理情况，现场协调督办向阳外贸市场秩序混乱问题，协调解决昔阳里居委会门前道路修缮和铁门坏损问题，就战备楼拆迁环境脏乱等</span>5个问题下达问题清单。</span></p><p style=\"text-indent:43px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:43px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:43px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p><br/></p>', '1492656970', null);
INSERT INTO `nk_newspaper` VALUES ('43', '第3期：区长冯卫华专题听取区创文办工作汇报', '摘要：3月13日上午，区委副书记、区长、区创文工作指挥部副总指挥冯卫华在区政府三楼会议室专题听取了区创文办关于全国文明城区创建工作进展情况汇报，会议由区委常委、宣传部部长、区创文办主任费巍、副区长薛彤参加。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">3 </span><span style=\"line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px; font-family: 方正小标宋_GBK;\">期</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">17</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"></span></p><hr/><p style=\"line-height: 150%;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"></span><br/></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">工作推动</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"margin-top:21px;margin-bottom:21px;text-align:center;line-height:37px\"><span style=\"font-size: 29px; font-family: 方正小标宋简体;\">区长冯卫华专题听取区创文办工作汇报</span></p><p style=\"text-indent:43px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">3月13日上午，区委副书记、区长、区创文工作指挥部副总指挥冯卫华在区政府三楼会议室专题听取了区创文办关于全国文明城区创建工作进展情况汇报，会议由区委常委、宣传部部长、区创文办主任费巍、副区长薛彤参加。</span></p><p style=\"text-indent:43px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">卫华区长要求：</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">一要继续加强协调推动，强化领导督查督办。</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">做好工作指导培训，通过督促指导增强各责任单位创文工作的推动落实力。加强与市有关部门的联系对接，争取支持配合。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">二要抓重点、抓示范，加强精细化设计。</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">打造示范社区、示范医院、示范学校、示范菜市场的样板，以点带面加以推广规范。同时发挥各单位创新创造能动性，鼓励自主设计策划，在创文宣传的精细化、美观化上下功夫，增强吸引力。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">三要推动全区开展实地检查专项整治行动。</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">针对重点难点问题加强基础建设和秩序管理，围绕服务行业、窗口单位、城市管理部门等重点领域工作，结合市政建设、市容环境建设等重点项目，针对交通秩序、市场秩序、公共秩序治理等重点要求，抓住鼓楼地区、学府地区、政府周边、市体育场馆周边等重点区域，迅速掀起专项行动高潮，推动各项问题整改和任务落实。</span></p><p style=\"text-indent:43px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">区创文办对全区创文工作总体进展和创文办重点工作作了总结，对创文工作的新形势和新要求作了汇报，重点围绕我区创文氛围营造、社会秩序、环境卫生和硬件建设的</span>4大类15项重点难点问题进行了系统分析，提出了具体举措。</span></p><p style=\"text-indent:43px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">薛彤结合文明城区、卫生城区联创，重点针对壮大宣传声势、营造良好社会环境、规范公共秩序，加强市政道路、分类垃圾箱等硬件设施建设提出具体的意见建议。</span></p><p><br/></p>', '1492657014', null);
INSERT INTO `nk_newspaper` VALUES ('44', '第4期：加强督查督导 促推任务落实 各分指挥部领导督导创文工作开展（之一）', '摘要：南开区创建全国文明城区工作动员部署会后，各分指挥部督办领导高度重视，深入各责任单位开展督查指导，推动创建任务落实。从本期开始，分两期介绍分指挥部督办领导督导落实情况。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">4 </span><span style=\"line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px; font-family: 方正小标宋_GBK;\">期</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px; font-size: 20px;\"><br/></span><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); font-size: 19px;\"><span style=\"font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">19</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"></span></p><hr/><p style=\"line-height: 150%;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"></span><br/></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">工作推动</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"text-indent:48px;text-align:center;line-height:40px\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">加强督查督导</span> <span style=\"font-family:方正小标宋简体\">促推任务落实</span></span></p><p style=\"text-indent:48px;text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">各分指挥部领导督导创文工作开展（之一）</span></p><p style=\"text-indent:45px;text-align:center;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">南开区创建全国文明城区工作动员部署会后，各分指挥部督办领导高度重视，深入各责任单位开展督查指导，推动创建任务落实。从本期开始，分两期介绍分指挥部督办领导督导落实情况。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">区委常委、统战部长、创建联络指挥部督办领导敖立功同志重视发挥党外人士作用，召开动员部署会，号召各民主党派、工商联、无党派代表人士立足岗位职能，发挥界别优势，大力开展义务巡讲、义诊、诚信建设等主题活动。在区工商联会员非公企业中举办创文创卫促两个健康</span>“海河号”航船启动仪式，推动建立“鼎泰丰·康莱美”健康站、“蔷之屏”学习站、“鼎泰丰”诚信站等服务载体，广泛动员工商联（商会）会员企业积极投身创文创卫工作。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">区委常委、常务副区长、诚信体系建设攻关指挥部督办领导张勇勤同志多次组织责任部门召开工作会议，部署落实重点任务。会同费巍同志组织召开诚信体系建设工作会议，听取主要责任部门工作汇报及下一步工作举措，现场督导推动工作。到区地税局、国税局等窗口部门现场指导，推动建立上下对接、横向联动的工作机制。指导制定《南开区社会信用体系建设规划》和《南开区</span>2017年社会信用环境建设工作实施方案》，推进各部门加强行业领域诚信体系建设。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">区委常委、组织部长、创建督查指挥部督办领导王伟同志会同费巍同志多次研究创文工作，及时跟踪创文办问题整改及反馈情况，随时掌握进度，为督办问责做准备。结合</span>“<span style=\"font-family:仿宋_GB2312\">不作为不担当问题专项治理工作</span>”，要求全区各级领导干部提高政治站位，旗帜鲜明讲政治，把专项治理工作与创文创卫等重点工作相结合，逐级传导压力，层层压实责任，一级带着一级干，一级做给一级看，激发有作为敢担当的长效机制。</span></p><p style=\"text-indent:45px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">区委常委、政法委书记、鼓楼街道创建指挥部督办领导王江杰同志深入鼓楼街现场指导工作，召集协调推动会，提出</span>“搞好一个培训、形成一个方案、健全一个机制、压实一条责任、打造一批亮点”的工作要求，指出“妥善处理好东马路乐天百货等涉韩企业的稳控工作”等督办问题，帮助研究协调“周边停车难”等实际困难。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区委常委、区委办公室主任、区总工会主席、政务行为规范攻关指挥部督办领导李晶同志对政务行为规范问题开展专项督办。赴区编办督查，与编办创文工作领导小组座谈，听取汇报。对在牵头完善行政执法管理工作中遇到的部分文件制定不在权限范围问题、涉农等领域没有管理权限问题，提出建议，要求主动对接，争取指导，学习借鉴先进经验，提高认识、以责任保落实，关死后门、以局部保全局，从严从实、以标准保效果，确保创文工作有力有序推进。</span></p><p style=\"text-indent:43px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区人大常委会副主任、嘉陵道街道创建指挥部督办领导刘建农同志现场听取嘉陵道街创文工作汇报，实地查看罗江里、嘉陵北里等社区，要求将全年各项工作与创文工作搞好结合，加强与宣传部门沟通联系，并提出将罗江里小区打造为重点示范社区。</span></p><p style=\"text-indent:43px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区人大常委会副主任、体育中心街道创建指挥部督办领导马金然同志实地走访体育中心街仁爱濠景、时代奥城等五个社区，查看凌庄子道、凌宾路等重点地段和交通路口，要求结合市检查组暗访情况，加大整改力度，确保整改到位。</span></p><p style=\"text-indent:43px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区人大常委会副主任、向阳路街道创建指挥部督办领导马国栋同志实地走访向阳路街拥军里、富平里等五个社区，查看海洋路、向阳路等五个地段，听取工作汇报，并协调区市容园林委等部门共同研究重点地段的脏乱治理和违章拆除问题。</span></p><p style=\"text-indent:43px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区人大常委会副主任、万兴街道创建指挥部督办领导王军同志深入实地走访万兴街，听取工作汇报，与街道负责同志共同谋划社区文化活动，要求加大宣传力度，制定工作方案，完成清单任务。</span></p><p style=\"text-indent:43px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区人大常委会副主任、学府街道创建指挥部督办领导武问健同志深入学府街督导创文工作，组织有关部门进行现场办公，要求有关部门结合各自工作实际，充分发挥职能作用，制定切实可行的工作方案，明确任务指标、责任部门和时间节点，做好示范社区打造工作。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p><br/></p>', '1492657060', null);
INSERT INTO `nk_newspaper` VALUES ('45', '第5期：加强督查督导 促推任务落实 各分指挥部领导督导创文工作开展（之二）', '摘要：副区长、治安管理与交通秩序攻关指挥部督办领导左林同志多次督查分管部门开展创文建设工作情况，重点对公共安全体系建设、2017年文明交通工作、近期见义勇为等工作进行研究部署，特别是对全国“两会”期间加强社会治安防控体系建设工作提出具体要求。结合市检查组暗访情况，要求交警南开支队抓紧落实整改，提高全区文明交通水平。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">5&nbsp;</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px; font-family: 方正小标宋_GBK;\">期</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px; font-size: 20px;\"><br/></span><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); font-size: 19px;\"><span style=\"font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">20</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"></span></p><hr/><p style=\"line-height: 150%;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"></span><br/></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">工作推动</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-indent:48px;text-align:center;line-height:40px\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">加强督查督导</span> <span style=\"font-family:方正小标宋简体\">促推任务落实</span></span></p><p style=\"text-indent:48px;text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">各分指挥部领导督导创文工作开展（之二）</span></p><p style=\"text-indent:45px;text-align:center;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">副区长、治安管理与交通秩序攻关指挥部督办领导左林同志多次督查分管部门开展创文建设工作情况，重点对公共安全体系建设、</span>2017年文明交通工作、近期见义勇为等工作进行研究部署，特别是对全国“两会”期间加强社会治安防控体系建设工作提出具体要求。结合市检查组暗访情况，要求交警南开支队抓紧落实整改，提高全区文明交通水平。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">副区长、创建联络指挥部督办领导唐松根同志结合分管工作积极推动创文工作开展。推动有关部门加强普法教育与法治宣传，加强普法讲师团与普法志愿者队伍建设，开展群众性的法治文化活动，打造公平正义的法治环境。推动有关部门加强民族事务服务体系建设，开展推进民族团结进步的创建活动、宣传教育。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">副区长、民生保障和社区文化设施建设攻关指挥部督办领导罗进飞同志多次组织责任部门召开专项工作会议，指导制定《创新社会治理</span> <span style=\"font-family:仿宋_GB2312\">做好社区建设方案》和《</span>2017年南开区社会保障工作方案》，明确工作目标和实施步骤。深入玉泉北里、观景里、天华里等社区居委会调研建设提升工作。研究南开区智慧社区管理系统建设工作。赴区人社局现场调研，督促落实创文工作任务，要求社会保障工作要做到保质保量。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">副区长、未成年人思想道德建设攻关指挥部督办领导沙红同志多次听取分管部门创文工作汇报，了解重点难点，要求严格落实指标，高标准高质量完成创文工作。为分管部门搭建沟通联络的平台和途径，促进资源共享。督促召开</span>“小手拉大手 全家讲文明”南开区教育系统创文启动大会。参加2017年卫生计生工作启动大会，强调创文工作要求。在南开中学、五马路小学的调研中，提示创文工作重点。协调推动“设立校外未成年人心理健康咨询站”工作。 </span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">副区长、市场监管与公共文化服务体系建设攻关指挥部督办领导徐晖同志多次听取分管部门创文工作进展汇报，周密部署创文工作重点。会同费巍同志专门听取商务委、市场监管局、服装街管委会关于亮证亮照经营情况的排查梳理汇报，并就下一步迎检重点准备工作提出明确具体要求。督导市场监督局、文化旅游局细化和分解创文指标，建立健全创文工作领导小组，明确责任分工。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">副区长、公共服务设施建设攻关指挥部督办领导薛彤同志多次组织相关部门就创文工作开展调研和协调。指导制订迎全运市容整治工作方案、迎全运城市综合整治大清洗大清整大扫除行动实施方案等。组织召开城市管理考核工作会议，要求严格按照时间节点落实工作部署、加快推进四化河治理。研究推进环卫基础设施建设，要求结合女子监狱地块完善环卫配套设施配建方案。调研全区道路基础设施建设和积水点改造工作，提出工作要求。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">副区长、创建联络指挥部督办领导苗林栋同志结合分管工作积极推动创文工作开展，推动有关部门协调我区金融机构提高创文意识，加强创文宣传。重视引导文明服务规范，加强银行网点投诉机制建设，不断提升行业服务标准，落实从业人员行为举止规范。</span></p><p style=\"text-indent:43px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">区政协副主席、长虹街道创建指挥部督办领导石江同志深入实地督导工作，认真查看《</span>2017<span style=\"font-family:仿宋_GB2312\">年长虹街全国文明城区工作安排意见》等创文工作资料，听取工作汇报，对重点点位的创文工作提出要求，并要求建立政协机关与长虹街道办事处的联系沟通机制。</span></span></p><p style=\"text-indent:43px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">区政协副主席、水上公园街道创建指挥部督办领导刘凯华同志认真审阅水上公园街创文工作资料，要求在思想上高度重视，重点推动落实；要坚持问题导向，针对市文明委暗访督查的问题强化整改，落实责任；要强化宣传，将创文和迎全运工作相结合，引导居民广泛参与。</span> &nbsp;&nbsp;</span></p><p style=\"text-indent:43px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">区政协副主席、兴南街道创建指挥部督办领导许洪玲同志听取兴南街</span> “文明有我——迎全运美丽之窗”文明服务行动、“迎全运——环境卫生清整”志愿服务百日行动情况汇报，要求做好“督促金泽大酒店强化创文宣传”等工作。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区政协副主席、华苑街道创建指挥部督办领导郭明华同志实地查看久华里、长华里两个社区，听取创文工作情况汇报，要求加大创文工作的宣传力度，使创文工作家喻户晓。</span></p><p style=\"text-indent:43px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">区政协副主席、王顶堤街道创建指挥部督办领导闫红年同志深入王顶堤街现场督导，实地查看家美横江路菜市场等点位，要求在下一步工作中，强化痕迹管理，注重收集相关资料；注重宣传，以信息或简报的形式推广经验、提出问题；在达标建设、公益宣传、环境整治、主题教育和档案材料等方面，加大人力、财力和物力投入。</span> </span></p><p style=\"text-indent:45px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区政协副主席、广开街道创建指挥部督办领导刘福林同志听取广开街创文工作情况汇报，赴格调春天社区、新丽里社区居委会现场督导，实地查看小区道路、小区创文宣传栏、社区活动中心，要求针对日前市检查组暗访反馈的问题抓紧落实、细化整改，确保落实。</span></p><p style=\"text-indent:48px;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p><br/></p>', '1492657111', null);
INSERT INTO `nk_newspaper` VALUES ('46', '第6期：南开区召开创文工作推动会', '摘要：按照区创文工作指挥部要求，3月20日下午，区创文办召开创文工作推动会，落实市文明办“三个一”工作要求，启动创文工作集中行动。区委常委、宣传部部长、区创文办主任费巍出席会议并讲话。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">6 </span><span style=\"line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px; font-family: 方正小标宋_GBK;\">期</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px; text-align: center;\"><br/></span><span style=\";font-family:方正小标宋_GBK;line-height:150%;color:rgb(255,0,0);font-size:19px\"><span style=\"font-family:方正小标宋_GBK\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\";font-family:方正小标宋_GBK;line-height:150%;font-size:19px\">&nbsp; 2017</span><span style=\";font-family:方正小标宋_GBK;line-height:150%;color:rgb(255,0,0);font-size:19px\"><span style=\"font-family:方正小标宋_GBK\">年</span></span><span style=\";font-family:方正小标宋_GBK;line-height:150%;font-size:19px\">3</span><span style=\";font-family:方正小标宋_GBK;line-height:150%;color:rgb(255,0,0);font-size:19px\"><span style=\"font-family:方正小标宋_GBK\">月</span></span><span style=\";font-family:方正小标宋_GBK;line-height:150%;font-size:19px\">21</span><span style=\";font-family:方正小标宋_GBK;line-height:150%;color:rgb(255,0,0);font-size:19px\"><span style=\"font-family:方正小标宋_GBK\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\";font-family:方正小标宋_GBK;line-height:150%;color:rgb(255,0,0);font-size:19px\"><span style=\"font-family:方正小标宋_GBK\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\"><span style=\"font-family:楷体\">工作推动</span></span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"margin-top:21px;margin-bottom:21px;text-align:center;line-height:37px\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">南开区召开创文工作推动会</span></span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">按照区创文工作指挥部要求，</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\">3</span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">月</span>20日下午，区创文办召开创文工作推动会，落实市文明办“三个一”工作要求，启动创文工作集中行动。区委常委、宣传部部长、区创文办主任费巍出席会议并讲话。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">会议传达了市文明办创文工作推动会精神，通报了近期实地检查情况，要求全区各部门从深抓四级督导、实施五项集中治理、推进志愿服务行动、做好文字材料收集整理、搞好宣传发动、做好集中服务和工作对接等六个方面入手，自即日起至</span>4月初启动创文专项行动，加强问题整改、落实创文任务，推动集中行动有声势、见成效。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">费巍在讲话中指出，</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">启动创建全国文明城区攻坚工作一月以来，全区上下积极行动，取得了一定的实际效果，但还有较大的提升空间。在创建全国文明城区国检百天之时，要</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">进一步</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">提高认识、坚定信心，</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">撸起袖子加油干。一要</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">进一步加强创文宣传，加大公益广告宣传，营造良好社会氛围；深入推进</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">市民宣传，提</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">升</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">知晓率</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">；</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">强化</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">新闻</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">宣传，做好</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">媒体</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">正面宣传</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">引导</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">。二要</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">注重</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">打造</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">创文</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">工作亮点，抓</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">住创文活动的</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">重点、节点和</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">特</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">点，有针对性地推出一批特色品牌经验。三要</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">坚决</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">落实问题整改</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">，</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">坚持问题导向</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">，做到</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">举一反三</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">，严格</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">自查，</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">重点针对市文明委暗访反馈问题和创文工作难点问题</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">，集中</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">攻关、克服困难，争取整改取得良好效果。创文办要做好统筹协调、组织推动和沟通服务，及时汇总分析进展情况和存在问题，并与市有关部门加强沟通联系，推动重点工作任务落实。</span></span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">区创文办有关负责同志、区创文工作指挥部成员单位有关负责同志共</span></span><span style=\";font-family:仿宋_GB2312;font-size:23px\">100</span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">余人参加会议。</span></span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p><br/></p>', '1492657124', null);
INSERT INTO `nk_newspaper` VALUES ('47', '第7期：同心共创文明城区 携手共建美丽学府 学府街深入推动创文工作开展', '摘要：自南开区创建全国文明城区工作动员部署会以来，学府街高度重视，成立学府街创建全国文明城区工作分指挥部，召开创建全国文明城区工作动员会，全街上下统一思想、凝心聚力，举全街之力、聚全街之智，采取多项举措，共创文明城区。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">7 </span><span style=\"line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px; font-family: 方正小标宋_GBK;\">期</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px; font-size: 20px;\"><img width=\"607\" height=\"3\" src=\"http://47.92.68.19/Public/ueditor/themes/default/images/spacer.gif\"/></span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); font-size: 20px;\">南开区创文工作指挥部办公室&nbsp;</span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">22</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">同心共创文明城区</span> <span style=\"font-family:方正小标宋简体\">携手共建美丽学府</span></span></p><p style=\"text-align:center;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">学府街深入推动创文工作开展</span></p><p style=\"text-indent:45px;text-align:center;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"margin-bottom: 10px;text-indent: 45px;line-height: 43px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">自南开区创建全国文明城区工作动员部署会以来，学府街高度重视，成立学府街创建全国文明城区工作分指挥部，召开创建全国文明城区工作动员会，全街上下统一思想、凝心聚力，举全街之力、聚全街之智，采取多项举措，共创文明城区。</span><span style=\"font-size: 23px; font-family: 仿宋_GB2312; text-decoration: none;\">区人大常委会主任陈玉恒多次深入学府街现场调研督导、提出工作要求，区人大常委会副主任武问健陪同调研并作出具体部署，推动了创建工作深入开展</span><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">。目前，学府街在学湖里社区、天大四季村社区、南大西南一社区打造了文明创建宣传示范社区。</span></p><p style=\"text-indent:45px;line-height:43px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">加强氛围营造倡文明。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">向广大党员干部、居民群众发出了《同心共创文明城区</span> &nbsp;<span style=\"font-family:仿宋_GB2312\">携手共建美丽学府》倡议书，张贴在街域的每个社区和楼门。制作创文宣传彩旗近</span>3000面，在社区门前、出入口、中心广场、楼间甬道、沿街围栏悬挂展示，制作以社会主义核心价值观24字为主题的钥匙扣5000个，使社区居民、过往行人都能看到创文宣传的内容，做到举目可见，全面覆盖。<span style=\"font-family:仿宋_GB2312\">学湖里、四季村等社区巡逻中查漏补缺，张贴创建文明城区宣传海报，航天北里社区在荣迁东里、航天北里两个自然小区出入口以及社区宣传栏内张贴宣传海报，风湖里、美湖里、西南二等社区在醒目位置悬挂创文宣传布标，利用社区党建工作群、</span>“居民之家”微信群号召居民支持文明城区创建，使文明城区活动深入人心，营造人人知晓、动手参与、无私奉献的良好氛围。</span></p><p style=\"text-indent:45px;line-height:43px;background:rgb(255,255,255)\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">加大拆违力度优环境。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">加大对街域游商摆卖和违法建设的巡查力度，街综合执法大队和城管科全天候对市场外溢、占道经营等问题进行专项治理，街道科室进行重点部位值班制度，协助综合执法、城管和社区做好环境治理监督工作。开展集中拆除行动，街综合执法大队全体人员主动放弃休息时间，出动执法队员</span>23名，执法车辆2辆、执法电动自行车15辆，对街域内主干道路、重点道路及部分次支道路两侧的违法户外LED类型广告设施集中拆除，<span style=\"font-family:仿宋_GB2312\">共拆除违法户外</span>LED广告牌50块、刀牌8块、墙体字8个。<span style=\"font-family:仿宋_GB2312\">学湖里社区各网格员与街干部一起，入户走访，开展圈挡、违建、堆物清理工作。天大四季村社区持续开展清整行动，对违建、乱圈乱占、乱堆乱放</span>458户开展宣传动员，清理外环境、楼内堆物堆料共计35车。南大西南一社区开展地毯式清整，目前总共清理社区堆物122处，拆除违章38处，清理圈占16处，共计清理66车。通过统一治理和清整行动，促进街域市容环境整洁有序发展。</span></p><p style=\"margin-bottom: 10px;text-indent: 45px;line-height: 43px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">开展志愿服务树新风。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">组织开展</span>“创建全国文明城区，志愿服务启动仪式”主题活动日。全街以郭明义爱心服务基地为平台，成立志愿服务总队，14个社区成立志愿服务分队，开展了深层次、多领域、广项目的志愿服务活动，不断践行雷锋精神，共创和谐美好家园。天大六村社区组织开展“学雷锋志愿者清洁社区健身器材”大扫除活动。西南二社区以“庆三.八、迎全运，全民健身运动会”为青年志愿者搭建平台，开展志愿服务。府湖里社区邀请天津中医药大学博硕士服务团青年志愿者开展义诊。照湖里社区志愿者与天大附中志愿者将社区内乱贴的广告、社区绿地里的白色垃圾进行整理，张贴创文创卫宣传海报，对社区宣传栏、健身器械进行清理。四季村社区组织辖区青少年深入困难残疾人家中开展志愿服务。新园村社区团委组织社区青年来到南开区“学雷锋、学焦裕禄”主题馆参观。美湖里社区联合社区卫生服务站开展了“弘扬雷锋精神 &nbsp;创建文明城市”义诊服务活动。风湖里社区联合天大附中高中部的志愿者开展扶残助残、清理社区等学雷锋志愿活动。学湖里社区学府医院、中医一附属、河北区光复街道枫叶正红老年服务队等志愿者队伍举办学雷锋志愿者便民服务活动。龙兴里社区开展青春志愿校园行，走进风湖里小学开展自我安全防护志愿服务。</span></p><p style=\"margin-bottom: 10px;text-indent: 45px;line-height: 43px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"></span></p><p><img src=\"/ueditor/php/upload/image/20170421/1492744869282890.png\" title=\"1492744869282890.png\"/></p><p><img src=\"/ueditor/php/upload/image/20170421/1492744869118423.png\" title=\"1492744869118423.png\"/></p><p><img src=\"/ueditor/php/upload/image/20170421/1492744869763297.png\" title=\"1492744869763297.png\"/></p><p><img src=\"/ueditor/php/upload/image/20170421/1492744870824661.png\" title=\"1492744870824661.png\"/></p><p><br/></p><p><br/></p><p><br/></p><p style=\"margin-bottom: 10px;text-indent: 45px;line-height: 43px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><br/></span><br/></p><p style=\"text-align: center;\"><br/></p><p style=\"margin-bottom: 10px;text-indent: 45px;line-height: 43px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><br/></span><br/></p><p style=\"margin-bottom: 10px; text-indent: 45px; line-height: 39px;\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p>', '1492744875', null);
INSERT INTO `nk_newspaper` VALUES ('48', '第8期：小手拉大手 全家讲文明 区教育局深入推进创文工作开展 着力打造创文亮点品牌', '摘要：日前，区教育系统在全区委办局中率先召开创文工作启动大会，开展内容丰富的特色主题活动，打造创文亮点品牌，掀起了努力创建文明城区、切实提高文明素质的热潮。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">8 </span><span style=\"line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px; font-family: 方正小标宋_GBK;\">期</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px; text-align: center;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">23</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-indent:48px;text-align:center;line-height:37px\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">小手拉大手</span> <span style=\"font-family:方正小标宋简体\">全家讲文明</span></span></p><p style=\"text-indent:45px;text-align:center;line-height:37px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">区教育局深入推进创文工作开展</span> <span style=\"font-family:仿宋_GB2312\">着力打造创文亮点品牌</span></span></p><p style=\"text-indent:45px;text-align:center;line-height:37px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">日前，区教育系统在全区委办局中率先召开创文工作启动大会，开展内容丰富的特色主题活动，打造创文亮点品牌，掀起了努力创建文明城区、切实提高文明素质的热潮。</span></p><p style=\"text-align:center;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">高度重视，建立协同工作机制</span></strong></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">教育局成立创建工作领导小组，形成了党委统一领导、党政齐抓共管的领导体制和工作格局。各基层单位高度重视，把创建工作列入重要议事日程。充分发挥党政一把手的主体责任和牵头作用，分解创建任务，明确创建责任，把创建工作切实抓在手上。教育局各职能科室、学校各部门切实发挥职能作用，各负其责、各尽所能，形成了上下联动、协调各方的工作机制，为创建工作提供组织保障，确保创建工作取得实效。</span></p><p style=\"text-indent:44px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">2月28日，召开全系统 “小手拉大手全家讲文明”创文工作启动大会，进一步明确目标任务。<span style=\"font-family:仿宋_GB2312\">做好思想发动，让每名师生了解创文意义和肩负责任；做好氛围营造，加强宣传推动；加强教师思想道德建设，强化师德承诺，规范教师行为；大力开展童心向党、美德好少年、我的中国梦等主题教育活动，加强中学生核心素养和行为习惯教育培养；深入推进</span>“三结合”教育，完善“三结合”教育体系，加强中华优秀传统文化教育，推进文明礼仪进校园，形成文明风尚。</span></p><p style=\"text-align:center;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">突出重点，打造创文特色亮点品牌</span></strong></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">开展</span>“小手拉大手全家讲文明”礼仪教育活动。<span style=\"font-family:仿宋_GB2312\">充分发挥课堂主渠道、主阵地作用，使学生全面了解文明礼仪。除德育学科课程外，各中小学利用每天</span>10分钟晨会时间对学生进行文明礼仪教育，确保<span style=\"font-family:仿宋_GB2312\">课程、课时、师资、教材四落实。充分发挥好南开区中小学生文明礼仪宣传画和南开区中小学生《文明礼仪教育读本》的作用，寓教于乐，提高文明礼仪教育的吸引力和实效性。抓住重要节日、重大活动开展形式多样的主题教育活动，营造文明礼仪氛围。结合公益劳动、社区服务、志愿服务等社会实践活动，充分利用文化馆、纪念馆等场所开展文明礼仪教育，践行文明礼仪。教育局宣传科、德育科、学前教育科、教育中心等科室部门，组织教研员、幼儿园教师放弃寒假休息时间，编著《南开区幼儿礼仪教育读本》。作为全市第一本幼儿礼仪教育读物，将面向全国发行。同时，正在紧锣密鼓编著针对小学生和中学生的《礼仪教育读本》。</span></span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">大力推进未成年人思想道德建设。</span>“以周恩来为人生楷模主题教育”是具有南开区本土特色的教育活动，通过引导学生以周总理为人生楷模，争做优秀南开学子，将“楷模教育”与培育和践行社会主义核心价值观教育和“三爱”教育有机结合。制定下发《南开区教育系统培育和践行社会主义核心价值观指导意见》等，通过课程引领、活动深化、实践提升，<span style=\"font-family:仿宋_GB2312\">把核心价值体系的基本内容和要求渗透到学校教育教学的各个环节，做到入耳、入脑、入心。如南大附中</span>“红色之旅”学生志愿者服务队到南站为旅客提供义务引导服务；四十三中学到天津市宜童自闭症康复中心帮助孩子用色彩描绘内心世界；南开区科技实验小学红领巾公益岗到天津市养老院，为老人献上节目和礼物。</span></p><p style=\"text-align:center;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">加强宣传，切实发挥好教育主阵地作用</span></strong></p><p style=\"text-indent:44px;line-height:40px\"><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">各基层单位学校充分利用校园围墙、走廊、橱窗，充分利用电子屏、广播、网站等多种媒体形式，结合学生年龄特点，加大宣传力度，为创建工作营造浓厚的文化氛围。至今教育局印制宣传画万余张，全部张贴到校园、楼道和教室，印制画册</span>3000余本；各单位制作布标、宣传口号、“图说我们的价值观”宣传<span style=\"font-family:仿宋_GB2312\">板近</span>3000幅（条、张），&nbsp;“24字”小贴士万张，制作校园、班级宣传板报1200余期<span style=\"font-family:仿宋_GB2312\">。全系统</span>“铺天盖地、排山倒海、高潮迭起、无处不在”的宣传态势已初步形成。<span style=\"font-family:仿宋_GB2312\">与新闻中心联合组织全国、天津市近</span>20家主流媒体集聚南开实验学校，宣传推广我区良好行为习惯养成教育和礼仪教育成功经验以及我区将礼仪教育作为创文工作突破口的重要举措，引起极大反响。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">同时，教育局还将构筑教育系统机关、学校、家庭为体系的创建网络，形成干部、教师、学生、家长人人参与创建的工作格局。深化</span>“文明校园”创建工作，努力将文明校园建设与思想教育、师德建设、队伍提升、学校文化、环境整治、学生行为习惯养成结合起来，提高师生公民道德、职业道德、文明修养和法治观念；提高校园文化品位，形成格调高雅、内涵丰富；提高校园文明程度，形成秩序良好、环境优美，行为规范，让文明校园成为文明城区的品牌标识。</span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492745149142822.jpg\" title=\"1492745149142822.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492745150506656.jpg\" title=\"1492745150506656.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492745150140287.jpg\" title=\"1492745150140287.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492745150701418.jpg\" title=\"1492745150701418.jpg\"/></p><p><br/></p>', '1492745185', null);
INSERT INTO `nk_newspaper` VALUES ('49', '第9期：集爱心换好礼 抓日常见长效 嘉陵道街探索志愿服务新模式', '摘要：为深入推进创文工作，加强社区精神文明建设，弘扬志愿服务精神，发挥榜样引领作用，嘉陵道街采取多项措施，制定《嘉陵道街2017年志愿服务活动方案》，建立《嘉陵道街社区学雷锋志愿服务站工作制度》，不断创新志愿服务日常管理机制，形成志愿服务新模式。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">9 </span><span style=\"line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px; font-family: 方正小标宋_GBK;\">期</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">23</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">集爱心换好礼</span> <span style=\"font-family:方正小标宋简体\">抓日常见长效</span></span></p><p style=\"text-align:center;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">嘉陵道街探索志愿服务新模式</span></p><p style=\"text-indent:45px;line-height:37px\"><span style=\";font-family:仿宋;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:37px\"><span style=\";font-family:仿宋;font-size:23px\"><span style=\"font-family:仿宋\">为深入推进创文工作，加强社区精神文明建设，弘扬志愿服务精神，发挥榜样引领作用，嘉陵道街采取多项措施，制定《嘉陵道街</span>2017年志愿服务活动方案》，建立《嘉陵道街社区学雷锋志愿服务站工作制度》，<span style=\"font-family:仿宋\">不断创新志愿服务日常管理机制，形成志愿服务新模式。</span></span></p><p style=\"margin-bottom: 10px;text-indent: 45px;line-height: 37px\"><strong><span style=\"font-family: 仿宋;font-size: 23px\">“集爱心换好礼”</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋;\">，</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋;\">推动爱心服务</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋;\">。</span></strong><span style=\";font-family:仿宋;font-size:23px\"><span style=\"font-family:仿宋\">在宜宾西里社区试点开展</span>“集爱心换好礼”爱心服务卡项目<span style=\"font-family:仿宋\">，为每位社区志愿者印制专属爱心卡片，自</span>3月上旬启动以来，已发送100卡片余张<span style=\"font-family:仿宋\">。社区居民每参加一小时的公益劳动和志愿服务，即可在社区的学雷锋志愿者服务站换取一枚爱心印章，收集满二十枚印章后，就能换取一张超市抵用券，激励更多的社区居民参与到社区公益、社会服务中来。该活动被《天津日报》、《每日新报》、《今晚报》等市级媒体刊载，受到了社会群众的一致好评，取得了良好效果。</span></span></p><p style=\"text-align:center\"><span style=\";font-family:Calibri;font-size:14px\"><img src=\"/ueditor/php/upload/image/20170421/1492745360136909.jpg\" title=\"1492745360136909.jpg\" alt=\"图片1.jpg\"/>&nbsp;</span></p><p style=\"margin-bottom:10px;text-align:center;line-height:37px\"><span style=\";font-family:楷体;font-size:19px\"><span style=\"font-family:楷体\">图一：嘉陵道街志愿者</span>“集爱心换好礼”活动</span></p><p style=\"margin-bottom: 10px;text-indent: 45px;line-height: 37px\"><strong><span style=\"font-size: 23px; font-family: 仿宋;\">制作志愿服务手册，加强痕迹管理。</span></strong><span style=\"font-size: 23px; font-family: 仿宋;\">落实志愿服务登记注册制度，每个社区建立不少于五类志愿者团队：即助老助困、平安巡逻、文艺团体、政策宣讲、环境卫生志愿者服务队。由居委会负责对社区志愿服务团队日常活动进行管理，为社区志愿者统一配置标识，制作统一坎肩，使志愿者在参与活动时更有参与感和荣誉感，提升了团队凝聚力。</span></p><p style=\"text-align:center\"><span style=\";font-family:Calibri;font-size:14px\"><img src=\"/ueditor/php/upload/image/20170421/1492745374105780.jpg\" title=\"1492745374105780.jpg\" alt=\"图片2.jpg\"/>&nbsp;</span></p><p style=\"text-align:center;line-height:37px\"><span style=\"font-size: 19px; font-family: 楷体;\">图二：嘉陵道街志愿者统一着装开展志愿服务活动</span></p><p style=\"margin-bottom: 10px;text-indent: 45px;line-height: 37px\"><strong><span style=\"font-size: 23px; font-family: 仿宋;\">丰富社区宣传载体，推广志愿活动。</span></strong><span style=\";font-family:仿宋;font-size:23px\"><span style=\"font-family:仿宋\">建立</span>“爱心服务墙”，开辟专门的空间，以“求助清单”、“志愿者心声”、“公益回眸”、“社区好人好事”等专栏形式，展示社区公益和志愿服务活动情况，加强舆论引导，营造互帮互助、团结和睦的良好氛围。</span></p><p style=\"text-align:center\"><span style=\";font-family:Calibri;font-size:14px\"><img src=\"/ueditor/php/upload/image/20170421/1492745403230822.jpg\" title=\"1492745403230822.jpg\" alt=\"图片3.jpg\"/>&nbsp;</span></p><p style=\"text-align:center;line-height:37px\"><span style=\";font-family:楷体;font-size:19px\"><span style=\"font-family:楷体\">图三：嘉陵道街宜宾西里</span>“<span style=\"font-family:楷体\">爱心服务墙</span>”</span></p><p style=\"margin-bottom: 10px;text-indent: 45px;line-height: 37px\"><strong><span style=\"font-size: 23px; font-family: 仿宋;\">完善志愿者巡访团队伍，加强督促检查。</span></strong><span style=\";font-family:仿宋;font-size:23px\"><span style=\"font-family:仿宋\">全街建立</span>60人的市民巡访团，每个社区也成立了巡访组，每个自然小区和社区都确立一位联络人，负责日常巡访信息的上报和总结，协助社区居委会在宣传氛围、环境卫生、文化场所、未成年人思想道德建设等方面开展督查，促进重点任务落实。</span></p><p style=\"text-indent:45px;line-height:37px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p><br/></p>', '1492745412', null);
INSERT INTO `nk_newspaper` VALUES ('50', '第10期：加强市场监管 规范经营秩序 营造文明氛围 区市场监管局深入推进创文工作', '摘要：自南开区创建国家文明城区动员部署会议召开以来，区市场和质量监督管理局开展专项行动，规范市场秩序，营造守法氛围，提升市场监管水平，推动创建任务落实，取得良好效果。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">10 </span><span style=\"line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px; font-family: 方正小标宋_GBK;\">期</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">24</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">加强市场监管</span> <span style=\"font-family:方正小标宋简体\">规范经营秩序</span> <span style=\"font-family:方正小标宋简体\">营造文明氛围</span></span></p><p style=\"text-align:center;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区市场监管局深入推进创文工作</span></p><p style=\"text-indent:45px;line-height:37px\"><span style=\";font-family:仿宋;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋;\">自南开区创建国家文明城区动员部署会议召开以来，区市场和质量监督管理局开展专项行动，规范市场秩序，营造守法氛围，提升市场监管水平，推动创建任务落实，取得良好效果。</span></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋;\">全面梳理任务，强化跟踪落实。</span></strong><span style=\";font-family:仿宋;font-size:23px\"><span style=\"font-family:仿宋\">局领导班子高度重视创文工作，认真梳理创文工作任务清单，结合日常工作梳理出</span>13项工作目标任务。2月22日，召开动员部署会议，将13项重点任务落实到具体职能科室，并研究制定具体实施方案。3月8日，召开创文工作推动会，对创文工作开展以来存在的问题和重点难点进行分析，对实施方案进行完善，对消费者权益保护、食品安全周、企业诚信建设、虚假广告治理、药品清理工作等具体内容进行再次细化，要求各责任部门制定相应的实施方案，按照时间节点保质保量完成任务。</span></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋;\">开展专项行动</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋;\">，</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋;\">规范市场秩序</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋;\">。</span></strong><span style=\";font-family:仿宋;font-size:23px\"><span style=\"font-family:仿宋\">以</span>“3·15国际消费者权益日”为契机，进行专项治理活动，规范市场秩序，维护广大消费者合法权益。加强药品市场整治，与公安南开分局刑侦等部门联合召开打击药品非法经营违法犯罪案件“行刑衔接”座谈会，配合公安南开分局刑侦支队捣毁非法经营药品窝点2个，查获非法经营药品犯罪货值金额超过30万元，依法审查犯罪嫌疑人8名，其中2名被依法批捕；配合公安南开分局长虹派出所盘查非法药贩20人，现场对涉案人员进行询问调查和训诫，对涉案物品采取扣押措施，对涉嫌非法收购药品、未取得《药品经营许可证》、《医疗器械经营许可证》经营药品、医疗器械等违法行为依法立案17件，涉案货值金额近8万元。开展酒类市场专项检查，重点检查了辖区内10余家烟酒营销店，共查获侵权酒品120瓶，有效净化了辖区内酒类市场消费环境。持续开展无证无照经营专项治理工作，确保主次干道、集贸市场内商户亮证亮照经营，对体育中心菜市场、云阳道菜市场、西营门菜市场中缺少投诉箱、未亮照经营等问题进行了及时整治。开展食品安全专项治理，要求食品销售商户及农贸市场内商户建立进销货台账。</span></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋;\">加大宣传力度，营造守法氛围。</span></strong><span style=\";font-family:仿宋;font-size:23px\"><span style=\"font-family:仿宋\">加强对商户的日常规范经营、守法经营、诚信经营的宣传教育，加大对各大卖场日常巡查和监管力度，建立长效监管机制。召开</span>“行政约谈会”，对百脑汇电子商城、时代数码广场、赛博数码广场和鼎好手机城等电子卖场负责人及部分商户代表进行行政约谈，通过行政指导，提高经营者自律意识，规范企业经营行为，解决电子产品违法销售的问题。利用消费安全信息栏加大宣传警示力度，用多样的形式制定防骗提示、警示语、温馨提示单等，张贴在醒目位置，提醒广大消费者安全理性消费。吸纳社会义务监督员，发动群众力量协助监管部门查处违法行为。组织团员青年积极参加奉献爱心志愿服务活动，大力宣传食品药品安全知识、电梯安全使用规范、消费品质量保障常识、日用品执行标准辨识方法、“计量与生活”科普知识。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-family: 仿宋_GB2312; font-size: 23px;\"></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492745643643755.jpg\" title=\"1492745643643755.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492745643124891.jpg\" title=\"1492745643124891.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492745643101344.jpg\" title=\"1492745643101344.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492745643119068.jpg\" title=\"1492745643119068.jpg\"/></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-family: 仿宋_GB2312; font-size: 23px;\">&nbsp;</span><br/></p><p><br/></p>', '1492745677', null);
INSERT INTO `nk_newspaper` VALUES ('51', '第11期：凝心聚力齐谋划 上下联动共创建 鼓楼街深入推动创文工作开展', '摘要：南开区创建全国文明城区工作动员部署会以来，鼓楼街迅速成立创文工作分指挥部，制定实施方案，明确任务分工，落实工作责任，形成创建文明城区人人有责，上下联动的良好氛围。区委书记姚来英同志多次深入鼓楼街进行调研督导并做出工作部署，区委常委、政法委书记王江杰同志现场督察并提出具体要求，有力推动创建任务落实。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">11&nbsp;</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px; font-family: 方正小标宋_GBK;\">期</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">24</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">凝心聚力齐谋划</span> <span style=\"font-family:方正小标宋简体\">上下联动共创建</span></span></p><p style=\"text-align:center;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">鼓楼街深入推动创文工作开展</span></p><p style=\"text-indent:45px;line-height:43px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:43px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">南开区创建全国文明城区工作动员部署会以来，鼓楼街迅速成立创文工作分指挥部，制定实施方案，明确任务分工，落实工作责任，形成创建文明城区人人有责，上下联动的良好氛围。区委书记姚来英同志多次深入鼓楼街进行调研督导并做出工作部署，区委常委、政法委书记王江杰同志现场督察并提出具体要求，有力推动创建任务落实。</span></p><p style=\"text-indent:45px;line-height:43px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">精心组织安排，促推任务落实。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">召开创建全国文明城区工作动员会，全街上下统一思想、凝心聚力，举全街之力、聚全街之智，采取多项举措，共创文明城区。召开迎全运落实</span>“两创”目标工作推动会，部署《鼓楼街迎全运城市综合整治大清洗大清整大清扫行动实施方案》，要求各单位部门各负其责，重点围绕道路脏乱破损和社区楼道堆物两大任务开展工作，落实重点地区、重点点位的专项治理。召开12个物业管理公司座谈会，就小区张贴摆放宣传品等事宜征求物业公司的意见和建议，共同建设美丽社区。</span></p><p style=\"text-indent:45px;line-height:43px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">加强宣传引导，营造创建氛围。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">鼓楼街九个社区分别开展了创建全国文明城区启动仪式，宣读倡议书，倡议大家支持、宣传、投身文明创建，并携手辖区物业公司、企业共驻共建，共同参与。利用宣传橱窗张贴创文宣传画，在辖区每个楼门张贴亚克力材质《社会主义核心价值观》、《居民公约》，挨家挨户发放《致居民一封信》。针对年轻人群体，利用微博、微信等新媒体公众平台，宣传创共建全国文明城区工作。利用街道自办的《老城厢文化》刊登创文有关内容。组织居民、物业公司工作人员进行创文知识问答。在植树节期间宣传植绿、护绿理念，营造了良好的环保氛围。向居民发放创建文明城区宣传品，邀请居民们在</span>“宣传承诺”布标上签名，以实际行动传递文明、践行文明、弘扬文明，展示文明现代人形象。</span></p><p style=\"text-indent:45px;line-height:43px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">做好环境清整</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">，落实常态管理。</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">鼓楼街将巩固治理成果和常态化管理作为工作重点，在对重点地区、重点路段、重点点位设专人定点值守、不定时巡查等基础上，完善以街道、古文化街和商业街管委会、社区、社区志愿巡逻队、物业公司五位一体的市容监管体系，对辖区环境随时巡查巡控，做到市容问题及时掌握、发现问题及时处置。针对新安商厦个别点位脏乱问题，开展集中治理，第一时间对周边杂物、堆物、违章棚亭、占道经营进行彻底整治清理；进一步规范早点摊位，明确要求早点摊位八点半之前必须全部撤离，对不撤离的，坚决清理。针对鼓楼商业街古玩市场外溢乱摆乱卖现象，落实属地管理责任，坚持周四执法队员全员上岗，从早八点到下午两点，采取占领式人员执守和两个巡查车组，每车四人，不间断动态巡查等方式，全方位对鼓楼商业街周边及城厢中路进行管理，确保鼓楼周边保持良好的市容环境秩序。</span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492745797138583.jpg\" title=\"1492745797138583.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20170421/1492745797666002.jpg\" title=\"1492745797666002.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492745798382552.jpg\" title=\"1492745798382552.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20170421/1492745798173418.jpg\" title=\"1492745798173418.jpg\"/></p><p style=\"line-height:43px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span><br/></p><p><br/></p>', '1492745910', null);
INSERT INTO `nk_newspaper` VALUES ('52', '第12期：区委主要领导对创文工作做出重要批示', '摘要：3月23日，区委书记姚来英在南开区全国文明城区创建工作简报第4期《加强督查督导 促推任务落实 各分指挥部领导督导创文工作开展（之一）》上做出重要批示：加大力度，抓实抓细，解决突出问题，推进措施落地。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">12 </span><span style=\"line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px; font-family: 方正小标宋_GBK;\">期</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">24</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">工作推动</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"text-align:center\"><span style=\"font-size: 29px; font-family: 方正小标宋简体;\">区委主要领导对创文工作做出重要批示</span></p><p><span style=\";font-family:方正小标宋简体;font-size:29px\">&nbsp;</span></p><p style=\"text-indent:58px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">3月23日，区委书记姚来英在南开区全国文明城区创建工作简报第4期《加强督查督导 促推任务落实 各分指挥部领导督导创文工作开展（之一）》上做出重要批示：</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">加大力度，抓实抓细，解决突出问题，推进措施落地。</span></strong></p><p style=\"text-indent: 58px;\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">全区要认真落实区委主要领导批示精神，进一步加大工作力度</span><span style=\"font-size: 23px; font-family: 仿宋; background: rgb(255, 255, 255);\">，采取有力措施，着力解决重点难点问题，集中力量、合力攻坚，确保创建任务落实。</span></p>', '1492746032', null);
INSERT INTO `nk_newspaper` VALUES ('53', '第13期：多方协调对接 突出行业特色 区卫生计生委深入推进创文工作', '摘要：自南开区创建国家文明城区动员部署会议召开以来，区卫生和计划生育委员会迅速行动，制定任务清单，协调相关部门，突出行业特色，推动创建工作开展，掀起卫生计生行业创文工作的热潮。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 37px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">13 </span><span style=\"line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px; font-family: 方正小标宋_GBK;\">期</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">27</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">多方协调对接</span> <span style=\"font-family:方正小标宋简体\">突出行业特色</span></span></p><p style=\"text-align:center;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区卫生计生委深入推进创文工作</span></p><p style=\"text-indent:45px;line-height:37px\"><span style=\";font-family:仿宋;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋;\">自南开区创建国家文明城区动员部署会议召开以来，区卫生和计划生育委员会迅速行动，制定任务清单，协调相关部门，突出行业特色，推动创建工作开展，掀起卫生计生行业创文工作的热潮。</span></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋;\">高度重视，建立机制。</span></strong><span style=\"font-size: 23px; font-family: 仿宋;\">成立由委党委书记、主任任组长、各位副职领导任副组长、各科室负责人为成员、宣传科为专职秘书的创建全国文明城区工作领导小组，并制定《南开区卫生计生委创建全国文明城区工作进度清单》，就每项测评内容的工作要求确定责任人、倒排工期，确保高质量完成创文工作。</span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">及时召开全系统创文工作部署会，对承担的创建工作任务进行再部署、再推动，要求各基层单位分别成立创文工作领导小组，制定创文方案，营造创建氛围，明确分工、抓好落实。选派</span>2<span style=\"font-family:仿宋_GB2312\">名工作人员参与区创文办工作，又从基层选拔</span>1名工作人员负责本系统创文工作，增强创建工作力量。</span></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">积极协调，全面覆盖。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">推动三级医院开展创文工作，邀请协调南开区属地内六所三级医院召开创文推动会，营造浓厚氛围，鼓励采用有自己单位特色的宣传方式进行创文宣传；积极搞好单位内部环境卫生，院内张贴禁烟标识，塑造医护人员良好向上的精神面貌；设立</span>“志愿服务岗”，搞好志愿服务，树立三级医院在创文工作中的标兵形象。推动民营医院开展创文工作，召开200余家民营医疗机构参加的创文推动会，要求民营医疗机构高度重视，提高认识，提高知晓率；要求各民营医疗机构将各项任务及时安排部署到位，将创文工作传达到每一位医务人员；要求各民营医疗机构深入开展创建工作，坚持问题导向，针对发现问题及时整改；并从民营医疗机构文明规范、文明素质、基础设施建设、公益广告宣传等方面提出具体标准和要求。</span></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">注重实际，打造特色。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">积极配合区教育局建立校外未成年人心理健康辅导站，拟将南开区校外未成年人心理健康辅导站设在王顶堤医院。责成王顶堤医院尽快调配专门工作场地，配备心理咨询电话，到</span>63中学和天津理工大学实地调研学习，拟订方案，按要求完成校外未成年人心理辅导站建设工作。组织医疗专业志愿服务队进社区开展志愿服务，联合鼓楼街在鼓楼街铜锣湾社区开展“弘扬雷锋精神，共建文明城区”青年志愿者社区服务日活动。组织开展两次无偿献血活动，缓解用血压力。制定义诊和健康大讲堂活动方案，将于近期开始活动，方便居民了解健康知识。打造黄河医院示范点位，并向全区医疗机构积极推广。&nbsp;</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-family: 仿宋_GB2312; font-size: 23px;\"></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492746180448391.jpg\" title=\"1492746180448391.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492746180616215.jpg\" title=\"1492746180616215.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492746180179786.jpg\" title=\"1492746180179786.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492746181114490.jpg\" title=\"1492746181114490.jpg\"/></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-family: 仿宋_GB2312; font-size: 23px;\">&nbsp;</span><br/></p><p><br/></p>', '1492746234', null);
INSERT INTO `nk_newspaper` VALUES ('54', '第14期：同创文明城区 共建七彩长虹 长虹街深入推动创文工作开展', '摘要：自南开区创建全国文明城区工作动员部署会以来，长虹街成立领导小组，召开创文工作动员部署会，全街上下统一思想，凝聚共识，突出重点，细化分工，压实责任，形成街道、社区共创全国文明城区的良好氛围。区委副书记、区长冯卫华深入长虹街进行现场督导调研并做出重要指示，区政协副主席石江督导创文工作并提出指导性意见和建议，切实推动创文工作再上新台阶。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">14&nbsp;</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px; font-family: 方正小标宋_GBK;\">期</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">27</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">同创文明城区</span> <span style=\"font-family:方正小标宋简体\">共建七彩长虹</span></span></p><p style=\"text-align:center;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">长虹街深入推动创文工作开展</span></p><p style=\"line-height:43px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">自南开区创建全国文明城区工作动员部署会以来，长虹街成立领导小组，召开创文工作动员部署会，全街上下统一思想，凝聚共识，突出重点，细化分工，压实责任，形成街道、社区共创全国文明城区的良好氛围。区委副书记、区长冯卫华深入长虹街进行现场督导调研并做出重要指示，区政协副主席石江督导创文工作并提出指导性意见和建议，切实推动创文工作再上新台阶。</span></p><p style=\"text-indent:45px;line-height:39px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">加大创文宣传营氛围。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">召开全街创文工作动员部署会，激发全体干部群众积极参与文明城区创建活动的热情，巩固和扩大已有成果，坚定信心，增强自身的使命感与责任感。规范社区上墙的各项规章制度，为</span>13个社区制作安装创建全国文明城区的宣传栏，向广大居民和党员干部发放创文宣传品10000张，张贴创文海报1200张，撰写创文黑板报130块，自制创文宣传品2000份。各社区每周开展两次创文主题活动，先后开展了“弘扬雷锋精神，做文明有礼南开人”志愿者活动、庆3.8妇女节纪念活动等。利用长虹微频道，制作《南开区创建全国文明城区长虹街工作集锦》，每期刊登一篇创文工作内容，展现长虹街创文工作的风采，营造人人知晓、积极参与的良好氛围。</span></p><p style=\"text-indent:45px;line-height:39px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">推动市容治理优环境。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">加大对街域游商摆卖和违法建设的巡查力度，街综合执法大队全天候对市场外溢、占道经营等问题进行专项治理。各社区和综合执法大队、城管科持续开展清整行动，对违建、乱圈乱占、乱堆乱放的社区开展宣传动员，清理外环境。针对天明街、汶水路占路摆卖问题，开展集中治理，第一时间对周边杂物、堆物、违章棚亭、占道经营进行彻底整治清理。开展集中拆除行动，出动执法队员</span>20名，执法车辆2辆、执法电动自行车4辆，对街域内主干道路、重点道路及部分次支道路两侧的违法户外LED类型广告设施集中拆除，<span style=\"font-family:仿宋_GB2312\">共拆除违法户外</span>LED广告牌60块、<span style=\"font-family:仿宋_GB2312\">信息牌</span>44处、堆物32处、喷涂贴画37处、违章棚亭2处、外摆灯箱2处、牌匾破损1处。</span></p><p style=\"text-indent:45px;line-height:39px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">开展志愿服务造声势。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">全街</span>13个社区共成立志愿者服务队50 支，开展不同形式、不同领域的各项志愿活动。组织青年志愿者积极响应“每周奉献一小时，青年创文在行动”倡议，开展“弘扬雷锋精神，做文明有礼南开人”长虹街青年志愿者集中行动日，倡导“奉献、友爱、互助、进步”的志愿者精神，积极引导全街广大青年牢固树立社会主义核心价值观，展现文明有礼的南开人风采。携手南开社险团委在南开养老中心举办“创建全国文明城区，长虹青年志愿者在行动”送温暖活动。平陆东里社区组织辖区党员、青年志愿者和社区居民，连续三年开展绿植种植环保活动，倡导环保精神，共建文明城区。盛达园社区联合中老年时报、天津市老基会、南开区法律举办“3.15助老消费维权进社区”活动。</span></p><p style=\"line-height:43px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492746404460310.jpg\" title=\"1492746404460310.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492746404109180.jpg\" title=\"1492746404109180.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492746404130618.jpg\" title=\"1492746404130618.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492746404395849.jpg\" title=\"1492746404395849.jpg\"/></p><p style=\"line-height:43px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"></span><br/></p><p><br/></p>', '1492746428', null);
INSERT INTO `nk_newspaper` VALUES ('55', '第15期：讲文明 树新风 共建美好环境 王顶堤街积极推动创文工作开展', '摘要：自南开区创建国家文明城区动员部署会议之后，王顶堤街及时召开党政领导班子会议，召开创文动员部署会，分解测评体系，研究创文工作。成立街道创文工作推动组，对创文日常工作进行统筹协调、组织推动、督查指导。区政协主席王东升多次到街道、社区督导检查创文工作，副区长罗进飞多次对无名路临时占路市场清除工作进行协调推动，区政协副主席闫红年对创文工作提出具体工作要求，推动全街创文工作有序进行。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">15 </span><span style=\"line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px; font-family: 方正小标宋_GBK;\">期</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); font-size: 20px;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">28</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"line-height:37px\"><span style=\";font-family:方正小标宋简体;font-size:29px\">&nbsp;</span></p><p style=\"text-align:center;line-height:37px\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">讲文明</span> <span style=\"font-family:方正小标宋简体\">树新风</span> <span style=\"font-family:方正小标宋简体\">共建美好环境</span></span></p><p style=\"text-align:center;line-height:37px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">王顶堤街积极推动创文工作开展</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋;\">自南开区创建国家文明城区动员部署会议之后，王顶堤街及时召开党政领导班子会议，召开创文动员部署会，分解测评体系，研究创文工作。成立街道创文工作推动组，对创文日常工作进行统筹协调、组织推动、督查指导。区政协主席王东升多次到街道、社区督导检查创文工作，副区长罗进飞多次对无名路临时占路市场清除工作进行协调推动，区政协副主席闫红年对创文工作提出具体工作要求，推动全街创文工作有序进行。</span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋;\">广泛宣传营造氛围。</span></strong><span style=\";font-family:仿宋;font-size:23px\"><span style=\"font-family:仿宋\">在前期调查统计的基础上，王顶堤街在</span>23个社区、64个自然小区的出入口安装公益广告栏134个，宣传创文工作。在社区门口、楼门口安装社会主义核心价值观宣传内容和《天津市民守则》，在街道工作人员办公桌放置社会主义核心价值观桌牌，做到随处可见，引导广大干部群众自觉加入到创建工作中来。创办《王顶堤创文动态信息》，将创文动态、社区经验、典型问题、好人好事及时编发简报，使社区、广大干部群众了解创文信息，解决实际问题，推动创文工作家喻户晓。</span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋;\">清理整治美化环境。</span></strong><span style=\";font-family:仿宋;font-size:23px\"><span style=\"font-family:仿宋\">强化文明城区、卫生城区联动联创，深入推进</span>“迎全运”城市管理综合整治工程。开展环境卫生“大清整、大清洗、大扫除”活动，做到整治一片扮靓一方，提升城区市容环境水平。加大重点道路的整治工作，开展对苑东路、华宁道、横江路的摆摊地点的清理和违章建筑的查处工作。配合相关部门拆除林苑菜市场外无名路上的违建小市场70余间。对占道经营、露天烧烤等现象进行专项整治。开展社区环境清理，为社区清理堆物堆料214车，清理社区小广告2万余条，不定期清除地锁56个，拆除圈挡2处。</span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋;\">组织推动志愿服务。</span></strong><span style=\";font-family:仿宋;font-size:23px\"><span style=\"font-family:仿宋\">组织开展全街</span>“文明城区创建志愿服务活动”。园荫里社区组织辖区内20余名小学生志愿者举办一场“学雷锋讲文明做美德少年”教育实践活动；林苑东里社区组织开展学雷锋党员志愿服务时间活动；保山南里整合周边社区志愿者团体等资源向社区居民提供家居生活、专业咨询、计划生育和劳动保障等服务，并邀请济兴医院医疗志愿服务队免费为社区人员进行健康知识讲解；金环里社区组织志愿者清理社区环境，得到居民好评；盈江西里社区居委会及社区志愿者在小区内主干道路、居民楼院、沿街商铺、大街小巷进行治安巡逻，并提示辖区居民注意防火、防盗、防诈骗；淦江里社区召开以“谱文明之曲，展巾帼风采”为主题的趣味运动会；华宁北里社区党委组织召开迎三八“关爱贫困母亲 温暖单亲家庭”帮扶救助公益活动，邀请社区内8名贫困母亲和2名单亲母亲，把党组织的温暖送给每个家庭。</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋;font-size:23px\"></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492746730281126.jpg\" title=\"1492746730281126.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492746730176731.jpg\" title=\"1492746730176731.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492746730595344.jpg\" title=\"1492746730595344.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492746730231080.jpg\" title=\"1492746730231080.jpg\"/></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋;font-size:23px\"><br/></span><br/></p><p style=\"line-height:40px\"><span style=\";font-family:仿宋;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\"font-family: 仿宋_GB2312;font-size: 23px\">&nbsp;</span></p><p><br/></p>', '1492746745', null);
INSERT INTO `nk_newspaper` VALUES ('56', '第16期：多方齐动 多措并举 共创文明 区市政局深入推进创文工作', '摘要：自南开区创建国家文明城区动员部署会议召开以来，区市政局领导高度重视，精心组织、广泛动员，突出重点、综合整治，快速推进、快出效果，营造出浓厚的创建宣传氛围，积极助推我区文明城区创建工作。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">16 </span><span style=\"line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px; font-family: 方正小标宋_GBK;\">期</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">28</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"line-height:39px\"><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">多方齐动</span> <span style=\"font-family:方正小标宋简体\">多措并举</span> <span style=\"font-family:方正小标宋简体\">共创文明</span></span></p><p style=\"text-align:center;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区市政局深入推进创文工作</span></p><p style=\"text-indent:45px;line-height:37px\"><span style=\";font-family:仿宋;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋;\">自南开区创建国家文明城区动员部署会议召开以来，区市政局领导高度重视，精心组织、广泛动员，突出重点、综合整治，快速推进、快出效果，营造出浓厚的创建宣传氛围，积极助推我区文明城区创建工作。</span></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋;\">健全组织机构，明确工作责任。</span></strong><span style=\"font-size: 23px; font-family: 仿宋;\">市政局及时召开动员部署会，成立创建全国文明城区工作领导小组，党委书记、局长任组长，班子成员、相关科室负责人各司其职，设立专职秘书，全局分工明确、协调统一、整体联动，做到一环扣一环，一级抓一级，层层抓落实。根据《责任清单》和《任务清单》中的任务分工，把任务细化到具体领导、具体科室、具体负责人和具体完成时限，增强创文工作意识，提高对任务指标的理解分析。领导履行第一责任人职责，亲自挂帅、亲力亲为。通过自上而下主导推动，形成高效运转的创建工作体系。</span></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">开展集中整治，推进市政建设。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">制定修复主次干道、背街里巷破损道路，建设盲道、缘石坡路的实施方案。结合市容环境建设等重点项目，抓住鼓楼地区、学府地区、政府周边、市体育场馆周边等重点区域，开展集中整治和任务落实，有效提升城区设施面貌。对区管市政设施盲道、无障碍设施等进行摸底调查，制订维修计划。完成对临潼路、汾水道破损盲道修复。新建科研东路人行道及盲道。完成</span>39条路的春融病害修复工作。完成其它道路病害修复10221平方米。</span></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">组织特色活动，加大宣传力度。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">多措并举，做好宣传发动，形成人人了解创文、人人重视创文、人人宣传创文、人人参与创文的良好氛围。制作社会主义核心价值观宣传布标、宣传栏展牌、电子屏，张贴创文宣传海报，发放《南开区创建全国文明城区工作材料汇编》和宣传卡片，要求全体干部职工牢记社会主义核心价值观</span>24字，把创文氛围从机关传递到各个基层单位。组织全局135人次参观南开区“双学”活动三十周年成果展览，进一步弘扬雷锋、焦裕禄精神。积极组织慰问社区困难党员，以真情关怀暖人心。<span style=\"font-family:仿宋_GB2312\">组织团员青年参加</span>“弘扬雷锋志愿精神，做文明有礼南开人”青年志愿者集中行动日活动，弘扬社会新风尚，用实际行动传递雷锋精神。组织职工进入剧场，免费观看爱国主义题材影片。召开主题党日活动，观看社会主义核心价值观主题微电影，唱响时代主旋律，弘扬社会正能量。以天津日报南开时讯板块为载体，创建“榜样的力量”专栏，积极选树典型，学榜样、树新风，传播正能量。</span></p><p style=\"line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492754335134216.jpg\" title=\"1492754335134216.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492754336136324.jpg\" title=\"1492754336136324.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492754336804220.jpg\" title=\"1492754336804220.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492754336829136.jpg\" title=\"1492754336829136.jpg\"/></p><p style=\"line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"></span><br/></p><p style=\"line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p><br/></p>', '1492754382', null);
INSERT INTO `nk_newspaper` VALUES ('57', '第17期：同创文明城区  共建美丽家园 向阳路街深入推进创文工作开展', '摘要：南开区创建全国文明城区工作动员部署会以来，向阳路街迅速成立创文工作分指挥部，制定实施方案，明确任务分工，落实工作责任，按照“思想上高度重视，责任上明确到人、措施上准确有效”的原则，全力推动创建任务落实。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">创建工作</span></strong><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\"></span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">17</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">29</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></p><p style=\"line-height: 150%;\"><strong style=\"text-align: left;\"><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong style=\"text-align: left;\"><span style=\"font-family: 楷体;font-size: 24px\">基层动态</span></strong><strong style=\"text-align: left;\"><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong style=\"text-align: left;\"><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p style=\"line-height: 150%;\"><strong style=\"text-align: left;\"><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">同创文明城区</span> &nbsp;<span style=\"font-family:方正小标宋简体\">共建美丽家园</span></span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">向阳路街深入推进创文工作开展</span></p><p style=\"text-indent:68px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">南开区创建全国文明城区工作动员部署会以来，向阳路街迅速成立创文工作分指挥部，制定实施方案，明确任务分工，落实工作责任，按照</span>“思想上高度重视，责任上明确到人、措施上准确有效”的原则，全力推动创建任务落实。区委副书记、区创文工作指挥部副总指挥田金萍多次深入联系督导的向阳路街实地督查并做出工作部署，区人大常委会副主任马国栋多次深入向阳路街进行调研督导并提出工作要求，深入推动创建工作开展。</span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">强化宣传教育，营造创建氛围。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">通过多样化、易传播、好接受的宣传形式，确保创文宣传全覆盖、零遗漏。投入专项资金，在</span>19个社区内背街小巷、集贸市场、人口密集区域，统一规划制作大型创文公益广告，打造冶金路文化长廊示范片，辖区单位LED屏24小时滚动播放创文相关内容。组建志愿服务队，组织社区工作者、网格员深入企业、商户、学校开展创文宣传活动，广泛宣传“中国梦”、创建全国文明城区、志愿服务精神等知识，入户发放《致市民朋友的一封信》5000余份。</span></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">开展专项整治，提升街域环境。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">街执法大队秉承</span>“早预防、早下手、早拆除”的思路，突出工作重点，狠抓专项整治。在节日期间开展整治行动，围绕重点区域、农贸市场开展专项治理行动，严肃查处占道经营、乱摆摊点、店外经营等行为，共清理摆摊占路点位300余处。同时,规定餐饮经营者在次支路经营，严禁在各主干道摆摊设点，禁止燃煤经营，禁止在便道设立餐点。对街域内违章建筑开展全面整治，逐条道路进行巡查治理，及时拆除各类违章建筑，重点整治乱堆乱放、占道经营、卫生死角等问题。3月份共拆除历史违章3处，共计25㎡，巡逻发现违章拆除12处，共计156㎡。加强“小广告”、“牛皮癣”整治力度，共清理小广告1000余条，全面提升街域市容环境，努力创建规范有序、干净整洁、绿化美化的城市环境。</span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">丰富活动内容，广泛动员参与。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">广泛开展平安建设宣传日、关爱空巢老人、</span>“弘扬雷锋精神 ，做文明有礼南开人”“每周奉献一小时，青年创文在行动”等主题公益活动。同时，组织社区党员、楼门长和志愿者开展“我为社区做什么”“好家风好家训” “创建文明城区知识有奖问答”等创文活动，全面提高创建工作的知晓率、支持率和参与度、满意度，形成全民支持、全社会参与的浓厚氛围。 &nbsp;</span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492755522456265.jpg\" title=\"1492755522456265.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492755522227250.jpg\" title=\"1492755522227250.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492755523124899.jpg\" title=\"1492755523124899.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492755523183444.jpg\" title=\"1492755523183444.jpg\"/></p><p style=\"line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"></span><br/></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p><br/></p>', '1492755559', null);
INSERT INTO `nk_newspaper` VALUES ('58', '第18期：南开区召开创文工作推动会', '摘要：为进一步提升我区创文工作整体水平，3月29日下午，区创文办召开创文工作推动会，对实地点位打造工作做具体部署。区委副书记、区创文工作指挥部副总指挥田金萍出席会议并讲话。区委常委、宣传部部长、区创文办主任费巍主持会议。副区长、区公共服务设施建设攻关指挥部督办领导薛彤参加会议。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">18</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">29</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">工作推动</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\"font-size: 29px; font-family: 方正小标宋简体;\">南开区召开创文工作推动会</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">为进一步提升我区创文工作整体水平，</span>3月29日下午，区创文办召开创文工作推动会，<span style=\"font-family:仿宋_GB2312\">对实地点位打造工作做具体部署。区委副书记、区创文工作指挥部副总指挥田金萍出席会议并讲话。区委常委、宣传部部长、区创文办主任费巍主持会议。副区长、区公共服务设施建设攻关指挥部督办领导薛彤参加会议。</span></span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">田金萍强调，各单位要高度重视创文工作，坚持高标准严要求，推动各项创建任务落实。一是各单位领导班子要立即开会研究，把此项工作当做政治任务来抓，对能解决的问题马上解决，务求有大改观大变化。二是责任到人，履行职责，各街道要迅速整改，各部门要通力配合。三是快速反应，形成合力，遇到问题及时报告，及时沟通协调。四是主要领导亲自指挥、亲自部署、亲自督战，注重方法和策略。五是宣传到位，要求到位，干净整洁到位。六是保证关键节点人员按时盯岗，展现良好精神风貌。</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">薛彤对公共服务设施建设、市容环境、秩序维护等方面提出要求。一是做好秩序维护，重点保障道路、交通、公园等点位秩序。二是加大环境卫生扫保力度，加强降尘、机扫水洗作业，并将环境清理工作向社区延伸。三是调动执法队伍、执法队员的力量，先主干道后次支路，做好全面保障。</span> </span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区创文办有关负责同志、相关委办局、各街道主要负责同志参加会议。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p><br/></p>', '1492755653', null);
INSERT INTO `nk_newspaper` VALUES ('59', '第19期：落实责任清单  强化作业水平 区环卫局为创文营造优良环境', '摘要：自南开区创建国家文明城区动员部署会议召开以来，区环卫局迅速开展部署和行动，落实责任清单，强化作业水平，为南开创文打造优良环境，取得良好效果。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">19</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">30</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">落实责任清单</span> &nbsp;<span style=\"font-family:方正小标宋简体\">强化作业水平</span></span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区环卫局为创文营造优良环境</span></p><p style=\"line-height:37px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:37px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">自南开区创建国家文明城区动员部署会议召开以来，区环卫局迅速开展部署和行动，落实责任清单，强化作业水平，为南开创文打造优良环境，取得良好效果。</span></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">高度重视，健全机构，落实责任清单。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">局领导班子高度重视创文工作，成立南开区环卫局创文小组，由党政一把手任组长。建立局创文小组与基层创文小组联系机制，设立微信、</span>QQ通联群。从基层抽调一名副科级领导干部、两名专职人员成立创文办公室。3月7日，召开全局创文动员部署会议，结合创文责任清单，梳理54项工作目标任务，分解到相关科室、单位，建立月报制度，要求各责任部门和单位按照时间节点和责任分解目标保质保量完成。</span></p><p style=\"text-indent:45px;line-height:37px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">夯实基础，提质增效，打好</span>“大清洗、大清整、大扫除”攻坚战。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">按照创建全国文明城区、创建国家卫生城区要求，自</span>3<span style=\"font-family:仿宋_GB2312\">月</span>2<span style=\"font-family:仿宋_GB2312\">日起在全区范围内开展</span>“大清洗、大清整、大扫除”综合整治工作。局党政领导带队深入一线调查研究、查找问题和薄弱环节，创新工作方法和思路，逐个攻坚克难。各单位各部门根据责任清单开展工作。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">全方位实施精细化作业，</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">对我区</span>214<span style=\"font-family:仿宋_GB2312\">条</span>787<span style=\"font-family:仿宋_GB2312\">万平米道路实施机扫水洗作业，日均出动洗路车、洒水车共计</span>65部，1600<span style=\"font-family:仿宋_GB2312\">多个班次，做好道路</span>“亮”的同时，解决了“脏”的问题。对重点道路和地区的人行便道进行每周冲刷，实现可机扫水洗道路全覆盖，人工作业做到主干道路18<span style=\"font-family:仿宋_GB2312\">小时扫保，次干道路</span>14<span style=\"font-family:仿宋_GB2312\">小时扫保，次支道路</span>12<span style=\"font-family:仿宋_GB2312\">小时扫保。</span></span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">加大投入解决马路家具陈旧破损问题，</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">对全区</span>2790<span style=\"font-family:仿宋_GB2312\">个果皮箱、</span>974<span style=\"font-family:仿宋_GB2312\">个马路座椅等城市家具进行油饰翻新，对</span>1694<span style=\"font-family:仿宋_GB2312\">个垃圾箱桶全部进行检查和修复，做到日产日清和每日清洗擦拭，对周边渗沥液进行清洗。</span></span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">提升公厕服务品质，</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">对全区</span>97<span style=\"font-family:仿宋_GB2312\">座公厕进行逐一排查，修复公厕内外设施，对内外部环境卫生进行清理，随时跟踪保洁，做到</span>24<span style=\"font-family:仿宋_GB2312\">小时开放。</span></span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">加强对垃圾转运站周边和内部环境的清整，</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">对全区</span>16<span style=\"font-family:仿宋_GB2312\">座垃圾转运站进行大清洗，运用生物除臭技术消除站内脏污、渗沥液及异味。</span></span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">大力清整脏乱死角，</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">对西关街地区进行定期清理和长效监控管理，垃圾做到日产日清。对绿地进行大规模的清理和精细化保洁，并纳入日常长效作业管理。对社区装修土进行集中清整，共清理装修土、杂物</span>700<span style=\"font-family:仿宋_GB2312\">余车次</span>2000<span style=\"font-family:仿宋_GB2312\">余吨。购置</span>1000<span style=\"font-family:仿宋_GB2312\">个垃圾桶，对社区破损垃圾桶进行了部分更新，确保垃圾日产日清。</span></span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">加强环卫管理，</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">对装修渣土清理、乱倒渣土、家禽家畜开展专项治理，</span><span style=\"font-size: 21px; font-family: 仿宋;\">加强执法联动</span><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">，本月对非法饲养家禽家畜的</span>50余户进行治理，推动社区环境及门前卫生责任制的落实。</span></p><p style=\"text-indent:45px;line-height:37px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">内外联动，营造氛围，助推文明南开深入人心。修订一批规范性文件，加强培训监督。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">制定并下发《南开区环卫局志愿服务指导意见》、《</span>2017年度南开区环卫局全国文明城区创建基层督察点位及标准》、《南开环卫局工作人员礼仪规范》、《南开环卫局工作人员行为规范》。业务科、人事科、宣传科及基层各单位分别结合自身职能组织召开与创文工作相关的专项培训会。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">发挥环卫职能，开展特色文明创建活动。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">制作《倡导环卫文明，共建幸福南开》网络公益插件，通过新媒体倡导社会环卫文明风尚。结合</span>“双学”月、“文明祭扫”等要求，局团委、各单位组织参观“周邓纪念馆”、“平津战役纪念馆”、开展党员奉献日、“每周奉献一小时团员志愿服务”等活动，在干部职工中形成了“创文我支持、我参与、我奉献、我快乐”的共识。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">加大宣传力度，营造浓厚氛围。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">将创文工作要求和实际工作需要，在环卫</span>40部作业洗路车辆车身两侧张贴“创文”标语，形成流动的创文宣传站。从各基层单位中抽调300名在一线作业的段长、组长、骨干成立了文明劝导员队伍，进行日常作业的同时履行文明劝导员的职责，对市民的不文明行为进行劝阻。</span></p><p><br/></p>', '1492755796', null);
INSERT INTO `nk_newspaper` VALUES ('60', '第20期：天津市文明城市创建工作培训会纪要 （之一）', '摘要：为进一步提升市民文明素质和城市文明程度，着力推动天津市文明城市创建工作深入开展，3月28日，市文明办举办天津市文明城市创建工作培训会。市委宣传部副部长、市文明办主任于景森，市文明办副主任赵华出席会议。区文明办有关负责同志，区建管委等部门分管领导参加培训。从本期起，分期介绍培训会相关内容，供各单位学习参考。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">20</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">30</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">学习培训</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\"font-size: 29px; font-family: 方正小标宋简体;\">天津市文明城市创建工作培训会纪要</span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">（之一）</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">为进一步提升市民文明素质和城市文明程度，着力推动天津市文明城市创建工作深入开展，</span>3月28日，市文明办举办天津市文明城市创建工作培训会。市委宣传部副部长、市文明办主任于景森，市文明办副主任赵华出席会议。区文明办有关负责同志，区建管委等部门分管领导参加培训。从本期起，分期介绍培训会相关内容，供各单位学习参考。</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">本次培训邀请武汉市文明办副主任田冰、国家统计局天津城调总队处长于鲲、天津市社科院教授叶国平进行授课。田冰副主任详细介绍了武汉市全国文明城市创建工作经验做法，于鲲处长就全国文明城市测评体系操作方法进行辅导讲解，叶国平教授对《天津市文明城市测评体系》及《操作手册》的制定进行了说明。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">于景森在开班动员中强调，开展全域文明城市创建是落实中央关于</span>“三个着力”与实施“一区三基”的必然要求，是改善市民生产生活环境，提高市民福祉的必然要求，是解决不文明问题，建设国际化大都市的必然要求。各区各单位要提高认识，认真思考，全面把握中央精神和市委要求，做“讲政治的知行合一者”；要紧密结合工作实际，深入探索实践，更好地履行职责使命，不断提高做好精神文明创建工作，特别是全域文明城市创建工作的能力和水平。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">赵华对天津市文明城市创建工作提出要求，一要顺势而为，撸起袖子加油干，借党的十九大、天津市第十一次党代会和全运会的东风，打起精神抓创建；二要对标对表，分解任务抓推动，各区和各委办局行动起来，条块结合抓创建；三要建立机制，借力打力抓落实，调动各方力量，全域参与抓创建。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\"></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492755968754390.jpg\" title=\"1492755968754390.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492755968130239.jpg\" title=\"1492755968130239.jpg\"/></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\"><br/></span><br/></p><p><br/></p>', '1492755989', null);
INSERT INTO `nk_newspaper` VALUES ('61', '第21期：倡导文明祭扫 树立文明新风 南开区开展“我们的节日·清明”主题活动', '摘要：清明节将至，为倡导文明、绿色、节俭、有序的祭扫新风，突出纪念先人、缅怀先烈的清明节主题，传承弘扬中华传统文化，南开区在清明节期间开展“我们的节日·清明”主题系列活动，以文明祭扫树文明新风，掀起文明城区创建热潮。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">21</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">31</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">活动展示</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">倡导文明祭扫</span> <span style=\"font-family:方正小标宋简体\">树立文明新风</span></span></p><p style=\"text-align:center;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">南开区开展</span>“我们的节日·清明”主题活动</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">清明节将至，为倡导文明、绿色、节俭、有序的祭扫新风，突出纪念先人、缅怀先烈的清明节主题，传承弘扬中华传统文化，南开区在清明节期间开展</span>“我们的节日·清明”主题系列活动，以文明祭扫树文明新风，掀起文明城区创建热潮。</span></p><p style=\"text-indent:45px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区民政局</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">、</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区文明办</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">组织召开</span>2017年清明节安全文明祭扫工作部署会，部署开展“我们的节日·清明”文明祭扫活动、安全管理和服务保障工作。要求各相关部门和街道要以清明节为契机，切实增强责任意识；充分利用宣传阵地，积极营造文明祭奠氛围；强化联动防控治理，切实提高管理效能，确保清明祭扫活动安全、文明、有序。</span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区教育局</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">联合</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区文明办、团区委</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">共同举办</span>“缅怀革命先烈、弘扬爱国精神”清明祭扫活动，发动全区150余名青少年代表，在南开区烈士陵园举行庄重的清明祭扫活动，为革命烈士纪念碑敬献花圈，举行默哀仪式，并进行纪念革命先烈的诗朗诵和文明祭扫倡议发言。在</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">五马路小学</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">举行</span>“文明祭奠我先行”南开教育系统网络祭扫启动仪式，介绍楷模周恩来总理的事迹，并为先烈敬献鲜花；开展“网上祭英烈”签名寄语活动，组织学生通过抒写感言寄语，表达对革命前辈的缅怀和敬仰之情。</span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492756362132503.jpg\" title=\"1492756362132503.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492756362309828.jpg\" title=\"1492756362309828.jpg\"/></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">嘉陵道街联合区文明办</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">、</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区民政局</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">在</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">雅安西里社区</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">举办了</span>“文明树新风，鲜花寄哀思”文明祭扫活动，宣读文明祭扫倡议书，播放“文明祭扫 文化传承”公益宣传短片，并以佩戴菊花、写“悄悄话”小纸条等方式寄托哀思，缅怀先人。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492756236616688.jpg\" title=\"1492756236616688.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492756236625509.jpg\" title=\"1492756236625509.jpg\"/></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><br/></span><br/></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">学府街荣迁西里社区</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">组织党员群众悼念革命先烈，参加活动人员胸前佩戴白花，向先烈默哀，并向居民倡导清明节文明祭扫。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">天大六村社区与天大附小</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">的孩子们共同开展清明节</span>“网上祭扫英烈先辈，立志报效祖国”活动，通过网络为英雄先辈献花、寄语、签名。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492756267534540.jpg\" title=\"1492756267534540.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492756267115023.jpg\" title=\"1492756267115023.jpg\"/></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><br/></span><br/></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">鼓楼街铜锣湾社区</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">开展</span>“文明祭扫树新风、绿色清明创和谐”宣传活动，社区居民分享文明祭扫体会，争当文明祭扫宣传员。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">天越园社区</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">邀请南开书画院的艺术家们以及社区书画爱好者开展</span>“佳节清明桃李笑，翰墨丹青忆故人”主题活动，用笔墨书画的形式向故人表达怀念之情。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492756292280395.jpg\" title=\"1492756292280395.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492756292978671.jpg\" title=\"1492756292978671.jpg\"/></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><br/></span><br/></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">体育中心街阳光</span>100社区</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">开展</span>“小小一片叶，清明祭英烈”活动，以在树叶上写出对英烈寄语的形式缅怀英烈；</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">凌研里社区</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">组织社区居民、志愿者及部分党员举行文明祭扫宣传活动，张贴宣传海报，宣传</span>“保护环境、低碳祭扫”的理念；</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">星城社区</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">开展</span>“我们的节日·清明——网上祭英烈”暨诗词朗诵会活动，进行网上鞠躬、献花、留言，并朗诵清明诗词，诵读中华经典；</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">宁发阳光公寓社区</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">组织社区少年儿童通过点烛、默哀、留言、向国旗敬礼等绿色途径祭奠革命先烈。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\"></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492756319102092.jpg\" title=\"1492756319102092.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492756319871049.jpg\" title=\"1492756319871049.jpg\"/></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">水上公园街</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">观景里社区</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">组织辖区居民开展倡导绿色文明祭扫活动。提倡用鲜花祭奠、帖寄语等文明、安全、低碳、健康的现代方式，寄托对故去亲人的哀思。</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p><br/></p>', '1492756372', null);
INSERT INTO `nk_newspaper` VALUES ('62', '第22期：统筹协调  强化落实 区文化和旅游局深入推进创文工作开展', '摘要：为深入推进南开区创建全国文明城区工作，自南开区创建全国文明城区工作动员部署会以来，区文化和旅游局紧紧围绕《2017年南开区创建按全国文明城区任务清单汇编》的要求，积极行动，全局上下广泛响应，形成全面发动的创建局面。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">22</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">3</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">31</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">统筹协调</span> &nbsp;<span style=\"font-family:方正小标宋简体\">强化落实</span></span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区文化和旅游局深入推进创文工作开展</span></p><p style=\"text-indent:68px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:48px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">为深入推进南开区创建全国文明城区工作，自南开区创建全国文明城区工作动员部署会以来，区文化和旅游局紧紧围绕《</span>2017年南开区创建按全国文明城区任务清单汇编》的要求，积极行动，全局上下广泛响应，形成全面发动的创建局面。</span></p><p style=\"text-indent:48px;line-height:41px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">广泛发动，压实责任。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">先后</span>6次召开专题会议，对深入开展创建全国文明城区工作进行再动员、再部署、再推动。迅速成立创文工作领导小组，党政一把手任组长，设综合材料工作组、实地检查工作组、党建工作组、文化建设工作组、未成年人思想道德建设工作组、旅游管理工作组、督导工作组，分工明确，责任到人。对所涉及的115项材料审核和实地考察指标进行细化分解，明确牵头科室和责任单位，制定工作进度表，倒排工期，压实责任，明确任务，以高度的政治自觉深入抓实全局创建工作。</span></p><p style=\"text-indent:48px;line-height:41px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">瞄准目标，持续用力。</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">以争创全国文明城区为目标，扎实开展四项工作：</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">一是积极推进社会主义核心价值观普及。</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">通过干部群众学习、形势政策教育等多种途径，使社会主义核心价值观在广大干部群众中入脑、入心，耳熟能详；邀请天津市委党校安连成教授在全系统范围内讲授题为《讲奉献、有作为，做一名合格共产党员》专题党课，将干部群众全面学习引向深入。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">二是大力弘扬中华优秀传统文化。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">加强非遗传承工作，举办</span>“盛世钟吕古韵流觞南开区非物质文化遗产名录‘古诗词吟诵’‘古吟今唱’诗会”；积极推进公共文化设施免费开放，保障公共文化服务均等化、标准化，克服南开区图书馆客服人员少的困难，努力做好读者服务工作，在节假日坚持开馆，且自习室对外开放延长至7点；大力推进全民阅读，举办“喜迎新春”电影展映、“你读书我买单”阅读推广大使迎新春专场招募、“网络书香数字阅读推广月”等系列读者活动，并深入兴南街南马路社区开展阅读推广活动；深入推进“我们的节日”主题活动，天津市老城博物馆举办第十一届天津老城民俗灯展暨第九届 “老城津韵”摄影作品展，吸引市民及中外游客万余人前来观展。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">三是努力营造关爱保护未成年人健康成长的社会文化环境。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">加强网吧管理，加大文化执法检查，通过定期采取明察暗访、网络监管平台等多种渠道对网吧进行管理，对违规网吧进行行政警告和罚款处罚；开展未成年人思想道德教育实践活动，组织开展</span>“诚实·守信”儿童优秀书法展、“诚信伴我行”儿童优秀绘画展、组织读者观看励志电影《孙文少年行》、“好书伴我成长”等系列活动，与团区委、环卫局联合举办外来务工未成年人子女公益绘画课程。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">四是强化文明旅游教育、引导、监督和管理。</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">坚持依法行政，对辖区内旅行社、景区、宾馆饭店采取现场督导与不定期抽查相结合的方式，治理规范旅游市场秩序；建立南开区文明旅游工作联席会议制度，实现对旅游行业文明旅游提示经常化、制度化，推进文明城区实地考察工作扎实开展。</span></p><p style=\"text-indent:48px;line-height:41px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">补齐短板，巩固成果。一是无缝对接。</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">针对南开区七个景区中有五个景区是市属单位、六个星级饭店区域分散、管理协调难度大等问题，坚持上门走访，积极宣传全区创建工作形势和意义，反复督促景区、星级饭店落实氛围营造、文明提示等创建工作要求，引导企业积极参与到文明创建活动中来。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">二是强化宣传。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">坚持信息报送制度，扩大互动交流，编发</span>“南开区文化和旅游局创文信息简报”10期，交流经验做法。及时发现先进典型，推送民俗博物馆文明旅游大使张晓丹代表天津市参加全国导游大赛，并取得优异成绩。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">三是健全机制。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">结合南开区旅游业发展实际，筹备成立南开区旅游发展委员会，吸纳全区</span>40个部门作为成员单位，建立联络员沟通机制，多方联动、齐抓共管，为有效推动旅游业与相关产业融合发展，强化旅游市场联合监管执法，协调解决旅游业发展重大问题，营造全区文明旅游的良好社会环境。</span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492756520478642.jpg\" title=\"1492756520478642.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492756520473048.jpg\" title=\"1492756520473048.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492756520105333.jpg\" title=\"1492756520105333.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492756520249627.jpg\" title=\"1492756520249627.jpg\"/></p><p><br/></p>', '1492756538', null);
INSERT INTO `nk_newspaper` VALUES ('63', '第23期：天津市文明城市创建工作培训会纪要 （之二）', '摘要：在天津市文明城市创建工作培训会上，拥有多年文明城市创建验收经验的国家统计局天津城调总队处长于鲲做了相关介绍，重点对全国文明城市测评体系和全国文明城市测评体系操作手册（以下简称体系、手册）进行了讲解。以下为讲课的主要内容，供各单位学习参考。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">23</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">1</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">学习培训</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\"font-size: 29px; font-family: 方正小标宋简体;\">天津市文明城市创建工作培训会纪要</span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">（之二）</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">在天津市文明城市创建工作培训会上，拥有多年文明城市创建验收经验的国家统计局天津城调总队处长于鲲做了相关介绍，重点对全国文明城市测评体系和全国文明城市测评体系操作手册（以下简称体系、手册）进行了讲解。以下为讲课的主要内容，供各单位学习参考。</span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">一是</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">提高认识要到位。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">第一是提高对领导重视的认识，市领导、区领导以及区各委办局领导都要重视，创建参与者也要全员重视，尽职尽责；执行《体系和手册》要坚持高标准，重细节。第二是提高对举全区之力的认识，调动社会所有力量参与创建，并注意吸取以往创建的经验教训。第三是提高对《体系和手册》的认识，创建者和考察者两个角度不同，考察者的标准高，创建者的标准相对较低。创建者必须高标准推进创建工作才能得高分，做工作必须扎实，不折不扣。第四是提高对测评考察的认识，把握抽样调查理论，全体系全标准全面推进创建工作。第五是提高对测评数据采集的认识，数据采集方式有网上申报、实地考察和问卷调查。分数构成为网上申报占</span>70%，实地考察和问卷调查占30%。应对策略是网上申报不丢分，实地考察和问卷调查少丢分。</span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">二是</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">上报材料要规范。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">材料审核采取网上申报的形式，要求按照体系和操作手册，规范、系统、准确、完整完成上报，重在平时积累。网上申报材料分为四种格式</span>——规范文件、说明报告、实景图片、统计表格。规范文件需扫描文件的红头页<span style=\"font-family:仿宋_GB2312\">和盖章页制作成图片格式上报；说明报告要按照字数要求写出文字说明；实景图片要求提供现场照片、样报图片或电视截屏，统一制作成</span>JPG，数量要求测评前将在“网上申报系统”上统一发布，注重痕迹管理；统计表格由各地从“网上申报系统”下载模板进行填写，规范扫描统一上传。网上申报评分方法采用“状态描述法”，以A、B、C、C#进行评价，A为满分，B为66%，C为33%，C#为0分。上报材料应注重系统性、完整性、具体性，并应注意年份要求。</span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">三是</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">实地考察要全面。</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">实地考察是在抽样的点位上，对测评体系上相关的测评标准进行调查和考察的工作，即以点位带标准。实地考察主要以暗访方式进行，随机抽取考察点，在一个考察点位上，考察多个测评标准。特别应注意点位与标准一致性问题，考察点位要满足所有考察标准。工作人员一定要熟悉测评指标，将指标与实地考察点位结合起来。</span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">四是</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">问卷调查要深入。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">问卷调查方式包括入户调查和随机街访两种。入户调查从申报的社区中抽取，一般时间在晚上</span>6点-9点<span style=\"font-family:仿宋_GB2312\">；随机街访是在测评过程中随机进行。两者的对象是全体居民，任何一个居民都有被抽到的可能性。调查主要有两个方面，一个是《体系和手册》当中要求的问题，一个是创文工作居民是否知晓和支持。这就要求做好群众宣传工作，形成铺天盖地、人人尽知的氛围。</span></span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">五是</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">迎接检查要周全。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">参加测评工作的组成单位以国家统计局调查队系统为主、国家文明委组成部门为辅共同组建，一般十几人，包括组长、副组长、组员及两个国家文明委成员单位人员。测评工作的时间约为</span>7天。在迎检中，除做好道路疏导、环卫清扫等必要工作外，<span style=\"font-family:仿宋_GB2312\">迎检保障过程应把握好度，不能影响测评组的测评工作，同时做好相关服务工作。</span></span></p><p><br/></p>', '1492756623', null);
INSERT INTO `nk_newspaper` VALUES ('64', '第24期：南开区认真传达贯彻落实怀进鹏同志暗访检查要求 “五个再下功夫”吹响“百日会战”冲锋号', '摘要：4月5日，南开区召开创建全国文明城区攻坚推动会，认真传达贯彻落实市委副书记、市文明委主任怀进鹏暗访检查全国文明城区创建工作及座谈会精神，对全区创建工作进行再部署再加压再升温，吹响“百日会战”冲锋号。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">24</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">5</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">工作推动</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 24px; font-family: 方正小标宋简体;\">南开区认真传达贯彻落实怀进鹏同志暗访检查要求</span></p><p style=\"text-align:center;line-height:40px\"><span style=\";font-family:方正小标宋简体;font-size:24px\">“五个再下功夫”吹响“百日会战”冲锋号</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"margin-right:0;margin-left:0;text-indent:48px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">4月5日，南开区召开创建全国文明城区攻坚推动会，认真传达贯彻落实市委副书记、市文明委主任怀进鹏暗访检查全国文明城区创建工作及座谈会精神，对全区创建工作进行再部署再加压再升温，吹响“百日会战”冲锋号。区委书记姚来英同志讲话，区委副书记田金萍同志作传达。提出“五个再下功夫”，</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">一是在环境综合治理上再下功夫。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">持续开展市容环境综合治理专项行动。按照战区体制，加大清扫力度，做好清运保障。坚决清除违章建设存量、遏制增量，坚决整治马路烧烤、占路经营、市场外溢等城市顽疾，坚决打击非法药品交易。加强公共经营性场所和</span>“五小”门店综合治理，下大力气解决亮证亮照经营等难点问题。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">二是在规范交通秩序上再下功夫。</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">紧盯景点景区、体育场馆周边等重点区域，加大路口执勤和道路巡查力度；开展机动车和自行车乱停乱放、占压盲道、停占黄网络线、堵塞消防通道等问题专项治理；组织交通协管和志愿者在重点路口和公交车站执勤服务，对于乱穿马路、闯红灯、翻越护栏等行为，及时制止，批评教育。在公交站点装配设施，加大志愿者宣传，引导市民文明候车。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">三是在硬件设施建设上再下功夫。</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">高标准高质量完成信用信息查询系统建设，做好未成年人校外心理疏导中心建设，加强公共博物馆、文化馆、纪念馆等文化场馆的提升改造，完善社区综合文化活动、志愿服务阵地等配套设施。对主次干道、背街里巷的破损路面进行全面排查，完善分类垃圾箱设置，尽快补齐城市基础设施和配套设备的短板。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">四是在宣传造势上再下功夫。</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">继续加大公益广告宣传力度，将创文与迎庆党的十九大、市十一次党代会，迎接全运会紧密结合，增加视觉冲击力和宣传渗透力。继续利用报、台、网、微，推出创文栏目，加大入户宣传力度，广泛开展文明创建宣传进机关、进企业、进商场、进餐馆等活动。启动干部每周奉献四小时、团员青年每周奉献一小时活动。继续深化文明交通、文明旅游、文明祭扫、文明服务、啄木鸟文明监督等专项志愿服务行动，带动形成全民参与创建热潮。</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">五是在完善档案资料上再下功夫。</span></strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">紧扣创建工作的检查标准及实施细则，加大业务培训力度，确保档案整理有据可依、有规可循。认真对照测评指标内容，利用有限时间查漏补缺、充实完善，每分必争，每分必夺。做好常规性、技术性的工作，注重材料收集的规范性、完整性和有效性，把资料做丰满、做充实、做规范。</span></p><p style=\"margin-right:0;margin-left:0;text-indent:48px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:24px\">&nbsp;</span></p><p><br/></p>', '1492756740', null);
INSERT INTO `nk_newspaper` VALUES ('65', '第25期：全面行动抓整改  综合治理促文明 各街道清脏治乱、整治环境显成效', '摘要：自南开区文明城区创建工作启动以来，各街道高度重视，迅速行动，层层落实责任，采取有效措施，开展清脏治乱，实施卫生清整，拆除违规搭建，共同打造干净整洁、文明和谐的街域环境。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">25</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">6</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">全面行动抓整改</span>&nbsp;&nbsp;<span style=\"font-family:方正小标宋简体\">综合治理促文明</span></span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">各街道清脏治乱、整治环境显成效</span></p><p style=\"text-indent:68px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">自南开区文明城区创建工作启动以来，各街道高度重视，迅速行动，层层落实责任，采取有效措施，开展清脏治乱，实施卫生清整，拆除违规搭建，共同打造干净整洁、文明和谐的街域环境。</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">鼓楼街建立了以街城管科、执法大队、居委会、物业、派出所等为主体的协调联动机制，下大力度开展清脏治乱、拆违控违工作。对东北角艺术公寓、新安地区、盛津园、壹街区静德花园等地区进行了卫生环境的专项综合整治，对主次道路的占道经营、堆物堆料等脏乱问题及时治理，共计拆除立面违章牌匾</span>30处，拆除外挂LED灯25处，违章商业广告、布标16处，下达了58张限期整改通知单，清运堆物堆料8车次，纠正占路经营72起，拆除违章圈占5处，拆除违章建筑1处。</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">长虹街加大对街域游商摆卖和违法建设的巡查力度，街综合执法大队全天候对市场外溢、占道经营等问题进行专项治理。针对天明街、汶水路占路摆卖问题，开展集中治理。组织人员共清理楼门内外小广告残标</span>1万余张，拆除圈挡11处，清理陈年堆物42处，清理垃圾堆物77车，拆除私装地锁30余处。张贴综合执法、城管、居委会联合署名的通知65份。修理社区病虫害大树30余棵。</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">学府街拆除违建</span>97处，拆除违章棚亭10处，清理堆物堆料、垃圾210余车，清理私养家禽22处，私圈乱占85处，封堵私改门窗10处，清理楼门600余栋，清理菜地20余处，清理废旧自行车150余辆。纠正占路经营660余起，劝退烧烤摊点、马路餐点120余处，纠正市场外溢现象13起，清理主次干道横（条）幅、布标138条，各类乱贴乱画的涂鸦残标等5500余处。拆除户外广告牌37个,清退地摊250余处，拆除外置LED灯76个,整治店外摆卖170余次、门前堆物520余起。</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">王顶堤街开展环境卫生</span>“大清整、大清洗、大扫除”活动，加大重点道路的整治工作，开展对苑东路、华宁道、横江路的摆摊地点的清理和违章建筑的查处工作。执法队共清理占路经营89处、圈占7处，拆除违建300平米，清除布标45幅，清理残标213处，清理户外广告、违章LED广告灯32处；社区每天清理残标1小时，共清理2万余条，清理堆物堆料214车，拆除地锁56个。</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">向阳路街大力开展市容环境治理行动，严肃查处占道经营、乱摆摊点、店外经营等行为，依法取缔冶金路两侧占路摆卖</span>100余处、店外摆卖200余处，拆除违法牌匾190余块，拆除外置LED灯70余处，清理堆物堆料15余车，清理拖运“僵尸车”7辆，统一更换牌匾120余块，清理小广告1000余条。拆除违章6处、圈挡11处，清理家禽11处，地锁及地链总共327处，清理堆物堆料122车。</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">嘉陵道街号召居民自觉维护卫生环境秩序。对辖区</span>58个自然小区开展“地毯式”实地排查，对发现的堆物、围挡、圈占、乱贴乱画的现象进行记录，形成问题清单，对每一处未达标处进行“销账式”治理，协调有关部门，及时解决问题。街城管科、执法大队拆除各类违章违法建筑、圈占68处，房屋31间，合计近1000平米，清理堆物、堆料等901车，合计2000余吨。</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">体育中心街高度重视，开展环境卫生秩序清整工作，加强对小区内环境卫生拉网式排查清理，加大对重点路段、重点点位周边环境秩序治理力度，共计治理占路摆卖</span>51处，清理LED广告64处，治理大型广告9处，清理社区内堆物堆料10余吨、30余车。&nbsp;</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">万兴街在环境治理工作中，对风荷园小区的违章棚亭、违法建设、圈占、堆物堆料等乱象开展专项治理。同时针对飞云里等多个小区的乱象进行整治，拆除地锁</span>280余个，拆违785平米，清理堆物29车，治理乱养家禽3处。对卧龙南里、卧龙北里流动摊贩进行重点整顿，取缔违法摆卖摊贩200余个，清理堆物17车。清除灵隐道与孤山路口一处违章废品收购点。</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">水上公园街统一印制《水上公园街违法建设治理通告》</span>1500份，张贴在由各社区居委会楼门显著位置。结合“迎全运”城市综合整治大清洗大清整大扫除活动，对街域环境进行集中整治，拆除违建20余处，约185余平米，涉及到6个社区10个自然小区，清运垃圾、渣土等杂物120余车100余吨。</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">兴南街对辖区内的小区、楼道内的垃圾死角开展拉网式、地毯式大清理。清理</span>50个楼门的楼道堆物，清理卫生死角100余处，清理堆物垃圾150余车，铲除小广告2000余处，清理更换垃圾桶20余个。拆除违法建设28处，260平米，发现新建违法建筑立即拆除，保证街域内环境干净整洁、规范有序。</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">华苑街开展环境卫生整洁行动</span>,重点整治卫生死角、堆料堆物，清理垃圾百余吨。加大夜间巡查力度，清理露天烧烤20余处，清理流动小烧烤10户。拆除违法户外LED广告牌95块。拆除碧华里、云华里违建2处，共计100平米，叫停碧华里一处，共40平米。对迎水道、华苑路、飞鸿路、望云道等主干道路两侧堆物进行集中清理，清理各类堆物10余吨。</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">广开街执法大队每日对辖区主要道路、重点地区进行执法检查，治理占路摆卖问题</span>210余处，清运垃圾堆物10车，依法查处9处违章建筑，查处违法牌匾、非法外檐装修6处。治理朝园里底商燃煤2处，治理烧烤点位12处，取缔流动烧烤摊贩6个。清理楼门栋200余个，拆除违法私装地锁300余处，拆除社区违章及圈挡20余个。</span></p><p><br/></p>', '1492756942', null);
INSERT INTO `nk_newspaper` VALUES ('66', '第26期：经典诵读展风采 图书漂流齐分享 南开区开展丰富多彩青少年文化活动', '摘要：为推动文明城区创建工作，引导青少年争做文明有礼南开人，努力践行社会主义核心价值观，我区教育、文化等部门积极行动，开展丰富多彩的青少年文化主题活动。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">26</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">6</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">活动展示</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">经典诵读展风采</span>&nbsp;<span style=\"font-family:方正小标宋简体\">图书漂流齐分享</span></span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">南开区开展丰富多彩青少年文化活动</span></p><p style=\"text-align:center;line-height:40px\"><br/></p><p style=\"text-indent:45px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">区教育局举办主题为</span>“以周恩来为人生楷模，做知书达礼的南开学子”的中小学经典诵读大赛，引导学生以周恩来为人生楷模，提高学生思想道德素质和文化素养，养成良好的阅读习惯，提高综合实践能力。本届比赛分小学组、初中组、高中组，全员参与，形式多样，内容丰富。教师与学生、学生与家长同台表演，舞蹈、吟唱、书法、绘画等多种表现形式精彩纷呈。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">此次诵读大赛是南开区教育系统</span>“以周恩来为人生楷模， 践行社会主义核心价值观”主题教育活动之一。接下来，还将通过讲楷模故事、开办“敬业讲堂”等形式使学生更全面、更深刻、更客观地了解楷模的事迹，学习楷模的优秀品质。各学校将开展“阅读之星”、“书香班级”及“书香家庭”等评选活动，激发学生、老师及家长的读书兴趣，以孩子带动家长，“小手拉大手”，全家齐诵读，共同体验阅读带来的乐趣，以知识促进良好文明礼仪的养成。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492757111661226.jpg\" title=\"1492757111661226.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492757111994722.jpg\" title=\"1492757111994722.jpg\"/></p><p style=\"line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-family:仿宋_GB2312\">区文化和旅游局联合体育中心街，开展</span>“我分享·我快乐·做文明有礼小小东道主”图书漂流活动。活动主要面向3至12岁的学龄前儿童和小学生开展，儿童到社区文化站（室）将图书漂流包领回家中，与父母亲共同阅读，并在阅读后填写《读后感》，待全部阅读完毕，将图书漂流包归还社区文化站（室），由下一位儿童继续领读。孩子和家长们可以完全自主地按照自己的生活方式进行亲子互动读书，便于交流。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">本次漂流活动地区以体育中心街宁发阳光社区、金禧园社区、俊城浅水湾社区和南开区星瀚幼儿园等四个基地为试点，逐步向全街</span>12个社区的所有自然小区辐射。通过活动，帮助孩子们从小养成良好的阅读习惯，促进孩子和家长之间建立良好的亲子互动关系，使孩子们学会与他人分享自己的快乐与收获，为我区文明城区创建做出贡献。</span></p><p style=\"line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492757140965719.jpg\" title=\"1492757140965719.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492757140891790.jpg\" title=\"1492757140891790.jpg\"/></p><p style=\"line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span><br/></p><p><br/></p>', '1492757152', null);
INSERT INTO `nk_newspaper` VALUES ('67', '第27期：南开区召开街道系统创文工作推动会 冯卫华主持并讲话  张勇勤薛彤参加', '摘要：4月6日下午，区委副书记、区长冯卫华主持召开街道系统创文工作推动会，迅速落实南开区创建文明城区攻坚推动会精神，部署街道战区创建工作。区委常委、常务副区长张勇勤、副区长薛彤出席会议。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">27</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); font-size: 20px;\">南开区创文工作指挥部办公室</span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">7</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">工作推动</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\"font-size: 29px; font-family: 方正小标宋简体;\">南开区召开街道系统创文工作推动会</span></p><p style=\"text-align:center;line-height:40px\"><span style=\";font-family:楷体_GB2312;font-size:23px\"><span style=\"font-family:楷体_GB2312\">冯卫华主持并讲话</span>&nbsp;&nbsp;<span style=\"font-family:楷体_GB2312\">张勇勤薛彤参加</span></span></p><p style=\"text-align:center;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">4月6日下午，区委副书记、区长冯卫华主持召开街道<span style=\"font-family:仿宋_GB2312\">系统创文工作推动会，迅速落实南开区创建文明城区攻坚推动会精神，部署街道战区创建工作。区委常委、常务副区长张勇勤、副区长薛彤出席会议。</span></span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">冯卫华认真听取各街道工作汇报，逐一点评各街道创文工作，对典型做法和创建成效表示肯定，同时指出各街道在环境卫生、市场秩序、基础设施、城市管理、宣传氛围等方面存在的问题。要求各街道将创文创卫紧密结合，借助迎全运的机遇，加强市容环境整治、社会秩序治理，解决民生问题，使南开区城市面貌、文明程度显著提升。他指出，一要有想法。进一步解放思想，不惧困难，把握街域范围内重点任务，排出时序，争取资源，结合政府重点工作，落实指标，大投入高强度整顿市容，重视民生，解决群众急需的问题，保持社会稳定。二要明底数。加强调查研究，通过实地考察，了解重点问题，摸清情况，分清轻重缓急，搞好风险评估，有步骤有条理地解决力所能及的问题。三要抓重点。在全面工作中寻找突破点，从市容整治、服务群众等专项工作中寻求重点，由重点打造亮点，在区委区政府的支持下，通过打造亮点工程，以点带面，产生积极影响，起到示范作用。四要见实效。以创文创卫为突破口，把握</span>“干实事，抓重点，打基础，利长远”的原则，脚踏实地，积少成多，加大财政倾斜，加大社会治理、社区整治、人文建设、环境治理和民生保障，使南开区的市容面貌、文明素养发生根本变化，向区委区政府和全区人民交上一份满意的答卷。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">张勇勤肯定了各街领导坚持一岗多责抓工作的做法，表示将协调财政部门为创文工作全力做好资金保障，并要求各单位把握重点，借势而为，利用创文创卫和迎全运的良好时机，力争创新，在管理和制度上寻求突破。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">薛彤指出了创文创卫工作的五个维度，即创文创卫是导向性平台、是群众性活动、是综合性载体、是系统性工程、是长期性任务。他要求各街道要解决</span>“上热中温下冷”的问题，全体干部要统一思想，提高政治站位；要解决创文创卫兼顾的问题，统筹协调，不断探索双创联动机制；要解决机制体制短板，研究梳理好的经验做法，在人财物力保障方面探索绿色通道。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">会上十二个街道主要领导从宣传氛围营造、市容环境清整、硬件设施提升、精品社区打造等方面汇报了近期创文工作进展情况和下一步工作设想。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区政府办、文明办、建管委、市容园林委、财政局、行政审批局、市政局、综合执法局、各街道主要负责同志参加会议。</span></p><p><br/></p>', '1492757247', null);
INSERT INTO `nk_newspaper` VALUES ('68', '第28期：广泛发动抓创建  多措并举树文明 体育中心街深入推进创文工作开展', '摘要：按照南开区创建全国文明城区工作部署要求，体育中心街紧密结合实际，在区人大常委会副主任马金然的督导支持下，以创文创卫、迎接全运会为重点，统一思想，精心筹划，多措并举，深入推进工作扎实开展。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">28</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">10</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">广泛发动抓创建</span>&nbsp;&nbsp;<span style=\"font-family:方正小标宋简体\">多措并举树文明</span></span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">体育中心街深入推进创文工作开展</span></p><p style=\"text-indent:68px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:48px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">按照南开区创建全国文明城区工作部署要求，体育中心街紧密结合实际，在区人大常委会副主任马金然的督导支持下，以创文创卫、迎接全运会为重点，统一思想，精心筹划，多措并举，深入推进工作扎实开展。</span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">高度重视</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">，</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">建立机制</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">召开</span>2017年体育中心街创建全国文明城区工作动员部署会，对文明城区创建工作进行动员部署，成立街道创文工作领导小组，党政主要负责同志任创文工作领导小组组长，机关处级领导和相关责任科室负责人为成员。下发《南开区创建全国文明城区工作材料汇编》，根据《责任清单》和《任务清单》中的任务分工要求，将创建工作任务细化到具体科室、具体<span style=\"font-family:仿宋_GB2312\">责任人和具体完成时限，明确任务，落实责任。在广大干部中树立创文工作意识，提高机关各科室对创文工作的重视和对任务指标体系的理解。</span></span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">搞好宣传，营造氛围。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">向街广大党员干部、社区居委会发放创文工作宣传卡片，为街域内小区居民楼门制作安装创文公益宣传牌</span>1400个，<span style=\"font-family:仿宋_GB2312\">实现街域内居民住宅楼全覆盖，使创文主题、社会主义核心价值观、居民文明公约随处可见。做好入户宣传工作，设计制作创文宣传手册</span>4万册，发放到社区居民、营业网点、工商户手中，掀起宣传高潮。加强社区出入口、主要甬道、中心广场的氛围营造和居委会内部的标准化打造，进一步完善社区宣传阵地建设。将创文宣传细化到点，以点带面，不断提高居民知晓率和参与率。</span></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">多措并举，推动落实。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">深化志愿服务活动，整合社区志愿者、志愿团体、共建单位等社会资源，结合街域实际和居民需求积极开展各类志愿服务活动，共同推进文明城区创建。以</span>“双学”活动为龙头，大力宣传志愿服务先进典型，发挥引领示范作用，深化志愿服务广泛开展。推动文明交通志愿服务行动，成立150人的文明交通志愿服务队。组织团员青年成立青年创文突击队，开展“每周奉献一小时 青年创文在行动”主题实践活动，结合未成年人思想道德建设工作要求，把握主题，组织未成年人以参观、网上纪念等形式，开展清明祭英烈、向国旗敬礼等活动。推进公共文化服务体系建设，相继开展“迎全运&nbsp;<span style=\"font-family:仿宋_GB2312\">太极入万家</span>”全民公益健身活动、首届“我分享我快乐 做文明有礼小小东道主”图书漂流活动。开展环境卫生秩序清整工作，加强对小区内环境卫生拉网式排查清理，加大对重点路段、重点点位周边环境秩序治理力度。共计治理占路摆卖51处，清理LED广告64处，治理大型广告9处，清理社区内堆物堆料10余吨，30余车。</span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492757402499469.jpg\" title=\"1492757402499469.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492757402872684.jpg\" title=\"1492757402872684.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492757402204573.jpg\" title=\"1492757402204573.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492757402754174.jpg\" title=\"1492757402754174.jpg\"/></p><p><br/></p>', '1492757425', null);
INSERT INTO `nk_newspaper` VALUES ('69', '第29期：多措并举  商贸创文 区商务委深入开展创文工作', '摘要：为深入推进南开区创建全国文明城区工作，区商务委紧紧围绕《2017年南开区创建全国文明城区任务清单汇编》，推动商业领域创文工作。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">29</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">10</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">多措并举</span> &nbsp;<span style=\"font-family:方正小标宋简体\">商贸创文</span></span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区商务委深入开展创文工作</span></p><p style=\"text-align:center;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">为深入推进南开区创建全国文明城区工作，区商务委紧紧围绕《</span>2017年南开区创建全国文明城区任务清单汇编》，<span style=\"font-family:仿宋_GB2312\">推动商业领域创文工作。副区长徐晖多次主持召开会议，到商场、菜市场实地督导检查、协调推动创文工作，并提出</span>“压实责任，明确任务，以高度的政治自觉深入抓好创文工作”，要求区商务委走进商场超市、集贸市场，积极行动，形成全面发动的创建局面。</span></p><p style=\"text-indent:45px;line-height:41px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">聚焦商业体，强化创文宣传。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">在商业场所宣传方面，区商务委坚持做到</span>“三个到位”，认真做好贯彻落实。一是大型商业户外LED屏宣传到位。将文明城区创建标准化宣传素材统一发放至各商业载体，要求商业载体第一时间在室外LED宣传屏进行插播，同时将播放影像素材报送，由区商务委统一做好资料留存，实现痕迹化管理。二是大型商业体主要动线宣传到位。在加大室外宣传的同时，在大型商业体室内人流密集区域，通过张贴公益广告、室内宣传屏等多种方式，加强对创建文明城区的宣传力度，利用商业体庞大的客流资源，提升宣传效果。三是日常的服务提示监督巡察到位。坚持每周深入大型商业体进行实地走访、查看，一旦发现文明城区创建宣传不到位的现象，及时与商业载体主要负责人进行联系，确保实现创文宣传工作的持续性。</span></p><p style=\"text-indent:45px;line-height:41px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">聚焦菜市场，促进秩序改进。</span></strong><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">对菜市场的提升改造，既是创文工作的基本要求，也是方便群众日常生活的重要举措。区商务委主要从三个方面开展工作。一是做好市场内环境改善。以创建国家文明城区为契机，启动区域内菜市场提升改造工作，全面提升菜市场软、硬件水平，协调做好垃圾清运，打造环境整洁菜市场，为居民百姓提供了更加安全、舒适的购物环境。二是引导商户规范经营、诚信经营。宣传社会主义核心价值观，引导商户养成诚信经营的公平理念，在菜市场配齐公平秤，打造诚信和谐的经营环境，并做好菜市场的抽查和不定期检查，集中力量对重点市场突出问题进行督查，并现场落实整改，确保菜市场的创文工作与各项管理工作同步推进，落实到位。三是做好外围环境秩序规范。与街道联合有效控制摊点外溢，整顿停车秩序。配合王顶堤街对横江路、华宁道占路市场进行集中整治，积极与附近的横江路、澄江路等</span>8个菜市场经营单位联系协调，为入场经营商户提供3个月的租金优惠，引导摊贩入场经营。协同广开街加强对广开菜市场的管理工作，整治市场交易秩序，清理市场周边垃圾，清整市场内卫生死角，规范非机动车停车秩序，对经营商户开展消防安全教育。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492757763570171.jpg\" title=\"1492757763570171.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492757763922601.jpg\" title=\"1492757763922601.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492757763808136.jpg\" title=\"1492757763808136.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492757763792602.jpg\" title=\"1492757763792602.jpg\"/></p><p style=\"text-indent:45px;line-height:41px\"><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><br/></span><br/></p><p><br/></p>', '1492757778', null);
INSERT INTO `nk_newspaper` VALUES ('70', '第30期：同创文明城区  打造和谐万兴 万兴街深入推进创文工作开展', '摘要：自南开区创建全国文明城区工作动员部署会以来，万兴街高度重视，成立了万兴街创建全国文明城区工作领导小组。区人大常委会副主任王军深入街道，亲自督导，要求做好基础资料的保存，加大宣传力度，营造创文工作氛围，对社区基础建设抓实抓牢。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">30</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">11</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">同创文明城区</span> &nbsp;<span style=\"font-family:方正小标宋简体\">打造和谐万兴</span></span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">万兴街深入推进创文工作开展</span></p><p style=\"text-indent:68px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">自南开区创建全国文明城区工作动员部署会以来，万兴街高度重视，成立了万兴街创建全国文明城区工作领导小组。区人大常委会副主任王军深入街道，亲自督导，要求做好基础资料的保存，加大宣传力度，营造创文工作氛围，对社区基础建设抓实抓牢。</span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">加强宣传，营造氛围。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">利用宣传栏广泛张贴创文宣传海报和横幅，为</span>22个社区和市民服务大厅制作核心价值观和社区工作者岗位服务规范宣传展架，为社区2765个楼门制作居民公约，为社区消防通道制作“消防通道严禁占用”警示牌，制作灯杆宣传海报，努力做到全面覆盖，抬眼可见。充分利用万兴微政务、感动日记博客和志愿者博客，刊登创文活动信息。各社区在微信平台发布<span style=\"font-family:仿宋_GB2312\">信息，组织社区志愿者，开展丰富多彩的创文活动，营造出群众关注、户户支持、人人参与的良好氛围。</span></span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">加大力度，治理环境。</span></strong><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">建立</span>“城管科——<span style=\"font-family:仿宋_GB2312\">执法队</span>——<span style=\"font-family:仿宋_GB2312\">居委会</span>”联动机制，加强每日巡查<span style=\"font-family:仿宋_GB2312\">。对风荷园小区的违章棚亭、违法建设、圈占、堆物堆料等多年来存在的诸多乱象开展专项治理。同时针对飞云里、飞云东里、同安里、兴泰北里、兴泰公寓、佳音里、天环里、地环里、玉泉里等多个小区的乱象进行集中整治，拆除地锁</span>280余个，拆违785㎡，清理堆物29车，治理乱养家禽3处。对卧龙南里、卧龙北里流动摊贩进行重点整顿，取缔违法摆卖摊贩200余个，清理堆物17车。<span style=\"font-family:仿宋_GB2312\">清理灵隐道与孤山路交口（南开区消防支队东侧）的一处废品收购点。</span></span></p><p style=\"text-indent:48px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">志愿服务，助推创文。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\">22个社区结合实际分别组织志愿者开展志愿服务活动，助推南开创文工作。玉泉北里社区举办首届“志愿者服务之星”评选活动，联合鹤童老年福利协会为健康老年人开展婚纱照拍摄活动。天大北五村社区联合居家乐公司，举办绿色食品进社区<span style=\"font-family:仿宋_GB2312\">义卖活动，为社区居民提供无公害、新鲜的蔬菜、鸡蛋、肉类等</span>30余种产品。同富社区开展“学习雷锋精神志愿者在行动”和“文明创建我先行”主题<span style=\"font-family:仿宋_GB2312\">志愿活动。玉泉里社区邀请中医药大学教授为老年人讲授中医养生与饮食保健。龙德里社区组织开展</span>“学雷锋，情暖失独家庭”、“雷锋志愿巡逻队点亮社区平安灯”志愿服务活动。三潭西里社区携手天同养老院组织开展免费<span style=\"font-family:仿宋_GB2312\">义诊活动，为居民进行健康咨询、血压血糖检测等义务诊疗。南丰里社区携手南开法院以</span>“建设法治中国·巾帼在行动”为主题开展妇女维权知识讲座。卧龙社区组织平安志愿者召开安全防范宣传会，<span style=\"font-family:仿宋_GB2312\">发放安全防范宣传材料。义兴里社区举办了以食品安全常识为主题的社区科普健康讲座。双峰里社区邀请天津药业养生专家给居民讲授春季养生知识。长江里社区组织以</span>“传承红色文化，弘扬爱国精神”为主题<span style=\"font-family:仿宋_GB2312\">的老年人踏春出行活动。玉皇里社区携手崇华中学青少年志愿者开展</span>“服务进社区，文明进万家”志愿服务活动。苏堤路社区<span style=\"font-family:仿宋_GB2312\">邀请公安交管局南开支队干警，举办</span>“青少年自护安全”讲座。龙井里社区带领中学生志愿者，对社区周边的公共健身设施、楼道扶手和楼下邮箱进行清扫。</span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492757895979059.jpg\" title=\"1492757895979059.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492757896117218.jpg\" title=\"1492757896117218.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492757896819239.jpg\" title=\"1492757896819239.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492757896887014.jpg\" title=\"1492757896887014.jpg\"/></p><p><br/></p>', '1492757906', null);
INSERT INTO `nk_newspaper` VALUES ('71', '第31期：争创文明城区  黄河医院在行动 黄河医院深入开展创文工作', '摘要：今年是南开区创建全国文明城区攻坚年，为提升创建水平，推广先进经验，黄河医院被区创文办、区卫生计生委列为创文示范医院。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">31</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); font-size: 20px;\">南开区创文工作指挥部办公室</span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">11</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">样板经验</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">争创文明城区</span>&nbsp;&nbsp;<span style=\"font-family:方正小标宋简体\">黄河医院在行动</span></span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">黄河医院深入开展创文工作</span></p><p style=\"text-indent:68px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">今年是南开区创建全国文明城区攻坚年，为提升创建水平，推广先进经验，黄河医院被区创文办、区卫生计生委列为创文示范医院。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区卫生计生委召开专题会议布置示范医院打造，并联合区创文办实地考察组现场督导，明确创建标准。黄河医院上下高度重视，召开创建全国文明城区工作部署会，成立黄河医院创建全国文明城区工作领导小组，一把手亲自抓全盘，其他领导按照分工，按照谁主管谁负责的原则，认领责任，并把创建任务分解到科室，落实到人，确保创建工作任务圆满完成。</span></p><p style=\"line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-family:仿宋_GB2312\">积极宣传，营造氛围。在门诊和急诊大厅通过大屏幕滚动播放</span>“社会主义核心价值观”，并通过海报、展板等方式宣传文明服务规范<span style=\"font-family:仿宋_GB2312\">、投诉处理流程等内容。在门诊大厅显著位置设立投诉意见箱，公开监督电话，接受病人监督和评价，随时补漏建制，不断提高医疗服务质量。在门诊大厅、楼道、等候区、会议室、卫生间等重点场所设立禁烟标识和宣传展板，向来院市民发放禁烟宣传、医疗健康宣教知识手册，并指定专人负责控烟监督，加强控烟巡查和吸烟劝阻，控烟工作取得明显效果。</span></span></p><p style=\"line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-family:仿宋_GB2312\">多彩活动，助力创文。充分发挥医疗优势，通过开展形式多样的志愿服务活动，以实际行动践行文明创建工作。在院内组织开展各类义诊活动，积极组织员工参加无偿献血，并组建健康教育讲师团，根据社会需求，到学校、社区等地开展卫生保健宣讲。结合行业道德守则及窗口部门文明服务规范，对新入职员工开展文明礼仪教育，树立</span>“全心全意为患者服务”理念。开展廉洁行医教育并<span style=\"font-family:仿宋_GB2312\">与每位医生签订《廉洁自律、行风建设、医德医风责任承诺书》，促进良好医德医风的养成。</span></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758035851685.jpg\" title=\"1492758035851685.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758035119309.jpg\" title=\"1492758035119309.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758035778444.jpg\" title=\"1492758035778444.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758035575765.jpg\" title=\"1492758035575765.jpg\"/></p><p><br/></p>', '1492758048', null);
INSERT INTO `nk_newspaper` VALUES ('72', '第32期：南开区处级干部学习班专题部署创文工作', '摘要：4月12日，南开区处级干部学习班专题部署创文工作。区委书记姚来英出席会议，区委副书记、区长冯卫华对创文工作进行部署，区委常委、宣传部部长费巍传达全国创建文明城市工作经验交流会精神。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">32</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">12</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">工作推动</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\"font-size: 29px; font-family: 方正小标宋简体;\">南开区处级干部学习班专题部署创文工作</span></p><p style=\"text-align:center;line-height:40px\"><span style=\";font-family:楷体_GB2312;font-size:23px\"><span style=\"font-family:楷体_GB2312\">姚来英出席</span>&nbsp;&nbsp;<span style=\"font-family:楷体_GB2312\">冯卫华部署</span>&nbsp;</span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 楷体_GB2312;\">费巍传达全国创建文明城市工作经验交流会精神</span></p><p style=\"text-align:center;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">4月12<span style=\"font-family:仿宋_GB2312\">日，南开区处级干部学习班专题部署创文工作。区委书记姚来英出席会议，区委副书记、区长冯卫华对创文工作进行部署，区委常委、宣传部部长费巍传达全国创建文明城市工作经验交流会精神。</span></span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">冯卫华针对创文工作提出三点工作要求。一是准确把握全国创建文明城市工作经验交流会精神，在创文重视程度上再提高。中央文明委对文明城市的标准与要求在不断提高，要更加注重平时建设，统筹全面发展。市委对我区创文工作高度重视，要提高政治站位，增强文明城区创建工作的使命感和责任感。要建立长效常态工作机制，不断提升社会参与率，让群众满意。二是坚持问题导向，在破解重点难点问题上再发力。要下力量整治环境脏乱差问题，瞄准重点地区，坚持清脏治乱，加强长效监督，巩固整治成果。要俯下身子办好惠民实事，切实解决与群众密切相关的民生问题，宣传群众、发动群众，让群众在创建中真正得到实惠。要集中打造一批创建亮点。展示特有民俗文化、科教文化特质，围绕重点区域，打造特色品牌，延伸主题活动，展现南开亮点。三是加强组织领导，在宣传发动力度上再加大。要进一步加强组织领导，一把手抓两手，两手抓两手硬，加强党委统一领导、党政齐抓共管、文明委组织协调、有关部门各负其责、全社会共同参与的领导体制和工作机制。要进一步强化基础工作，做好日常工作积累和文字材料收集，开展好各项主题创建活动。同时要加大宣传力度，把精力放在面向干部职工和市民群众以及商户宣传上，调动各方力量，壮大创文声势，形成良好社会风尚。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">费巍介绍了</span>4月6日至7日在江苏张家港举行的全国创建文明城市工作经验交流会情况，重点传达了中央政治局委员、中央书记处书记、中宣部部长、中央文明委副主任刘奇葆同志和中宣部常务副部长、中央文明办主任黄坤明同志的讲话精神，对我区2016年创建文明城市工作年度测评结果情况及2017年评选标准和要求做了说明。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">全区各单位处级以上干部</span>600余人参加会议。</span></p><p><br/></p>', '1492758149', null);
INSERT INTO `nk_newspaper` VALUES ('73', '第33期：共享环保单车  同护文明交通 南开区青年志愿者开展共享单车集中清整行动', '摘要：共享单车以其低碳环保分享的理念，解决了居民“出行最后一公里”的问题。随着共享单车的日益普及，也出现了违反交通规则、乱停乱放等不文明现象，带来了安全隐患，挤占了公共空间，破坏了市容环境。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">33</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">12</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">活动风采</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">共享环保单车</span>&nbsp;&nbsp;<span style=\"font-family:方正小标宋简体\">同护文明交通</span></span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">南开区青年志愿者开展共享单车集中清整行动</span></p><p style=\"text-indent:68px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">共享单车以其低碳环保分享的理念，解决了居民</span>“出行最后一公里”的问题。<span style=\"font-family:仿宋_GB2312\">随着共享单车的日益普及，也出现了违反交通规则、乱停乱放等不文明现象，带来了安全隐患，挤占了公共空间，破坏了市容环境。</span></span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">为切实解决我区共享单车乱停乱放等不文明现象，让便捷和共享真正长久，推动我区创文工作开展，南开团区委、区青年志愿者协会向全区团员青年发出倡议书，号召大家带头以身作则，争做文明出行的践行者，遵守交通指示，不乱停乱放，不占用盲道、行车道、消防通道等公共区域；树立共享理念，争做文明出行的宣传者，积极宣传文明骑行、有序停放的重要意义，传播文明风尚；积极踊跃行动，争做文明出行的倡导者，每天抽出十分钟，在全区各主干道、主要商业广场和主要公交、地铁站点开展共享单车清整活动，用举手之劳，为市容市貌做贡献。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">4月11日，<span style=\"font-family:仿宋_GB2312\">来自全区各委办局、街道、公司的</span>300余名<span style=\"font-family:仿宋_GB2312\">青年志愿者在红旗路、黄河道沿线各地铁站，熙悦汇、大悦城、天佑城以及一中心、白堤路等</span>30多个共享单车集中<span style=\"font-family:仿宋_GB2312\">点位进行大清整活动，累计清整摆放共享单车</span>2000余<span style=\"font-family:仿宋_GB2312\">辆。活动中，青年志愿者们将乱摆乱放的自行车摆放整齐，带动后来的人遵循规则，继续整齐的摆放，通过自己的行动影响和带动周围的人。</span></span></p><p style=\"text-indent:25px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;&nbsp;&nbsp;<span style=\"font-family:仿宋_GB2312\">青年志愿者们表示，要坚持清整行动，以久久为功的精神，把做公益当做一种习惯，共同携手，让</span>“无桩”的单车有礼有“界”，让五颜六色的单车真正成为一道美丽的风景线<span style=\"font-family:仿宋_GB2312\">，为我区全国文明城区的创建贡献青年力量！</span></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758261769666.jpg\" title=\"1492758261769666.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758261335992.jpg\" title=\"1492758261335992.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758261821218.jpg\" title=\"1492758261821218.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758261102600.jpg\" title=\"1492758261102600.jpg\"/></p><p><br/></p>', '1492758273', null);
INSERT INTO `nk_newspaper` VALUES ('74', '第34期：关于全国创建文明城市工作经验交流会精神 传达提纲', '摘要：4月6日至7日，中央文明委在江苏省张家港市召开全国创建文明城市工作经验交流会。中央政治局委员、中央书记处书记、中宣部部长、中央文明委副主任刘奇葆参观视察出席会议并作重要讲话。中宣部常务副部长、中央文明办主任黄坤明出席会议并做总结讲话。87个全国文明城市（区）和121个地级以上全国文明城市提名城市（区）文明委负责同志，各省区市党委宣传部长、文明办主任等300人参加会议。我市市委宣传部副部长高学忠、副部长兼市文明办主任于景森，南开区、和平区、河西区、东丽区、西青区、武清区文明委负责同志参加了会议。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">34</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">13</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">工作推动</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\"font-size: 29px; font-family: 方正小标宋简体;\">关于全国创建文明城市工作经验交流会精神</span></p><p style=\"text-align:center\"><span style=\"font-size: 29px; font-family: 方正小标宋简体;\">传达提纲</span></p><p style=\"text-align:justify;text-justify:inter-ideograph;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">4月6日至7日，中央文明委在江苏省张家港市召开全国创建文明城市工作经验交流会。中央政治局委员、中央书记处书记、中宣部部长、中央文明委副主任刘奇葆参观视察出席会议并作重要讲话。中宣部常务副部长、中央文明办主任黄坤明<span style=\"font-family:仿宋_GB2312\">出席会议并做总结讲话。</span>87个全国文明城市（区）和121个地级以上全国文明城市提名城市（区）文明委负责同志，各省区市党委宣传部长、文明办主任等300人参加会议。我市市委宣传部副部长高学忠、副部长兼市文明办主任于景森<span style=\"font-family:仿宋_GB2312\">，南开区、和平区、河西区、东丽区、西青区、武清区文明委负责同志参加了会议。</span></span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">刘奇葆在讲话中高度评价了张家港文明城区创建工作。张家港市的经验是大力抓，坚持抓，一把手亲自抓，做到一把手抓两手，两手抓两手硬。在听取</span>7省市<span style=\"font-family:仿宋_GB2312\">典型发言后，他指出推进创建文明城市工作的主要经验做法就是</span>“六个坚持”，即坚持围绕中心服务大局，推动经济社会持续健康发展；坚持突出思想道德内涵，着力提升市民文明素质和城市文明程度；坚持创建为民创建惠民，为群众办实事做好事；坚持重在建设立破并举，久久为功务求实效；坚持创新内容手段载体，增强针对性实效性和吸引力感染力；坚持建立健全体制机制，形成合力保持常态。同时也指出一些城市在建设和发展中存在的规划先天不足、缺乏品味特色，管理不到位，环境脏乱差、“城市病”突出、市民文明素质有待提升等问题和短板。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">刘奇葆提出四点工作要求。一要深入学习领会习近平总书记重要讲话精神，增强做好创建文明城市工作的责任感紧迫感。要以</span>“一个全面推进，四个着力提升”为目标和任务，使创文工作在经济、政治、文化、社会、生态文明建设和党的建设各方面全面推进，着力提升市民文明素质，着力提升城市文明程度，着力提升城市文化品位，着力提升群众生活质量，努力建设崇德向善、文化厚植、和谐宜居的文明城市。二要坚持以社会主义核心价值观为引领，建设崇德向善的城市。增强市民文明意识，规范市民文明行为，营造城市文明氛围，抓好典型带动。三要注重发挥文化的滋养涵育作用，建设文化厚重的城市。一方面打造城市建筑特色，注重历史传承，丰富城市文化内涵，另一方面要丰富文化生活，彰显城市特有的气度风韵。四要贯彻以人民为中心的发展思想，建设和谐宜居的城市。抓好规划建设，打造合理城市空间，强化精细管理，提供良好公共服务，突出综合治理，创造干净整洁环境。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">刘奇葆强调，要做好第五届全国文明城市评选表彰，为党的十九大胜利召开营造良好社会环境。开展创建县级文明城市活动。要进一步完善党委统一领导、党政齐抓共管、文明委组织协调、有关部门各负其责、全社会共同参与的领导体制和工作机制。同时要突出创建工作的群众性，激发市民参与创建活动的积极性创造性，尊重市民对城市发展的知情权监督权，齐心创造美好生活，共同建设美丽家园。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">黄坤明在总结讲话中指出，要准确把握创建文明城市的重要原则。一是突出灵魂主线；二是坚持重在建设；三是着眼为民利民；四是强化问题导向；五是注重德法兼治；六是强化责任担当；七是不断改进创新；八是健全工作机制。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">黄坤明特别强调了创建工作中存在的九个方面不容忽视的问题和薄弱环节。一是在城市规划建设方面，还存在着规划先天不足、执行不力的问题；二是在环境卫生保洁方面，一些城市还存在背街小巷脏乱、老旧社区保洁不够、农贸市场环境差等问题；三是在城市日常管理方面，一些城市占道经营现象较多、违章搭建问题比较严重、违章停车问题突出；四是在市民文明素质方面，一些城市还存在市民乱扔垃圾、随地吐痰、损坏公物、排队加塞、公共场所大声喧哗等问题，一些城市行人乱闯红灯、乱穿马路，机动车乱变道、乱加塞、乱鸣笛、乱抢行的问题比较严重；五是在公益广告宣传方面，还存在着覆盖面不够、刊播展示重数量轻质量、不能与周边环境相融合、缺乏艺术创意等问题；六是在城乡统筹发展方面，一些城市城乡发展不协调、城乡面貌差异大，乡镇环境脏乱、管理无序；七是在动员市民参与方面，一些城市还存在宣传发动不够，市民对创建工作知晓度、参与率低的问题；八是在市民获得感和满意度方面，一些城市群众满意度还比较低，市民意见还比较大；九是在创建常态长效方面，一些城市存在着重硬件轻软件、重口号轻落实、重迎检轻常态的现象。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">黄坤明要求要着力从解决主观方面问题入手解决这些问题。一要深入推进核心价值观建设，提高城市凝聚力。二要不断加强城市综合治理，提高城市竞争力。三要大力推进城市软环境建设，提高城市的人文魅力。四要充分调动市民群众参与的积极性主动性，提高城市发展活力。五要积极推进城乡统筹协调发展，提高城市辐射力。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">会议部署了第五届全国文明城市评选表彰的准备工作。</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p><br/></p>', '1492758361', null);
INSERT INTO `nk_newspaper` VALUES ('75', '第35期：同创南开文明城区  共建水上美好家园 水上公园街深入推进创文工作开展', '摘要：自南开区创建全国文明城区工作动员部署会以来，水上公园街高度重视，研究制定实施方案，明确任务分工，落实工作责任，形成了层层推动、齐抓共创的良好氛围。区政协副主席刘凯华多次深入街道实地调研指导创建工作，坚持高标准、严要求部署落实，推动创文工作加速开展。', '<p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">35</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">13</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">同创南开文明城区</span> &nbsp;<span style=\"font-family:方正小标宋简体\">共建水上美好家园</span></span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">水上公园街深入推进创文工作开展</span></p><p style=\"text-indent:68px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">自南开区创建全国文明城区工作动员部署会以来，水上公园街高度重视，研究制定实施方案，明确任务分工，落实工作责任，形成了层层推动、齐抓共创的良好氛围。区政协副主席刘凯华多次深入街道实地调研指导创建工作，坚持高标准、严要求部署落实，推动创文工作加速开展。</span></p><p style=\"line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">注重宣传，着力营造浓厚氛围。</span></strong><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">街党工委、办事处统筹资金</span>6万<span style=\"font-family:仿宋_GB2312\">余元，用于创建工作，制作社会主义核心价值观、市民公约、居民文明公约和创建全国文明城区公益广告等</span>3600多件，在社区显著位置张贴<span style=\"font-family:仿宋_GB2312\">。将区创文办制作的创建全国文明城区的宣传口号、社会主义核心价值观和公益广告等各类宣传品</span>10000<span style=\"font-family:仿宋_GB2312\">余件及时发放到社区居民家中和周边单位，张贴在社区门前、小区出入口、中心广场花园、楼间甬道、沿街围栏等地，使社区居民随时看到创文宣传内容，达到举目可见的宣传要求。在观景里社区打造创建示范社区，以点带面，全面提高街道创建水平。每个社区下拨</span>2000元创文活动经费，用于社区开展<span style=\"font-family:仿宋_GB2312\">宣传和举办各类文化活动，提升居民文明素质，激发广大居民的创文热情。通过宣传造势，积极引导，辖区群众广泛参与文明创建，居民知晓率不断提升。</span></span></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">突出特色，大力开展创建活动。</span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">在社区开展</span>40余场“中华传统文化公益大讲堂”和“道德讲堂”<span style=\"font-family:仿宋_GB2312\">活动，聘请资深艺术家和专家学者，以通俗易懂的语言为广大居民普及传统文化知识，提高居民道德素质。六个社区的</span>“快乐营地”组织开展了国学、法律和诚信教育讲座，引导社区青少年积极践行社会主义核心价值观，做美德好少年，<span style=\"font-family:仿宋_GB2312\">不断提高辖区青少年的文明意识。以</span>“我们的节日”<span style=\"font-family:仿宋_GB2312\">等重要时间为节点，开展形式多样和群众喜闻乐见的文体活动</span>200多场，<span style=\"font-family:仿宋_GB2312\">动员社区居民积极参与，为创建工作提供重要保障。整合执法力量，全天候对街道</span>11条<span style=\"font-family:仿宋_GB2312\">主要道路和十个社区内外环境进行了全方位综合整治，规范灯箱牌匾</span>160余处，清理占路摆卖280余起，清运垃圾渣土1100余车。&nbsp;&nbsp;&nbsp;</span></p><p style=\"text-indent:45px;line-height:40px\"><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">深化服务，</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">积极</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">开展志愿活动。</span></strong><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">成立各类志愿者服务队</span>40余支，大力开展学雷锋志愿服务活动<span style=\"font-family:仿宋_GB2312\">。欣苑公寓社区与天津师范大学城市与环境科学院大学生志愿者联合开展</span>“学雷锋，送绿色”环保社区系列活动<span style=\"font-family:仿宋_GB2312\">。复康里社区联合美奥口腔志愿者深入社区义诊送健康。荣迁里社区组织青少年深入开展</span>“学习雷锋，做美德少年”实践活动<span style=\"font-family:仿宋_GB2312\">。观景里社区开展</span>“许美好愿望<span style=\"font-family:仿宋_GB2312\">，献绿色爱心</span>”主题爱绿护绿活动<span style=\"font-family:仿宋_GB2312\">。宁福里社区志愿者利用个人休息时间，义务为社区老年居民们理发。通过志愿活动开展，进一步提高了社区文明程度，弘扬了新时期新风尚，为进一步美化辖区环境，推动创建工作打下了基础。</span></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758471494564.jpg\" title=\"1492758471494564.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758472107863.jpg\" title=\"1492758472107863.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758472731669.jpg\" title=\"1492758472731669.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758472140950.jpg\" title=\"1492758472140950.jpg\"/></p><p><br/></p>', '1492758494', null);
INSERT INTO `nk_newspaper` VALUES ('76', '第36期：南开区召开市文明委暗访问题整改推动会', '摘要：4月14日下午，南开区召开市文明委暗访问题整改推动会。区委常委、宣传部部长费巍主持会议并讲话。副区长薛彤对重点点位整改工作做了具体部署。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">36</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">14</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">工作推动</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\"font-size: 29px; font-family: 方正小标宋简体;\">南开区召开市文明委暗访问题整改推动会</span></p><p style=\"text-align:center;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"margin-right:0;margin-left:0;text-indent:45px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:40px\"><span style=\"font-family: 仿宋_GB2312;font-size: 23px\">4月14日下午，南开区召开市文明委暗访问题整改推动会。区委常委、宣传部部长费巍主持会议并讲话。副区长薛彤对重点点位整改工作做了具体部署。</span></p><p style=\"margin-right:0;margin-left:0;text-indent:45px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:40px\"><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">薛彤对南开二马路市场占道经营、兴南街源德里社区环境脏乱、渭水道钢材市场外溢问题治理工作做了具体部署。二马路市场清理坚持</span>“全面清理占路摆卖，适当保留早餐车，合理疏解困难群众”的原则，由兴南街和综合执法局进行全面清理，对于能出具证明的摆卖困难群众，统一疏解到三马路市场，由政府买单，最少免除困难群众半年租金。源德里社区清理乱堆乱放、破旧自行车等垃圾杂物，协调市容园林委、房管局、文明办对7、8号楼之间花坛做全面提升，张贴公益广告宣传品，并对墙体进行粉刷。渭水道钢材市场按照渭水道——临潼路——咸阳路——汾水道的顺序，由安监局牵头整改，长虹街配合，安监局对市场安全隐患做全面检查，限期清理整改关闭，市场监管局检查商户各种营业执照等证件，取缔非法经营，消防南开支队检查私搭电线，防范火灾事故。</span></p><p style=\"margin-right:0;margin-left:0;text-indent:45px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:40px\"><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">费巍对整改工作提出四点要求。一是高度重视，下定决心。各单位要提高政治站位，坚定信心，为南开荣誉而战。二是各负其责，形成合力。各部门要落实各自职责，互相配合，联合执法，综合治理。三是关死后门，确保效果。明确整改时限，做好打硬仗的思想准备，突出一个</span>“干”字，担当尽责，确保整改效果。四是加强领导，强化督查。各单位主要负责同志要亲自上手抓整改，区委督查室和政府督查室督查进度。做到一周一个大变化，5月1日前整改完成。</span></p><p style=\"margin-right:0;margin-left:0;text-indent:45px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区委督查室、政府督查室、文明办、长虹街、兴南街、市容园林委、综合执法局、安监局、房管局、市场监管局、消防南开支队、服装街管委会分管负责同志和工作人员参加会议。</span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758595695780.jpg\" title=\"1492758595695780.jpg\" alt=\"图片1.jpg\"/></p>', '1492758600', null);
INSERT INTO `nk_newspaper` VALUES ('77', '第37期：南开区重拳出击清理二马路市场占道经营', '摘要：为攻克创文工作中占道经营的难点问题，促进城市管理秩序进一步规范，4月17日，兴南街、区综合执法局联合区环卫局、公安南开分局，派出了兴南街执法大队、长虹街执法大队、广开街执法大队、兴南街派出所相关执法人员对南开二马路市场占路摆卖情况进行了集中整理。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">37</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">17</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">工作推动</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\"font-size: 29px; font-family: 方正小标宋简体;\">南开区重拳出击清理二马路市场占道经营</span></p><p style=\"text-align:center;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px\"><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">为攻克创文工作中占道经营的难点问题，促进城市管理秩序进一步规范，</span>4月17日，兴南街、区综合执法局联合区环卫局、公安南开分局，派出了兴南街执法大队、长虹街执法大队、广开街执法大队、兴南街派出所相关执法人员对南开二马路市场占路摆卖情况进行了集中整理。</span></p><p style=\"text-indent:45px\"><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">清理过程中，各单位坚持落实各自职责，互相配合，联合执法。执法局直属大队队员与兴南街执法大队队员采取提前占领式管理办法，增设岗勤。除正常的值守外，还专门安排执法队员重点对早晨、中午、晚上三个时间段进行管理控制。针对商贩</span>“打游击”现象，增加了巡控频次，实行错峰执法。此次集中清理，共出动执法人员200余人次，执法车辆30余车次，清理堆物20余车，拆除构筑物5处，拆除违规牌匾30余处，清除窗贴信息牌150余处，扣押冰柜2个，餐车2辆，桌椅等60余张。</span></p><p><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">此次集中清理有效解决了南开二马路市场占道经营现象，保障了道路畅通，为群众提供了良好的生活环境。下一步，南开区将从实际情况出发，坚持</span>“全面清理占路摆卖，适当保留早餐车，合理疏解困难群众”的原则，除继续严格清理防止反弹外，对于能出具证明的摆卖困难群众，统一疏解到三马路市场，由政府买单，服装街管委会负责协调接收，最少免除困难群众半年租金，既满足环境清整的需要，又保证困难群众的基本生活。</span></p><p><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758729382122.jpg\" title=\"1492758729382122.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758729558638.jpg\" title=\"1492758729558638.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758729444044.jpg\" title=\"1492758729444044.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758729386081.jpg\" title=\"1492758729386081.jpg\"/></p><p><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><br/></span><br/></p><p><br/></p>', '1492758744', null);
INSERT INTO `nk_newspaper` VALUES ('78', '第38期：攻坚克难拔钉子  凝心聚力迎创文 区综合执法局深入开展创文工作', '摘要：为深入推进南开区创建全国文明城区工作，区综合执法局紧紧围绕《2017年南开区创建全国文明城区任务清单汇编》，统一思想，压实责任，举全局之力担负起创文应尽之责，将责任担在肩上，任务落在实处。副区长薛彤、区政协副主席闫红年等区领导多次带队深入执法局调研指导工作，围绕如何治理乱摆乱卖、私搭乱盖、市场外溢等涉及城市管理方面的重点、难点问题进行调研并提出具体要求。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">38</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">18</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">基层动态</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">攻坚克难拔钉子</span> &nbsp;<span style=\"font-family:方正小标宋简体\">凝心聚力迎创文</span></span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">区综合执法局深入开展创文工作</span></p><p style=\"text-align:center;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:41px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">为深入推进南开区创建全国文明城区工作，区综合执法局紧紧围绕《</span>2017年南开区创建全国文明城区任务清单汇编》，<span style=\"font-family:仿宋_GB2312\">统一思想，压实责任，举全局之力担负起创文应尽之责，将责任担在肩上，任务落在实处。副区长薛彤、区政协副主席闫红年等区领导多次带队深入执法局调研指导工作，围绕如何治理乱摆乱卖、私搭乱盖、市场外溢等涉及城市管理方面的重点、难点问题进行调研并提出具体要求。</span></span></p><p style=\"text-indent:45px;line-height:41px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 23px\">&nbsp;<span style=\"font-family:仿宋_GB2312\">集中兵力，重拳出击，主攻整治重点难点道路。</span></span></strong><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">按照创文责任清单，加大对重点难点道路的治理力度。局主要领导亲自督战指挥，分管领导带队，集中直属大队兵力，配合广开、长虹、嘉陵道、兴南街对汶水路、西营门外大街鬼市、罗江路、自贡道、南开二马路等占路摆卖聚集问题严重的道路进行了重拳打击。通过专项整治，治理成果显著，道路秩序改观明显。专项治理期间，共出动执法车辆</span>30辆次，执法人员300人次，清理占路摆卖150多处，店外摆卖50处，暂扣各种车辆20余台、信息牌100余块、各类货架板材50余件、清理堆物堆料40余车、电子秤20余个，清除各类张贴广告900余处。专项行动中，执法队员主动放弃公休时间，克服重重困难，积极履行执法主体责任，坚持原则、严格执法、不畏艰难，敢于较真、敢于碰硬、敢于拔钉子，展现了南开城管执法队伍特别能吃苦、特别能奉献、特别能战斗的工作作风，为创文工作深入开展做出了积极贡献。</span></p><p style=\"line-height:41px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 23px\">&nbsp;&nbsp;&nbsp;</span></strong><span style=\"font-family: 仿宋_GB2312;font-size: 23px\">&nbsp;</span><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">加大宣传，扩大声势，营造创文工作浓厚氛围。</span></strong><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">成立了一支</span>12人的“创文志愿宣传服务队”，利用节假日深入沿街商户、社区、菜市场等人员密集场所，通过发放《文明创建市民手册》和《致商户企业的一封信》，加大宣传力度，壮大宣传阵势。目前《文明创建市民手册》<span style=\"font-family:仿宋_GB2312\">、《致商户企业的一封信》已发放到</span>300余个市场商户企业中<span style=\"font-family:仿宋_GB2312\">，有效提升了</span>“创文”工作的知晓率、支持率和满意度。积极借助“城管之声”微信公众平台，“南开城管”公众微博等新媒体介质及时公布创文工作情况，加大创文工作的宣传力度。</span></p><p style=\"line-height:41px\"><span style=\"font-family: 仿宋_GB2312;font-size: 23px\">&nbsp;&nbsp;&nbsp;</span><strong><span style=\"font-family: 仿宋_GB2312;font-size: 23px\">&nbsp;</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">加强整顿，</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">开展</span></strong><strong><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">培训，树立依法执法文明执法形象。</span></strong><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">为配合创文工作开展，以提升执法队员形象为目的，全区城管执法系统开展了</span>“强基础、转作风、树形象”专项行动，对着装不整、执法不文明、慢作为、不作为等问题重点进行了专项整治，有效提升了执法形象，改进了执法方式，强化了服务意识。邀请市城市管理综合执法局法制处<span style=\"font-family:仿宋_GB2312\">负责同志就街道综合执法机构在违法建设专项治理中涉及的相关法律问题和执法实务进行培训，进一步规范执法人员工作行为，提升了依法执法水平，为推动创文工作提供了高素质执法人才队伍。</span></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758884511303.jpg\" title=\"1492758884511303.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758884874836.jpg\" title=\"1492758884874836.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758884110126.jpg\" title=\"1492758884110126.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492758884104808.jpg\" title=\"1492758884104808.jpg\"/></p><p><br/></p>', '1492758898', null);
INSERT INTO `nk_newspaper` VALUES ('79', '第39期：南开区开展“迎全运做文明有礼南开人” 公益演出', '摘要：为迎接第十三届全运会的到来，丰富市民文化生活，掀起全民创文的热潮，4月14日下午，由南开区委宣传部、南开区文明办、南开区文化和旅游局、南开区文联等单位联合主办的“迎全运做文明有礼南开人”公益演出在南开文化宫举行。区委常委、宣传部部长费巍出席活动。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">39</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">18</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">活动风采</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"margin-right:0;margin-left:0;text-indent:0;text-autospace:ideograph-numeric;text-align:center;line-height:40px\"><span style=\";font-family:方正小标宋简体;font-size:29px\"><span style=\"font-family:方正小标宋简体\">南开区开展</span>“迎全运做文明有礼南开人”</span></p><p style=\"margin-right:0;margin-left:0;text-indent:0;text-autospace:ideograph-numeric;text-align:center;line-height:40px\"><span style=\"font-size: 29px; font-family: 方正小标宋简体;\">公益演出</span></p><p style=\"text-align:center;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"margin-right:0;margin-left:0;text-indent:45px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:39px\"><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">为迎接第十三届全运会的到来，丰富市民文化生活，掀起全民创文的热潮，</span>4月14日下午，由南开区委宣传部、南开区文明办、南开区文化和旅游局、南开区文联等单位联合主办的“迎全运做文明有礼南开人”公益演出在南开文化宫举行。区委常委、宣传部部长费巍出席活动。</span></p><p style=\"margin-right:0;margin-left:0;text-indent:45px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:39px\"><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">本次演出以群众喜闻乐见的文艺作品形式，讲述百姓</span>“身边人身边事”，号召市民当好东道主、喜迎全运会，并宣传文明行为、倡导市民文明出行，让文明的理念更加深入人心。全部节目均由南开区机关企事业单位和社区文艺工作者无偿参演。其中，由19名南开环卫工人组成的“最美环卫舞蹈队”登上舞台，表演舞蹈《撸起袖子加油干》，展现了一线环卫工人辛勤劳动的风采；由体育中心街宁乐里社区真人真事改编的小品《联心网》，体现了社区志愿服务的精神；城市民谣《写给南开的歌》、天津时调《文明建设靠大家》、相声《新尝试》等节目，也获得了现场观众的阵阵掌声，为全市人民奉上一道真正的惠民利民的文化大餐。</span></p><p style=\"margin-right:0;margin-left:0;text-indent:45px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:39px\"><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492759027751937.jpg\" title=\"1492759027751937.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492759027124787.jpg\" title=\"1492759027124787.jpg\"/></p><p style=\"text-align:center\"><img src=\"/ueditor/php/upload/image/20170421/1492759027810374.jpg\" title=\"1492759027810374.jpg\"/></p><p style=\"text-align:center\"><img src=\"/ueditor/php/upload/image/20170421/1492759027967741.jpg\" title=\"1492759027967741.jpg\"/></p><p style=\"margin-right:0;margin-left:0;text-indent:45px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:39px\"><span style=\"font-family: 仿宋_GB2312;font-size: 23px\"><span style=\"font-family:仿宋_GB2312\">南开区</span>“迎全运做文明有礼南开人”系列演出在北方演艺集团的大力支持下，演出相关信息会在天津演艺网上陆续发布，市民可持“文惠卡”进入网站免费选座、订票，一张文惠卡可预定四张票，预订成功后，市民可凭手机短信验证码直接入场观看演出，无需打印出票。本场演出有100余名市民通过该方式免费观看了演出。同时，该公益演出还将在4月底走进全运场馆，为奋战在一线的全运场馆建设者送去南开人的深深敬意，5月份将会有钢琴音乐会的惠民演出，之后还将会安排更多高质量的演出带给广大市民，为南开区创建全国文明城区系列活动增添色彩。</span></p><p><br/></p>', '1492759045', null);
INSERT INTO `nk_newspaper` VALUES ('80', '第40期：南开区召开街道系统创文工作培训会', '摘要：为进一步强化街道创文工作，帮助各街道、各社区准确把握全国文明城区创建标准要求，4月19日，区创文办在市容园林委二楼礼堂组织召开街道系统创文工作培训会。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">40</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">19</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">工作推动</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\"font-size: 29px; font-family: 方正小标宋简体;\">南开区召开街道系统创文工作培训会</span></p><p style=\"text-align:center;line-height:40px\"><span style=\"font-size: 23px; font-family: 楷体_GB2312;\">国家统计局天津城调总队处长、全国文明城区测评组组长于鲲现场培训</span></p><p style=\"text-indent:68px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">为进一步强化街道创文工作，帮助各街道、各社区准确把握全国文明城区创建标准要求，</span>4月19日，区创文办在市容园林委二楼礼堂组织召开街道系统创文工作培训会。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">于鲲处长就开展创建主题活动、规范整理活动记录、加强宣传氛围营造、实地检查注意事项和迎检方法技巧等进行培训，重点强调提高认识要到位，提高对领导重视、举全区之力、《体系和手册》、测评考察和测评数据采集等方面的认识，上报材料要规范，实地考察要全面，问卷调查要深入，迎接检查要周全。</span></p><p style=\"line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-family:仿宋_GB2312\">区创文办实地考察组对实地考察中存在的问题进行了提示，并现场发放提示单</span>168份，<span style=\"font-family:仿宋_GB2312\">要求各街道从宣传氛围、环境卫生、志愿服务、材料审核等方面入手加紧整改。天津市域高传媒科技有限公司对南开创文</span>OA办公系统使用方法做了讲解。</span></p><p style=\"text-indent:45px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"><span style=\"font-family:仿宋_GB2312\">各街道分管创文工作、综合执法工作的领导，宣传科长，各社区居委会主任，区创文办相关工作人员</span>260余人参加培训。</span></p><p style=\"text-align:center\"><img src=\"/ueditor/php/upload/image/20170421/1492759142108569.jpg\" title=\"1492759142108569.jpg\"/></p><p style=\"text-align:center\"><img src=\"/ueditor/php/upload/image/20170421/1492759142446110.jpg\" title=\"1492759142446110.jpg\"/></p><p><br/></p>', '1492759149', null);
INSERT INTO `nk_newspaper` VALUES ('81', '第41期：南开区多部门联合整治渭水道钢材市场', '摘要：为落实渭水道钢材市场占路经营问题整改，进一步规范城市管理秩序，由区安监局牵头，长虹街、区综合执法局、区市场监管局、区环卫局、消防南开支队、公安南开分局长虹街派出所共七个部门组成专项整治联合执法组，对渭水道、临潼路、汾水道、咸阳路四条道路两侧的经营商户占路经营、马路加工、堆物堆料等问题进行集中整治。', '<p style=\"text-align:center\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-family: 方正小标宋_GBK;\">南开区全国文明城区</span></strong></span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(255, 0, 0); letter-spacing: 1px; font-size: 24px; font-family: 方正小标宋_GBK;\">创建工作</span></strong></span></p><p style=\"text-align:center;line-height:67px\"><span style=\"font-size: 36px;\"><strong><span style=\"font-family: 微软简隶书; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 微软简隶书;\">简</span> &nbsp;&nbsp;&nbsp;<span style=\"font-family: 微软简隶书;\">报</span></span></strong></span></p><p style=\"text-align:center\"><span style=\";font-family:方正小标宋_GBK;color:rgb(255,0,0);font-size:7px;position:relative;top:4px\">&nbsp;</span></p><p style=\"text-align:center;line-height:150%\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\"><span style=\"font-family: 方正小标宋_GBK;\">第</span> </span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; position: relative; top: 4px;\">41</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; color: rgb(255, 0, 0); position: relative; top: 4px;\">&nbsp;<span style=\"font-family: 方正小标宋_GBK;\">期</span></span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-size: 20px; position: absolute; z-index: 1; left: 0px; margin-top: 33.6px; width: 607px; height: 3px;\"><br/></span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 20px; font-family: 方正小标宋_GBK;\">南开区创文工作指挥部办公室</span></span></p><p style=\"line-height: 150%; text-align: center;\"><span style=\"font-size: 20px;\"><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">2017</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">年</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">4</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">月</span><span style=\"font-family: 方正小标宋_GBK; line-height: 150%; font-size: 19px;\">20</span><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\">日</span></span></p><p style=\"line-height: 150%;\"><span style=\"font-size: 20px;\"><span style=\"line-height: 150%; color: rgb(255, 0, 0); font-size: 19px; font-family: 方正小标宋_GBK;\"><br/></span></span></p><p><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-size: 24px; font-family: 楷体;\">工作推动</span></strong><strong><span style=\"font-family: 方正黑体简体;font-size: 14px\">◆</span></strong><strong><span style=\"font-family: 楷体;font-size: 24px\">&nbsp;</span></strong></p><p><strong><span style=\"font-family: 楷体;font-size: 24px\"><br/></span></strong></p><p style=\"text-align:center\"><span style=\"font-size: 29px; font-family: 方正小标宋简体;\">南开区多部门联合整治渭水道钢材市场</span></p><p style=\"text-indent:68px;line-height:40px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;</span></p><p style=\"margin-right:0;margin-left:0;text-indent:45px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:39px\"><span style=\"font-size: 23px; font-family: 仿宋_GB2312;\">为落实渭水道钢材市场占路经营问题整改，进一步规范城市管理秩序，由区安监局牵头，长虹街、区综合执法局、区市场监管局、区环卫局、消防南开支队、公安南开分局长虹街派出所共七个部门组成专项整治联合执法组，对渭水道、临潼路、汾水道、咸阳路四条道路两侧的经营商户占路经营、马路加工、堆物堆料等问题进行集中整治。</span></p><p style=\"margin-right:0;margin-left:0;text-indent:45px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">4月17日，七部门召开工作会议，讨论清整方案。会后联合执法组迅速行动，各负其责，对四条道路商家逐户进行宣传和检查，共发放《致商户一封信》324份，对存在经营外溢和违章棚建现象的商户逐一讲解相关法律规定，劝诫其主动清违、配合执法，<span style=\"font-family:仿宋_GB2312\">做到不漏一户，不少一人。经劝说，部分商户自行清除了违章。</span></span></p><p style=\"margin-right:0;margin-left:0;text-indent:45px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">4月19、20日，联合执法组由各单位主要领导带队，出动执法队员80余名，组织叉车、吊车等各类车辆10余台，对渭水道沿线占路经营进行了集中清理，共处理违章商户80余家，暂扣大型棚亭4个、小型早餐车3个、外摆灯箱信息牌40余个、加工钢材70余根，转运垃圾20余车次，发现消防安全隐患25处，当场督促整改21处，对其余4处安全隐患下达了责令限期整改通知书，使得该路段街容街貌大为改观，清理工作取得初步成效。</span></p><p style=\"margin-right:0;margin-left:0;text-indent:45px;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\"></span></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492759514784469.jpg\" title=\"1492759514784469.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492759514121986.jpg\" title=\"1492759514121986.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492759514789202.jpg\" title=\"1492759514789202.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/ueditor/php/upload/image/20170421/1492759514270799.jpg\" title=\"1492759514270799.jpg\"/></p><p style=\"margin-right:0;margin-left:0;text-indent:0;text-autospace:ideograph-numeric;text-align:justify;text-justify:inter-ideograph;line-height:39px\"><span style=\";font-family:仿宋_GB2312;font-size:23px\">&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-family:仿宋_GB2312\">下一步，联合执法队将继续对临潼路、汾水道、咸阳路进行逐街逐户的清理整治，争取在最短时间内彻底解决该路段存在的违法、违章经营问题，并建立长效机制，安排执法队员进行专人值守，对可能出现的反弹现象即发现即治理，确保该路段商户正规经营，街道整洁通畅。</span></span></p><p><br/></p>', '1492759546', null);

-- ----------------------------
-- Table structure for nk_office
-- ----------------------------
DROP TABLE IF EXISTS `nk_office`;
CREATE TABLE `nk_office` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT '1' COMMENT '1.常规性 2.突发性',
  `from_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `supervision_id` int(11) DEFAULT NULL COMMENT '督办领导',
  `lead_id` int(11) DEFAULT NULL COMMENT '牵头领导',
  `doc_sn` varchar(255) DEFAULT NULL COMMENT '任务序号',
  `main_content` varchar(255) DEFAULT NULL,
  `responsibility_id` int(11) DEFAULT NULL COMMENT '责任单位',
  `send_time` int(11) DEFAULT NULL COMMENT '发文时间',
  `finish_time` int(11) DEFAULT NULL COMMENT '完成时间',
  `achieve` int(2) DEFAULT NULL COMMENT '1 完成 -1未完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='---------办公管理';

-- ----------------------------
-- Records of nk_office
-- ----------------------------
INSERT INTO `nk_office` VALUES ('1', '1', '3', '1', '工作', '内容', '12', '12', '1', 'ssss', null, null, null, '-1');

-- ----------------------------
-- Table structure for nk_pdf
-- ----------------------------
DROP TABLE IF EXISTS `nk_pdf`;
CREATE TABLE `nk_pdf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `desc` varchar(255) DEFAULT NULL COMMENT '简介',
  `pic_url` varchar(255) DEFAULT NULL COMMENT '图片',
  `file_url` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT '' COMMENT '文件名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='----------工作简报----------';

-- ----------------------------
-- Records of nk_pdf
-- ----------------------------

-- ----------------------------
-- Table structure for nk_periodical
-- ----------------------------
DROP TABLE IF EXISTS `nk_periodical`;
CREATE TABLE `nk_periodical` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) DEFAULT NULL,
  `stage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='----------电子期刊----------';

-- ----------------------------
-- Records of nk_periodical
-- ----------------------------
INSERT INTO `nk_periodical` VALUES ('1', '/Public/img/i_img_64.png', '第三期');

-- ----------------------------
-- Table structure for nk_picture
-- ----------------------------
DROP TABLE IF EXISTS `nk_picture`;
CREATE TABLE `nk_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture_name` varchar(255) DEFAULT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COMMENT='----------上传图片----------';

-- ----------------------------
-- Records of nk_picture
-- ----------------------------
INSERT INTO `nk_picture` VALUES ('113', 'QQ图片20170413111354.jpg', '/Public/Picture/2017-04-18/58f5e672b4def.jpg');
INSERT INTO `nk_picture` VALUES ('114', '360大会约访.jpg', '/Public/Picture/2017-04-18/58f5e99f9129b.jpg');
INSERT INTO `nk_picture` VALUES ('115', 'QQ截图20170418182744.jpg', '/Public/Picture/2017-04-18/58f5ea29d67be.jpg');

-- ----------------------------
-- Table structure for nk_reminder
-- ----------------------------
DROP TABLE IF EXISTS `nk_reminder`;
CREATE TABLE `nk_reminder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sup_id` int(11) DEFAULT NULL COMMENT '催办人',
  `document_id` int(11) DEFAULT NULL COMMENT 'document_id 部门id',
  `r_content` varchar(255) DEFAULT NULL,
  `send_time` int(11) DEFAULT NULL,
  `type` int(2) DEFAULT NULL COMMENT '1催办 2反馈',
  `file_id` varchar(255) DEFAULT NULL COMMENT '文件id（逗号隔开）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='-------催督办消息';

-- ----------------------------
-- Records of nk_reminder
-- ----------------------------
INSERT INTO `nk_reminder` VALUES ('79', '1', '29', '吧', '1490339727', '1', null);
INSERT INTO `nk_reminder` VALUES ('80', '3', '29', '好的', '1490339774', '2', '');
INSERT INTO `nk_reminder` VALUES ('81', '1', '28', '1', '1490340135', '1', null);
INSERT INTO `nk_reminder` VALUES ('82', '3', '35', 'tt', '1490341377', '2', '');
INSERT INTO `nk_reminder` VALUES ('83', '1', '37', '加快速度', '1490345923', '1', null);
INSERT INTO `nk_reminder` VALUES ('84', '3', '37', '好的', '1490346149', '2', '');
INSERT INTO `nk_reminder` VALUES ('85', '1', '37', '看见了', '1490346321', '1', null);
INSERT INTO `nk_reminder` VALUES ('86', '3', '42', 'Y', '1490351527', '2', '');
INSERT INTO `nk_reminder` VALUES ('87', '1', '42', '让他一人头', '1490602818', '1', null);
INSERT INTO `nk_reminder` VALUES ('88', '1', '42', '尽快~@', '1490605293', '1', null);
INSERT INTO `nk_reminder` VALUES ('89', '1', '43', '加快速度', '1490669707', '1', null);
INSERT INTO `nk_reminder` VALUES ('90', '1', '44', '聊聊', '1490671372', '1', null);
INSERT INTO `nk_reminder` VALUES ('91', '5', '44', '好的', '1490671412', '2', '');
INSERT INTO `nk_reminder` VALUES ('92', '1', '45', '困了', '1490672333', '1', null);
INSERT INTO `nk_reminder` VALUES ('93', '5', '45', '困了', '1490672363', '2', '');
INSERT INTO `nk_reminder` VALUES ('94', '1', '46', '美女快点测试', '1490679887', '1', null);
INSERT INTO `nk_reminder` VALUES ('95', '1', '47', '我来催一下美女测试', '1490679981', '1', null);
INSERT INTO `nk_reminder` VALUES ('96', '5', '47', '我可以加快速度', '1490680036', '2', '');
INSERT INTO `nk_reminder` VALUES ('97', '5', '47', '我们一起努力', '1490680048', '2', '');
INSERT INTO `nk_reminder` VALUES ('98', '1', '48', '加油', '1490687194', '1', null);
INSERT INTO `nk_reminder` VALUES ('99', '5', '48', '我很努力', '1490687235', '2', '');
INSERT INTO `nk_reminder` VALUES ('100', '5', '60', '11', '1490691402', '2', '');
INSERT INTO `nk_reminder` VALUES ('101', '1', '65', '加快速度', '1490941635', '1', null);
INSERT INTO `nk_reminder` VALUES ('102', '3', '65', '可以的', '1490942011', '2', '');
INSERT INTO `nk_reminder` VALUES ('103', '3', '65', '还好', '1490943191', '2', '');
INSERT INTO `nk_reminder` VALUES ('104', '2', '0', '是多少', '1492511473', '2', null);
INSERT INTO `nk_reminder` VALUES ('105', '2', '0', '是多少', '1492511473', '2', '');
INSERT INTO `nk_reminder` VALUES ('106', '1', '66', 'wsfwsf', '1492518964', '1', null);

-- ----------------------------
-- Table structure for nk_reminder_common
-- ----------------------------
DROP TABLE IF EXISTS `nk_reminder_common`;
CREATE TABLE `nk_reminder_common` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sup_id` int(11) DEFAULT NULL COMMENT '催办人',
  `document_id` int(11) DEFAULT NULL COMMENT 'document_id 部门id',
  `r_content` varchar(255) DEFAULT NULL,
  `send_time` int(11) DEFAULT NULL,
  `type` int(2) DEFAULT NULL COMMENT '1催办 2反馈',
  `file_id` varchar(255) DEFAULT NULL COMMENT '文件id（逗号隔开）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COMMENT='-------催督办消息';

-- ----------------------------
-- Records of nk_reminder_common
-- ----------------------------
INSERT INTO `nk_reminder_common` VALUES ('103', '1', '60', 'ss', '1491375301', '1', null);
INSERT INTO `nk_reminder_common` VALUES ('104', '3', '59', 'hahaha', '1491461847', '2', '');
INSERT INTO `nk_reminder_common` VALUES ('105', '1', '59', 'gagagagaga', '1491558821', '2', null);
INSERT INTO `nk_reminder_common` VALUES ('109', '41', '59', '12', '1491619071', '2', '109');
INSERT INTO `nk_reminder_common` VALUES ('110', '41', '59', '1', '1491627707', '2', '110');
INSERT INTO `nk_reminder_common` VALUES ('111', '41', '59', '12', '1491633381', '2', '');
INSERT INTO `nk_reminder_common` VALUES ('112', '34', '94', '11', '1491645072', '2', '111');
INSERT INTO `nk_reminder_common` VALUES ('113', '34', '275', '测试', '1491889608', '2', '');

-- ----------------------------
-- Table structure for nk_send_document_to
-- ----------------------------
DROP TABLE IF EXISTS `nk_send_document_to`;
CREATE TABLE `nk_send_document_to` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_id` int(11) DEFAULT NULL COMMENT '任务id',
  `to_id` int(11) DEFAULT NULL COMMENT '收件部门id',
  `dtype` int(11) DEFAULT '1' COMMENT '1.牵头单位 2.责任单位',
  `read` int(11) DEFAULT '-1' COMMENT '1已读 -1未读',
  `finish` int(11) DEFAULT '-1' COMMENT '1完成  -1未完成',
  `end_time` int(11) DEFAULT '0' COMMENT '实际完成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8 COMMENT='----------任务发送表---------';

-- ----------------------------
-- Records of nk_send_document_to
-- ----------------------------
INSERT INTO `nk_send_document_to` VALUES ('212', '66', '2', '1', '1', '-1', '0');

-- ----------------------------
-- Table structure for nk_send_document_to_common
-- ----------------------------
DROP TABLE IF EXISTS `nk_send_document_to_common`;
CREATE TABLE `nk_send_document_to_common` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_id` int(11) DEFAULT NULL COMMENT '任务id',
  `to_id` int(11) DEFAULT NULL COMMENT '-1全区各单位 -2各街道',
  `dtype` int(11) DEFAULT NULL COMMENT '1.牵头单位 2.责任单位',
  `read` int(11) DEFAULT '-1' COMMENT '1已读 -1未读',
  `finish` int(11) DEFAULT '-1' COMMENT '1完成  -1未完成',
  `end_time` int(11) DEFAULT '0' COMMENT '实际完成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=835 DEFAULT CHARSET=utf8 COMMENT='----------任务发送表---------';

-- ----------------------------
-- Records of nk_send_document_to_common
-- ----------------------------
INSERT INTO `nk_send_document_to_common` VALUES ('228', '94', '34', '1', '-1', '1', '1491645091');
INSERT INTO `nk_send_document_to_common` VALUES ('229', '95', '258', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('230', '95', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('231', '95', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('232', '225', '38', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('233', '69', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('234', '70', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('235', '226', '20', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('236', '70', '262', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('237', '227', '25', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('238', '70', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('239', '71', '262', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('240', '71', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('241', '72', '262', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('242', '72', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('243', '73', '262', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('244', '73', '38', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('245', '74', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('246', '74', '267', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('247', '74', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('248', '228', '15', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('249', '75', '34', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('250', '229', '15', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('251', '229', '285', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('252', '230', '15', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('254', '77', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('255', '232', '38', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('256', '234', '38', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('257', '78', '37', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('258', '78', '20', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('259', '78', '23', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('260', '78', '26', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('261', '78', '25', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('262', '78', '22', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('263', '78', '36', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('264', '79', '283', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('265', '79', '49', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('266', '236', '49', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('267', '80', '64', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('268', '252', '25', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('269', '253', '25', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('270', '81', '278', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('271', '254', '25', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('272', '255', '25', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('273', '256', '25', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('274', '256', '25', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('275', '273', '34', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('276', '273', '15', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('277', '273', '29', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('278', '272', '34', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('279', '272', '15', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('280', '272', '29', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('281', '271', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('282', '270', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('283', '269', '50', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('284', '269', '56', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('285', '269', '57', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('286', '269', '59', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('287', '269', '61', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('288', '269', '33', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('289', '269', '291', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('290', '251', '60', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('291', '251', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('292', '250', '29', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('293', '249', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('294', '248', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('295', '247', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('296', '246', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('297', '245', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('298', '244', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('299', '243', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('300', '242', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('301', '241', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('302', '241', '16', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('303', '241', '44', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('304', '240', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('305', '239', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('306', '238', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('307', '220', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('308', '219', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('309', '218', '27', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('310', '217', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('311', '216', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('312', '96', '34', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('313', '96', '259', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('314', '213', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('315', '213', '40', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('316', '213', '40', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('317', '210', '40', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('318', '97', '265', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('319', '82', '15', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('320', '116', '265', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('321', '116', '258', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('322', '116', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('323', '116', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('324', '83', '55', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('325', '84', '55', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('326', '84', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('327', '84', '264', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('328', '117', '34', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('329', '117', '259', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('330', '85', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('331', '86', '55', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('332', '86', '271', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('333', '86', '272', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('334', '87', '55', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('335', '144', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('337', '88', '55', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('338', '88', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('339', '89', '55', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('340', '89', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('341', '90', '55', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('342', '161', '264', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('343', '162', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('344', '163', '267', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('345', '164', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('346', '206', '40', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('347', '206', '29', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('348', '91', '55', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('349', '91', '27', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('350', '93', '20', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('351', '119', '44', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('352', '120', '59', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('353', '165', '267', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('354', '121', '23', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('355', '122', '27', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('356', '123', '56', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('357', '124', '258', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('358', '124', '56', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('359', '124', '270', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('360', '124', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('361', '166', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('362', '166', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('363', '167', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('364', '167', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('365', '168', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('366', '168', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('367', '169', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('368', '170', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('369', '171', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('370', '171', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('371', '201', '29', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('372', '201', '49', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('373', '201', '21', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('374', '201', '28', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('375', '201', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('376', '201', '22', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('377', '201', '49', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('378', '199', '20', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('379', '198', '28', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('380', '198', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('381', '197', '28', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('382', '125', '44', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('383', '125', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('384', '126', '16', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('385', '127', '253', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('386', '127', '16', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('387', '127', '20', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('388', '127', '18', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('389', '127', '19', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('390', '127', '26', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('391', '127', '22', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('392', '127', '25', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('393', '127', '36', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('394', '128', '253', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('395', '128', '16', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('396', '343', '267', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('397', '128', '20', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('398', '128', '18', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('399', '128', '19', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('400', '128', '26', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('401', '128', '22', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('402', '128', '25', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('403', '128', '36', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('404', '129', '16', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('405', '129', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('406', '130', '16', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('407', '131', '253', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('408', '131', '16', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('409', '131', '31', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('410', '131', '18', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('411', '131', '19', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('412', '131', '25', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('413', '131', '20', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('414', '131', '26', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('415', '197', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('416', '195', '21', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('417', '195', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('418', '194', '30', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('419', '274', '34', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('420', '132', '31', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('421', '132', '18', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('422', '132', '19', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('423', '132', '25', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('424', '132', '20', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('425', '132', '26', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('426', '133', '31', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('427', '134', '18', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('428', '135', '32', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('429', '136', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('430', '136', '16', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('431', '194', '30', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('432', '194', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('433', '160', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('434', '159', '44', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('435', '159', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('436', '158', '47', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('437', '158', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('438', '157', '47', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('439', '157', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('440', '156', '46', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('441', '155', '49', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('442', '274', '259', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('443', '275', '34', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('444', '275', '259', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('445', '276', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('446', '277', '34', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('447', '277', '259', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('448', '278', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('449', '279', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('450', '155', '54', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('451', '155', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('452', '154', '64', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('453', '154', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('454', '153', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('455', '152', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('456', '151', '23', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('457', '149', '36', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('458', '149', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('459', '148', '36', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('460', '148', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('461', '280', '16', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('462', '281', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('463', '282', '262', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('464', '282', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('465', '283', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('466', '283', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('467', '284', '291', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('468', '284', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('469', '291', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('470', '136', '21', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('471', '136', '20', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('472', '136', '33', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('473', '137', '20', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('474', '138', '20', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('475', '139', '20', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('476', '140', '27', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('477', '140', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('478', '141', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('479', '142', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('480', '143', '46', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('481', '147', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('482', '251', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('483', '249', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('484', '247', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('485', '246', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('486', '215', '-1', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('487', '216', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('488', '241', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('489', '211', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('490', '208', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('491', '115', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('492', '114', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('493', '113', '63', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('494', '113', '281', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('495', '113', '17', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('496', '112', '23', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('497', '111', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('498', '110', '54', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('499', '109', '21', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('500', '109', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('501', '108', '28', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('502', '108', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('503', '107', '63', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('504', '106', '63', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('505', '106', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('506', '105', '54', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('507', '105', '17', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('508', '105', '20', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('509', '105', '53', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('510', '105', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('511', '104', '276', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('512', '104', '20', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('513', '103', '21', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('514', '103', '20', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('515', '103', '36', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('516', '103', '53', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('517', '103', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('518', '102', '20', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('519', '102', '36', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('520', '101', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('521', '100', '23', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('522', '99', '38', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('523', '99', '64', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('524', '99', '21', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('525', '99', '40', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('526', '99', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('527', '98', '20', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('528', '68', '20', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('529', '67', '42', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('530', '66', '25', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('531', '65', '25', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('532', '64', '25', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('533', '64', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('534', '63', '29', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('535', '63', '49', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('536', '62', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('537', '285', '46', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('538', '285', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('539', '286', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('540', '286', '48', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('541', '291', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('542', '292', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('543', '293', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('544', '293', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('545', '294', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('546', '294', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('547', '284', '24', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('548', '295', '24', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('549', '295', '291', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('550', '295', '47', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('551', '172', '48', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('552', '173', '24', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('553', '174', '27', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('554', '175', '24', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('555', '176', '22', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('556', '176', '274', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('557', '177', '47', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('558', '178', '24', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('559', '179', '24', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('560', '179', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('561', '286', '46', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('562', '286', '273', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('563', '286', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('564', '287', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('565', '287', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('566', '288', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('567', '288', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('568', '289', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('569', '289', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('570', '290', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('571', '295', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('572', '295', '46', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('573', '295', '33', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('574', '295', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('575', '296', '56', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('576', '297', '56', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('577', '297', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('578', '298', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('579', '298', '56', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('580', '299', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('581', '290', '258', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('582', '290', '15', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('583', '290', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('584', '290', '50', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('585', '301', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('586', '301', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('587', '301', '291', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('588', '301', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('589', '304', '274', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('590', '307', '274', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('591', '180', '47', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('592', '180', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('593', '181', '17', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('594', '182', '17', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('595', '183', '44', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('596', '183', '61', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('597', '183', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('598', '183', '23', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('599', '183', '24', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('600', '183', '25', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('601', '299', '56', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('602', '299', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('603', '300', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('604', '300', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('605', '309', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('606', '310', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('607', '311', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('608', '312', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('609', '313', '32', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('610', '314', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('611', '307', '274', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('612', '308', '291', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('613', '308', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('614', '320', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('615', '320', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('616', '321', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('617', '321', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('618', '322', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('619', '322', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('620', '323', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('621', '183', '49', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('622', '183', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('623', '184', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('624', '185', '23', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('625', '186', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('626', '186', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('627', '187', '38', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('628', '188', '15', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('629', '189', '15', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('630', '190', '15', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('631', '324', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('632', '324', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('633', '324', '44', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('634', '324', '50', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('635', '324', '57', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('636', '324', '59', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('637', '324', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('638', '325', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('639', '325', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('640', '326', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('641', '191', '44', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('642', '191', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('643', '192', '44', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('644', '192', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('645', '221', '23', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('646', '222', '23', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('647', '344', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('648', '345', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('649', '346', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('650', '346', '56', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('651', '314', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('652', '315', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('653', '316', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('654', '316', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('655', '337', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('656', '338', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('657', '339', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('658', '339', '27', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('659', '339', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('660', '340', '32', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('661', '326', '36', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('662', '326', '262', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('663', '326', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('664', '327', '291', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('665', '327', '23', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('666', '327', '55', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('667', '327', '25', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('668', '327', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('669', '333', '32', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('670', '420', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('671', '340', '262', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('672', '340', '-1', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('673', '341', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('674', '341', '49', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('675', '341', '21', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('676', '341', '24', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('677', '341', '22', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('678', '341', '49', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('681', '394', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('682', '394', '56', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('683', '394', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('684', '395', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('685', '395', '56', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('686', '395', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('687', '396', '44', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('688', '396', '57', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('689', '396', '56', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('690', '396', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('691', '397', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('692', '398', '274', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('693', '399', '274', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('694', '399', '23', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('695', '398', '23', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('696', '400', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('697', '400', '46', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('698', '400', '274', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('699', '400', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('700', '401', '274', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('701', '346', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('702', '346', '10', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('703', '347', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('704', '347', '44', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('705', '347', '24', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('706', '347', '56', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('707', '347', '59', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('708', '347', '265', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('709', '348', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('710', '348', '44', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('711', '348', '24', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('712', '348', '56', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('713', '348', '59', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('714', '348', '265', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('715', '348', '60', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('716', '349', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('717', '349', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('718', '349', '10', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('719', '350', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('720', '350', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('721', '401', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('722', '402', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('723', '403', '38', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('724', '404', '38', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('725', '405', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('726', '405', '38', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('727', '415', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('728', '415', '38', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('729', '416', '44', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('730', '416', '274', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('731', '350', '10', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('732', '366', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('733', '367', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('734', '367', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('735', '367', '-2', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('736', '367', '10', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('737', '368', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('738', '368', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('739', '369', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('740', '369', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('741', '416', '56', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('742', '416', '61', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('743', '416', '289', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('744', '417', '44', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('745', '417', '274', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('746', '417', '56', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('747', '417', '59', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('748', '418', '60', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('749', '418', '66', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('750', '419', '60', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('751', '419', '32', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('752', '351', '40', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('753', '352', '40', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('754', '353', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('755', '354', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('756', '355', '259', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('757', '355', '40', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('758', '356', '40', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('759', '356', '23', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('760', '358', '40', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('761', '421', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('762', '422', '259', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('763', '423', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('764', '424', '56', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('765', '425', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('766', '426', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('767', '427', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('768', '428', '283', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('769', '429', '55', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('770', '430', '16', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('771', '369', '-2', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('772', '369', '10', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('773', '370', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('774', '370', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('775', '370', '24', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('776', '371', '24', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('777', '371', '40', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('778', '377', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('779', '378', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('780', '379', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('781', '431', '20', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('782', '432', null, '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('783', '433', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('784', '434', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('785', '435', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('786', '436', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('787', '436', '44', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('788', '437', '43', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('789', '438', '38', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('790', '439', '25', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('791', '380', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('792', '381', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('793', '381', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('794', '382', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('795', '382', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('796', '383', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('797', '384', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('798', '385', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('799', '386', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('800', '387', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('801', '440', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('802', '441', '29', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('803', '388', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('804', '389', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('805', '390', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('806', '391', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('807', '392', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('808', '393', '40', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('811', '358', '38', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('812', '358', '20', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('813', '359', '49', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('814', '359', '44', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('815', '359', '38', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('816', '360', '66', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('817', '374', '20', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('818', '361', '40', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('819', '362', '40', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('820', '363', '40', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('821', '364', '40', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('822', '365', '40', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('823', '376', '-2', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('824', '372', '40', null, '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('825', '372', null, null, '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('826', '442', '16', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('827', '442', '34', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('828', '453', '16', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('829', '453', '34', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('830', '454', '292', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('831', '455', '352', '1', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('832', '455', '16', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('833', '456', '352', '2', '-1', '-1', '0');
INSERT INTO `nk_send_document_to_common` VALUES ('834', '457', '16', '1', '-1', '-1', '0');

-- ----------------------------
-- Table structure for nk_send_email_to
-- ----------------------------
DROP TABLE IF EXISTS `nk_send_email_to`;
CREATE TABLE `nk_send_email_to` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_id` int(11) DEFAULT NULL COMMENT '邮件id',
  `send_to` int(11) DEFAULT NULL COMMENT '收件人id',
  `is_delete` int(11) DEFAULT '-1' COMMENT '1.删除 -1.未删除',
  `read` int(11) DEFAULT '-1' COMMENT '1.已读 -1未读',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8084 DEFAULT CHARSET=utf8 COMMENT='---------收件箱列表---------';

-- ----------------------------
-- Records of nk_send_email_to
-- ----------------------------
INSERT INTO `nk_send_email_to` VALUES ('8083', '154', '1656', '1', '1');

-- ----------------------------
-- Table structure for nk_sudden_category
-- ----------------------------
DROP TABLE IF EXISTS `nk_sudden_category`;
CREATE TABLE `nk_sudden_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sudden_category_name` varchar(255) DEFAULT NULL COMMENT '突发性任务分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='----------突发性任务分类----------';

-- ----------------------------
-- Records of nk_sudden_category
-- ----------------------------
INSERT INTO `nk_sudden_category` VALUES ('1', '活动');
INSERT INTO `nk_sudden_category` VALUES ('2', '汇报');
INSERT INTO `nk_sudden_category` VALUES ('3', '日常');

-- ----------------------------
-- Table structure for nk_talk_list
-- ----------------------------
DROP TABLE IF EXISTS `nk_talk_list`;
CREATE TABLE `nk_talk_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL COMMENT 'type=1个人id；type=2群聊房间号',
  `create_time` int(11) DEFAULT NULL,
  `content` text COMMENT '聊天内容',
  `type` int(11) DEFAULT '1' COMMENT '1个人；2群聊',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nk_talk_list
-- ----------------------------
INSERT INTO `nk_talk_list` VALUES ('1', '60', '5', '1474379357', '1234', '2');
INSERT INTO `nk_talk_list` VALUES ('2', '61', '60', '1493184254', '哈哈', '1');
INSERT INTO `nk_talk_list` VALUES ('3', '61', '60', '1493184779', '你好', '1');
INSERT INTO `nk_talk_list` VALUES ('4', '60', '61', '1493184970', '你不好\n', '1');
INSERT INTO `nk_talk_list` VALUES ('5', '60', '61', '1493184978', '你太胖；了', '1');
INSERT INTO `nk_talk_list` VALUES ('6', '60', '61', '1493185039', '你该减肥了', '1');
INSERT INTO `nk_talk_list` VALUES ('7', '62', '61', '1493185168', '你减肥了吗', '1');
INSERT INTO `nk_talk_list` VALUES ('8', '62', '61', '1493185186', '你快减肥啊', '1');
INSERT INTO `nk_talk_list` VALUES ('9', '60', '61', '1493185659', '破玩意', '1');
INSERT INTO `nk_talk_list` VALUES ('10', '61', '60', '1493185670', '打死你', '1');
INSERT INTO `nk_talk_list` VALUES ('11', '60', '61', '1493185679', '掐死你', '1');
INSERT INTO `nk_talk_list` VALUES ('12', '60', '61', '1493185806', '说你妹啊', '1');
INSERT INTO `nk_talk_list` VALUES ('13', '60', '61', '1493186215', '傻子', '1');
INSERT INTO `nk_talk_list` VALUES ('14', '60', '61', '1493186224', '我给你发2句', '1');
INSERT INTO `nk_talk_list` VALUES ('15', '61', '60', '1493186224', '玩去', '1');
INSERT INTO `nk_talk_list` VALUES ('16', '60', '61', '1493186230', '你先去吧', '1');
INSERT INTO `nk_talk_list` VALUES ('17', '60', '61', '1493186234', '', '1');
INSERT INTO `nk_talk_list` VALUES ('18', '60', '61', '1493186236', '', '1');
INSERT INTO `nk_talk_list` VALUES ('19', '60', '61', '1493186241', '也就', '1');
INSERT INTO `nk_talk_list` VALUES ('20', '60', '61', '1493186243', '', '1');
INSERT INTO `nk_talk_list` VALUES ('21', '60', '61', '1493186244', '', '1');
INSERT INTO `nk_talk_list` VALUES ('22', '60', '61', '1493186244', '', '1');
INSERT INTO `nk_talk_list` VALUES ('23', '60', '61', '1493186245', '', '1');
INSERT INTO `nk_talk_list` VALUES ('24', '60', '61', '1493186245', '', '1');
INSERT INTO `nk_talk_list` VALUES ('25', '60', '61', '1493186245', '', '1');
INSERT INTO `nk_talk_list` VALUES ('26', '60', '61', '1493186245', '', '1');
INSERT INTO `nk_talk_list` VALUES ('27', '60', '61', '1493186246', '', '1');
INSERT INTO `nk_talk_list` VALUES ('28', '60', '61', '1493186246', '', '1');
INSERT INTO `nk_talk_list` VALUES ('29', '60', '61', '1493186246', '', '1');
INSERT INTO `nk_talk_list` VALUES ('30', '60', '61', '1493186246', '', '1');
INSERT INTO `nk_talk_list` VALUES ('31', '60', '61', '1493186246', '', '1');
INSERT INTO `nk_talk_list` VALUES ('32', '60', '61', '1493186247', '', '1');
INSERT INTO `nk_talk_list` VALUES ('33', '60', '61', '1493186247', '', '1');
INSERT INTO `nk_talk_list` VALUES ('34', '60', '61', '1493186247', '', '1');
INSERT INTO `nk_talk_list` VALUES ('35', '60', '61', '1493186247', '', '1');
INSERT INTO `nk_talk_list` VALUES ('36', '60', '61', '1493186249', '', '1');
INSERT INTO `nk_talk_list` VALUES ('37', '60', '61', '1493186249', '', '1');
INSERT INTO `nk_talk_list` VALUES ('38', '60', '61', '1493186249', '', '1');
INSERT INTO `nk_talk_list` VALUES ('39', '60', '61', '1493186249', '', '1');
INSERT INTO `nk_talk_list` VALUES ('40', '60', '61', '1493186318', '1', '1');
INSERT INTO `nk_talk_list` VALUES ('41', '60', '61', '1493186326', '2', '1');
INSERT INTO `nk_talk_list` VALUES ('42', '60', '61', '1493186330', '3', '1');
INSERT INTO `nk_talk_list` VALUES ('43', '60', '61', '1493186333', '4', '1');
INSERT INTO `nk_talk_list` VALUES ('44', '60', '61', '1493186336', '5', '1');
INSERT INTO `nk_talk_list` VALUES ('45', '60', '61', '1493186341', '6', '1');
INSERT INTO `nk_talk_list` VALUES ('46', '60', '61', '149318634', '6', '1');
INSERT INTO `nk_talk_list` VALUES ('47', '61', '5', '1491753600', '2017/4/27 上午9:15:58', '2');
INSERT INTO `nk_talk_list` VALUES ('48', '61', '5', '1493255841', '312', '2');
INSERT INTO `nk_talk_list` VALUES ('49', '61', '5', '1493255903', '更多', '2');
INSERT INTO `nk_talk_list` VALUES ('50', '61', null, '1493255967', '我', '2');
INSERT INTO `nk_talk_list` VALUES ('51', '61', '5', '1493256007', 'q', '2');
INSERT INTO `nk_talk_list` VALUES ('52', '61', '5', '1493256029', '21', '2');
INSERT INTO `nk_talk_list` VALUES ('53', '60', '5', '1493257018', '444', '2');
INSERT INTO `nk_talk_list` VALUES ('54', '61', '5', '1493257230', '哈哈', '2');
INSERT INTO `nk_talk_list` VALUES ('55', '60', '5', '1493257179', '22', '2');
INSERT INTO `nk_talk_list` VALUES ('56', '60', '5', '1493257182', '', '2');
INSERT INTO `nk_talk_list` VALUES ('57', '60', '5', '1493257189', '2', '2');
INSERT INTO `nk_talk_list` VALUES ('58', '60', '61', '1493257204', '2', '1');
INSERT INTO `nk_talk_list` VALUES ('59', '60', '5', '1493257212', '2', '2');
INSERT INTO `nk_talk_list` VALUES ('60', '61', '5', '1493259761', '1', '2');
INSERT INTO `nk_talk_list` VALUES ('61', '60', '61', '1493259907', '2', '1');
INSERT INTO `nk_talk_list` VALUES ('62', '60', '1', '1493259918', '2', '2');
INSERT INTO `nk_talk_list` VALUES ('63', '60', '61', '1493259952', '2', '1');
INSERT INTO `nk_talk_list` VALUES ('64', '60', '1', '1493261934', '2', '2');
INSERT INTO `nk_talk_list` VALUES ('65', '60', '5', '1493261973', '我的', '2');
INSERT INTO `nk_talk_list` VALUES ('66', '60', '5', '1493261982', '测试', '2');
INSERT INTO `nk_talk_list` VALUES ('67', '61', '5', '1493261986', '很高兴', '2');
INSERT INTO `nk_talk_list` VALUES ('68', '61', '5', '1493262020', '123', '2');
INSERT INTO `nk_talk_list` VALUES ('69', '60', '5', '1493262020', '我也很高兴', '2');
INSERT INTO `nk_talk_list` VALUES ('70', '61', '5', '1493262026', '哈哈', '2');
INSERT INTO `nk_talk_list` VALUES ('71', '60', '5', '1493262041', '高兴就好，你开心就好', '2');
INSERT INTO `nk_talk_list` VALUES ('72', '61', '5', '1493262159', '123', '2');
INSERT INTO `nk_talk_list` VALUES ('73', '61', '0', '1493263410', '132', '2');
INSERT INTO `nk_talk_list` VALUES ('74', '61', '5', '1493272397', 'hello', '2');
INSERT INTO `nk_talk_list` VALUES ('75', '61', '26', '1493272903', '111111', '2');
INSERT INTO `nk_talk_list` VALUES ('76', '61', '26', '1493272907', '1111111', '2');
INSERT INTO `nk_talk_list` VALUES ('77', '61', '5', '1493272919', '11111', '2');
INSERT INTO `nk_talk_list` VALUES ('78', '61', '5', '1493273011', '333', '2');
INSERT INTO `nk_talk_list` VALUES ('79', '61', '5', '1493273014', '5555', '2');
INSERT INTO `nk_talk_list` VALUES ('80', '61', '5', '1493273038', '3333', '2');
INSERT INTO `nk_talk_list` VALUES ('81', '61', '5', '1493273042', '4444', '2');
INSERT INTO `nk_talk_list` VALUES ('82', '61', '5', '1493274223', 'hello\n', '2');
INSERT INTO `nk_talk_list` VALUES ('83', '61', '29', '1493276430', 'hello\n\n', '2');
INSERT INTO `nk_talk_list` VALUES ('84', '60', '29', '1493276461', 'hi\n', '2');
INSERT INTO `nk_talk_list` VALUES ('85', '1621', '31', '1493276710', 'hello\n', '2');
INSERT INTO `nk_talk_list` VALUES ('86', '60', '31', '1493276733', 'hi\n', '2');
INSERT INTO `nk_talk_list` VALUES ('87', '61', '31', '1493276804', 'nisa  ', '2');
INSERT INTO `nk_talk_list` VALUES ('88', '1621', '34', '1493276946', 'm吗', '2');
INSERT INTO `nk_talk_list` VALUES ('89', '61', '34', '1493276962', '22', '2');
INSERT INTO `nk_talk_list` VALUES ('90', '61', '60', '1493277889', '123', '1');
INSERT INTO `nk_talk_list` VALUES ('91', '61', '60', '1493277895', '呃', '1');
INSERT INTO `nk_talk_list` VALUES ('92', '61', '60', '1493278083', '12', '1');
INSERT INTO `nk_talk_list` VALUES ('93', '61', '31', '1493278097', '2121', '2');
INSERT INTO `nk_talk_list` VALUES ('94', '61', '60', '1493278113', '12', '1');
INSERT INTO `nk_talk_list` VALUES ('95', '61', '60', '1493278126', '11', '1');
INSERT INTO `nk_talk_list` VALUES ('96', '60', '61', '1493278084', 'sss', '1');
INSERT INTO `nk_talk_list` VALUES ('97', '61', '60', '1493278172', '12', '1');
INSERT INTO `nk_talk_list` VALUES ('98', '61', '1621', '1493278186', '12', '1');
INSERT INTO `nk_talk_list` VALUES ('99', '61', '1621', '1493278204', '555', '1');
INSERT INTO `nk_talk_list` VALUES ('100', '61', '1621', '1493278308', '21', '1');
INSERT INTO `nk_talk_list` VALUES ('101', '60', '61', '1493278276', '哈哈哈', '1');
INSERT INTO `nk_talk_list` VALUES ('102', '61', '60', '1493278329', '213', '1');
INSERT INTO `nk_talk_list` VALUES ('103', '60', '61', '1493278310', 'd', '1');
INSERT INTO `nk_talk_list` VALUES ('104', '61', '60', '1493278367', '带我去', '1');
INSERT INTO `nk_talk_list` VALUES ('105', '61', '31', '1493278540', '21', '2');
INSERT INTO `nk_talk_list` VALUES ('106', '61', '60', '1493278556', '放大', '1');
INSERT INTO `nk_talk_list` VALUES ('107', '60', '61', '1493278616', '烦得很和', '1');
INSERT INTO `nk_talk_list` VALUES ('108', '60', '61', '1493278760', '21323', '1');
INSERT INTO `nk_talk_list` VALUES ('109', '61', '29', '1493278915', '333', '2');
INSERT INTO `nk_talk_list` VALUES ('110', '61', '29', '1493278934', '寡凫单鹄', '2');
INSERT INTO `nk_talk_list` VALUES ('111', '61', '29', '1493278958', '55555555555', '2');
INSERT INTO `nk_talk_list` VALUES ('112', '61', '29', '1493278961', '他如果发给', '2');
INSERT INTO `nk_talk_list` VALUES ('113', '61', '29', '1493278964', '风格风格方法', '2');
INSERT INTO `nk_talk_list` VALUES ('114', '61', '29', '1493278967', '发的说个法规分公司', '2');
INSERT INTO `nk_talk_list` VALUES ('115', '61', '29', '1493278971', '发使法国风格', '2');
INSERT INTO `nk_talk_list` VALUES ('116', '61', '29', '1493278975', '法师攻防都是苟富贵发个', '2');
INSERT INTO `nk_talk_list` VALUES ('117', '61', '29', '1493278984', '官方非官方的风格风格风格风格 法国发过', '2');
INSERT INTO `nk_talk_list` VALUES ('118', '61', '29', '1493278991', '幅度达到多少风格风格发苟富贵', '2');
INSERT INTO `nk_talk_list` VALUES ('119', '61', '29', '1493278997', '广汇股份回复', '2');
INSERT INTO `nk_talk_list` VALUES ('120', '61', '29', '1493279002', '官方很反感和风格化个', '2');
INSERT INTO `nk_talk_list` VALUES ('121', '60', '29', '1493278979', '发的书法家速度快', '2');
INSERT INTO `nk_talk_list` VALUES ('122', '61', '29', '1493279045', '555', '2');
INSERT INTO `nk_talk_list` VALUES ('123', '60', '29', '1493278999', '水电费圣诞节', '2');
INSERT INTO `nk_talk_list` VALUES ('124', '60', '29', '1493279039', '无服务费', '2');
INSERT INTO `nk_talk_list` VALUES ('125', '60', '29', '1493279111', '红人馆', '2');
INSERT INTO `nk_talk_list` VALUES ('126', '60', '29', '1493279119', '哈哈哈', '2');
INSERT INTO `nk_talk_list` VALUES ('127', '61', '29', '1493279188', '哈哈哈哈烦烦烦', '2');
INSERT INTO `nk_talk_list` VALUES ('128', '61', '29', '1493279195', '第三方第三方地方', '2');
INSERT INTO `nk_talk_list` VALUES ('129', '1621', '31', '1493279980', '是\n', '2');
INSERT INTO `nk_talk_list` VALUES ('130', '1621', '31', '1493279983', '的', '2');
INSERT INTO `nk_talk_list` VALUES ('131', '61', '60', '1493280063', '22', '1');
INSERT INTO `nk_talk_list` VALUES ('132', '1621', '65', '1493280608', '11111111111111111111111111111111111111', '1');
INSERT INTO `nk_talk_list` VALUES ('133', '1621', '65', '1493280612', '1111111111111111111111111', '1');
INSERT INTO `nk_talk_list` VALUES ('134', '1621', '65', '1493280617', '111111111111111111111111111111111111', '1');
INSERT INTO `nk_talk_list` VALUES ('135', '1621', '65', '1493280621', '1111111111111111111111111111111111', '1');
INSERT INTO `nk_talk_list` VALUES ('136', '1621', '65', '1493280629', '1111111111111111111111111', '1');
INSERT INTO `nk_talk_list` VALUES ('137', '1621', '65', '1493280634', '11111111111111111111111', '1');
INSERT INTO `nk_talk_list` VALUES ('138', '65', '1621', '1493280669', '2222222222222222222222222222222', '1');
INSERT INTO `nk_talk_list` VALUES ('139', '65', '1621', '1493280673', '333333333333333333333333333333', '1');
INSERT INTO `nk_talk_list` VALUES ('140', '65', '1621', '1493280681', '4444444444444444444444444', '1');
INSERT INTO `nk_talk_list` VALUES ('141', '65', '1621', '1493280686', '2222222222222222222222222', '1');
INSERT INTO `nk_talk_list` VALUES ('142', '65', '1621', '1493280693', '22222222222222222', '1');
INSERT INTO `nk_talk_list` VALUES ('143', '65', '1621', '1493280702', '1111111111111111111', '1');
INSERT INTO `nk_talk_list` VALUES ('144', '65', '1621', '1493280719', '11111111111111111111', '1');
INSERT INTO `nk_talk_list` VALUES ('145', '65', '1621', '1493280722', '11111111111111111111', '1');
INSERT INTO `nk_talk_list` VALUES ('146', '65', '1621', '1493280727', '1111111111111111111', '1');
INSERT INTO `nk_talk_list` VALUES ('147', '65', '1621', '1493280731', '1111111111111111111111', '1');
INSERT INTO `nk_talk_list` VALUES ('148', '65', '1621', '1493280736', '1111111111111111111111111111111111111111111111111', '1');
INSERT INTO `nk_talk_list` VALUES ('149', '65', '1621', '1493280798', '的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。', '1');
INSERT INTO `nk_talk_list` VALUES ('150', '61', '60', '1493280816', '房价肯定撒扣费金额我看啦；就废物了；啊机卡分离今晚；艾佛嗯我问佛挖金矿flew就啊看来飞机我卡了分解哦今晚；阿克洛夫；金额看完啦甲方可了哇甲方可了哇卡发链接', '1');
INSERT INTO `nk_talk_list` VALUES ('151', '61', '60', '1493280864', '创文办01(17-04-27 09:40:04):\n2\n创文办01(17-04-27 10:25:07):\n2\n创文办01(17-04-27 10:25:52):\n2\n我(17-04-27 15:24:49):\n123\n我(17-04-27 15:24:55):\n呃\n我(17-04-27 15:28:03):\n12\n我(17-04-27 15:28:33):\n12\n我(17-04-27 15:28:46):\n11\n创文办01(17-04-27 15:28:04):\nsss\n我(17-04-27 15:29:32):\n12\n创文办01(17-04-27 15:31:16):\n哈哈哈\n我(17-04-27 15:32:09):\n213\n创文办01(17-04-27 15:31:50):\nd\n我(17-04-27 15:32:47):\n带我去\n我(17-04-27 15:35:56):\n放大\n创文办01(17-04-27 15:36:56):\n烦得很和\n创文办01(17-04-27 15:39:20):\n21323\n我(17-04-27 16:01:03):\n22\n我(17-04-27 16:13:36):\n房价肯定撒扣费金额我看啦；就废物了；啊机卡分离今晚；艾佛嗯我问佛挖金矿flew就啊看来飞机我卡了分解哦今晚；阿克洛夫；金额看完啦甲方可了哇甲方可了哇卡发链接', '1');
INSERT INTO `nk_talk_list` VALUES ('152', '65', '1621', '1493280890', '的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。', '1');
INSERT INTO `nk_talk_list` VALUES ('153', '65', '1621', '1493280898', '的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。', '1');
INSERT INTO `nk_talk_list` VALUES ('154', '65', '1621', '1493280970', '的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。', '1');
INSERT INTO `nk_talk_list` VALUES ('155', '65', '1621', '1493280975', '的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。的日子，平淡而润泽；树木花草也往回收了，它们不再一味地生长，还原生命本来的姿态，更注重内心的沉淀，期待着明年的再次生发。人的心也往回收了，摒去了旧日的繁华喧嚣，开始喜欢安静了，安静的人才能和灵魂作伴，更好的沉淀和丰盈自己。', '1');
INSERT INTO `nk_talk_list` VALUES ('156', '60', '45', '1493283961', 'hello\n', '2');
INSERT INTO `nk_talk_list` VALUES ('157', '67', '45', '1493284228', 'hi', '2');
INSERT INTO `nk_talk_list` VALUES ('158', '65', '45', '1493284297', '你好', '2');
INSERT INTO `nk_talk_list` VALUES ('159', '66', '45', '1493284339', '大家好啊', '2');
INSERT INTO `nk_talk_list` VALUES ('160', '61', '52', '1493343813', '145', '2');
INSERT INTO `nk_talk_list` VALUES ('161', '61', '60', '1493345324', '你好', '1');
INSERT INTO `nk_talk_list` VALUES ('162', '60', '85', '1493347598', '11', '2');
INSERT INTO `nk_talk_list` VALUES ('163', '60', '61', '1493371922', '在吗？', '1');
INSERT INTO `nk_talk_list` VALUES ('164', '60', '5', '1493371942', '你好', '2');
INSERT INTO `nk_talk_list` VALUES ('165', '60', '31', '1493371967', '你好', '2');

-- ----------------------------
-- Table structure for nk_task
-- ----------------------------
DROP TABLE IF EXISTS `nk_task`;
CREATE TABLE `nk_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `task_sn` varchar(255) DEFAULT NULL,
  `execution` varchar(255) DEFAULT NULL COMMENT '执行者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='---------任务表';

-- ----------------------------
-- Records of nk_task
-- ----------------------------

-- ----------------------------
-- Table structure for nk_user
-- ----------------------------
DROP TABLE IF EXISTS `nk_user`;
CREATE TABLE `nk_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL COMMENT '所属部门',
  `position` tinyint(2) DEFAULT '2' COMMENT '职位(1.部长2.员工)',
  `remark` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT '1' COMMENT '1启用 -1禁用',
  `last_login` int(11) DEFAULT '0' COMMENT '最后登录时间',
  `is_delete` int(11) DEFAULT '-1' COMMENT '-1未删除 1删除',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1818 DEFAULT CHARSET=utf8 COMMENT='--------前台用户表';

-- ----------------------------
-- Records of nk_user
-- ----------------------------
INSERT INTO `nk_user` VALUES ('60', '创文办01', '55cb49d1f24f273201deed2c149bc1e1', '', null, '1', '2', null, '1490768315', '1', '1493371914', '-1', '0');
INSERT INTO `nk_user` VALUES ('61', '创文办02', '55cb49d1f24f273201deed2c149bc1e1', '', null, '1', '2', null, '1490768315', '1', '1493686347', '-1', '0');
INSERT INTO `nk_user` VALUES ('62', '创文办03', '55cb49d1f24f273201deed2c149bc1e1', '15222898666', null, '1', '2', null, '1490768315', '1', '1492744432', '-1', '0');
INSERT INTO `nk_user` VALUES ('63', '创文办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '1', '2', null, '1490768315', '1', '1492755940', '-1', '0');
INSERT INTO `nk_user` VALUES ('64', '创文办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '1', '2', null, '1490768315', '1', '1492760140', '-1', '0');
INSERT INTO `nk_user` VALUES ('65', '区应急办01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '41', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('66', '区应急办02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '41', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('67', '区应急办03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '41', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('68', '区应急办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '41', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('69', '区应急办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '41', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('70', '区人防办01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '42', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('71', '区人防办02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '42', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('72', '区人防办03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '42', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('73', '区人防办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '42', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('74', '区人防办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '42', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('75', '区综治办01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '43', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('76', '区综治办02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '43', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('77', '区综治办03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '43', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('78', '区综治办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '43', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('79', '区综治办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '43', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('80', '委员单位01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '338', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('81', '委员单位02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '338', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('82', '委员单位03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '338', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('83', '委员单位04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '338', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('84', '委员单位05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '338', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('85', '区民政局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '44', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('86', '区民政局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '44', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('87', '区民政局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '44', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('88', '区民政局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '44', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('89', '区民政局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '44', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('90', '诚信体系建设攻关指挥部01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '2', '2', null, '1490768315', '1', '1492744220', '-1', '0');
INSERT INTO `nk_user` VALUES ('91', '诚信体系建设攻关指挥部02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '2', '2', null, '1490768315', '1', '1492511396', '-1', '0');
INSERT INTO `nk_user` VALUES ('92', '诚信体系建设攻关指挥部03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '2', '2', null, '1490768315', '1', '1492519061', '-1', '0');
INSERT INTO `nk_user` VALUES ('93', '诚信体系建设攻关指挥部04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '2', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('94', '诚信体系建设攻关指挥部05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '2', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('95', '区人力社保局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '45', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('96', '区人力社保局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '45', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('97', '区人力社保局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '45', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('98', '区人力社保局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '45', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('99', '区人力社保局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '45', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('100', '政务行为规范攻关指挥部01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '3', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('101', '政务行为规范攻关指挥部02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '3', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('102', '政务行为规范攻关指挥部03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '3', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('103', '政务行为规范攻关指挥部04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '3', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('104', '政务行为规范攻关指挥部05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '3', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('105', '区科委01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '46', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('106', '区科委02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '46', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('107', '区科委03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '46', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('108', '区科委04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '46', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('109', '区科委05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '46', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('110', '成员单位01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '337', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('111', '成员单位02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '337', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('112', '成员单位03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '337', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('113', '成员单位04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '337', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('114', '成员单位05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '337', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('115', '区体育局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '47', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('116', '区体育局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '47', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('117', '区体育局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '47', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('118', '区体育局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '47', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('119', '区体育局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '47', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('120', '治安管理与交通秩序攻关指挥部01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '4', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('121', '治安管理与交通秩序攻关指挥部02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '4', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('122', '治安管理与交通秩序攻关指挥部03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '4', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('123', '治安管理与交通秩序攻关指挥部04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '4', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('124', '治安管理与交通秩序攻关指挥部05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '4', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('125', '区民宗办01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '48', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('126', '区民宗办02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '48', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('127', '区民宗办03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '48', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('128', '区民宗办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '48', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('129', '区民宗办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '48', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('130', '民生保障和社区文化设施建设攻关指挥部01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '6', '2', null, '1490768315', '1', '1491723020', '-1', '0');
INSERT INTO `nk_user` VALUES ('131', '民生保障和社区文化设施建设攻关指挥部02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '6', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('132', '民生保障和社区文化设施建设攻关指挥部03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '6', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('133', '民生保障和社区文化设施建设攻关指挥部04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '6', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('134', '民生保障和社区文化设施建设攻关指挥部05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '6', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('135', '城西供电南开分公司01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '333', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('136', '城西供电南开分公司02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '333', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('137', '城西供电南开分公司03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '333', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('138', '城西供电南开分公司04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '333', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('139', '城西供电南开分公司05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '333', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('140', '区市容园林委', '55cb49d1f24f273201deed2c149bc1e1', null, null, '49', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('141', '区市容园林委', '55cb49d1f24f273201deed2c149bc1e1', null, null, '49', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('142', '区市容园林委', '55cb49d1f24f273201deed2c149bc1e1', null, null, '49', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('143', '区市容园林委', '55cb49d1f24f273201deed2c149bc1e1', null, null, '49', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('144', '区市容园林委', '55cb49d1f24f273201deed2c149bc1e1', null, null, '49', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('150', '团区委', '55cb49d1f24f273201deed2c149bc1e1', null, null, '50', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('151', '团区委', '55cb49d1f24f273201deed2c149bc1e1', null, null, '50', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('152', '团区委', '55cb49d1f24f273201deed2c149bc1e1', null, null, '50', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('153', '团区委', '55cb49d1f24f273201deed2c149bc1e1', null, null, '50', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('154', '团区委', '55cb49d1f24f273201deed2c149bc1e1', null, null, '50', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('155', '区体育局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '51', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('156', '区体育局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '51', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('157', '区体育局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '51', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('158', '区体育局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '51', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('159', '区体育局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '51', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('160', '未成年人思想道德建设攻关指挥部01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '10', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('161', '未成年人思想道德建设攻关指挥部02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '10', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('162', '未成年人思想道德建设攻关指挥部03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '10', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('163', '未成年人思想道德建设攻关指挥部04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '10', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('164', '未成年人思想道德建设攻关指挥部05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '10', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('165', '天津市公共交通三公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, null, '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('166', '天津市公共交通三公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, null, '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('167', '天津市公共交通三公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, null, '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('168', '天津市公共交通三公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, null, '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('169', '天津市公共交通三公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, null, '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('170', '区老干部局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '52', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('171', '区老干部局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '52', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('172', '区老干部局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '52', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('173', '区老干部局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '52', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('174', '区老干部局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '52', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('175', '区综合执法局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '53', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('176', '区综合执法局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '53', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('177', '区综合执法局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '53', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('178', '区综合执法局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '53', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('179', '区综合执法局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '53', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('180', '市场监管与公共文化服务体系建设攻关指挥部01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '11', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('181', '市场监管与公共文化服务体系建设攻关指挥部02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '11', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('182', '市场监管与公共文化服务体系建设攻关指挥部03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '11', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('183', '市场监管与公共文化服务体系建设攻关指挥部04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '11', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('184', '市场监管与公共文化服务体系建设攻关指挥部05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '11', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('185', '广电网络南开分公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, '331', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('186', '广电网络南开分公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, '331', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('187', '广电网络南开分公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, '331', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('188', '广电网络南开分公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, '331', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('189', '广电网络南开分公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, '331', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('190', '区环卫局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '54', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('191', '区环卫局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '54', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('192', '区环卫局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '54', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('193', '区环卫局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '54', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('194', '区环卫局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '54', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('195', '区司法局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '55', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('196', '区司法局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '55', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('197', '区司法局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '55', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('198', '区司法局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '55', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('199', '区司法局', '55cb49d1f24f273201deed2c149bc1e1', null, null, '55', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('200', '天津联通南开分公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, '330', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('201', '天津联通南开分公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, '330', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('202', '天津联通南开分公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, '330', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('203', '天津联通南开分公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, '330', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('204', '天津联通南开分公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, '330', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('205', '公共服务设施建设攻关指挥部01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '12', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('206', '公共服务设施建设攻关指挥部02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '12', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('207', '公共服务设施建设攻关指挥部03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '12', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('208', '公共服务设施建设攻关指挥部04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '12', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('209', '公共服务设施建设攻关指挥部05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '12', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('210', '区妇联', '55cb49d1f24f273201deed2c149bc1e1', null, null, '56', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('211', '区妇联', '55cb49d1f24f273201deed2c149bc1e1', null, null, '56', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('212', '区妇联', '55cb49d1f24f273201deed2c149bc1e1', null, null, '56', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('213', '区妇联', '55cb49d1f24f273201deed2c149bc1e1', null, null, '56', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('214', '区妇联', '55cb49d1f24f273201deed2c149bc1e1', null, null, '56', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('215', '区总工会', '55cb49d1f24f273201deed2c149bc1e1', null, null, '57', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('216', '区总工会', '55cb49d1f24f273201deed2c149bc1e1', null, null, '57', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('217', '区总工会', '55cb49d1f24f273201deed2c149bc1e1', null, null, '57', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('218', '区总工会', '55cb49d1f24f273201deed2c149bc1e1', null, null, '57', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('219', '区总工会', '55cb49d1f24f273201deed2c149bc1e1', null, null, '57', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('220', '区社区办', '55cb49d1f24f273201deed2c149bc1e1', null, null, '58', '2', null, '1490768315', '1', '1491042728', '-1', '0');
INSERT INTO `nk_user` VALUES ('221', '区社区办', '55cb49d1f24f273201deed2c149bc1e1', null, null, '58', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('222', '区社区办', '55cb49d1f24f273201deed2c149bc1e1', null, null, '58', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('223', '区社区办', '55cb49d1f24f273201deed2c149bc1e1', null, null, '58', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('224', '区社区办', '55cb49d1f24f273201deed2c149bc1e1', null, null, '58', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('225', '创建联络指挥部01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '13', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('226', '创建联络指挥部02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '13', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('227', '创建联络指挥部03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '13', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('228', '创建联络指挥部04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '13', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('229', '创建联络指挥部05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '13', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('230', '天津电信南开分公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, '329', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('231', '天津电信南开分公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, '329', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('232', '天津电信南开分公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, '329', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('233', '天津电信南开分公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, '329', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('234', '天津电信南开分公司', '55cb49d1f24f273201deed2c149bc1e1', null, null, '329', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('235', '区残联', '55cb49d1f24f273201deed2c149bc1e1', null, null, '59', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('236', '区残联', '55cb49d1f24f273201deed2c149bc1e1', null, null, '59', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('237', '区残联', '55cb49d1f24f273201deed2c149bc1e1', null, null, '59', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('238', '区残联', '55cb49d1f24f273201deed2c149bc1e1', null, null, '59', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('239', '区残联', '55cb49d1f24f273201deed2c149bc1e1', null, null, '59', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('240', '区新闻中心', '55cb49d1f24f273201deed2c149bc1e1', null, null, '60', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('241', '区新闻中心', '55cb49d1f24f273201deed2c149bc1e1', null, null, '60', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('242', '区新闻中心', '55cb49d1f24f273201deed2c149bc1e1', null, null, '60', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('243', '区新闻中心', '55cb49d1f24f273201deed2c149bc1e1', null, null, '60', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('244', '区新闻中心', '55cb49d1f24f273201deed2c149bc1e1', null, null, '60', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('246', '区红十字会01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '61', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('247', '区红十字会02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '61', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('248', '区红十字会03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '61', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('249', '区红十字会04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '61', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('250', '区红十字会05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '61', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('251', '区工信委01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '62', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('252', '区工信委02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '62', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('253', '区工信委03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '62', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('254', '区工信委04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '62', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('255', '区工信委05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '62', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('256', '区市政局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '63', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('257', '区市政局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '63', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('258', '区市政局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '63', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('259', '区市政局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '63', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('260', '区市政局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '63', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('261', '区行政审批局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '64', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('262', '区行政审批局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '64', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('263', '区行政审批局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '64', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('264', '区行政审批局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '64', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('265', '区行政审批局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '64', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('266', '区景区管理部门01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '65', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('267', '区景区管理部门02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '65', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('268', '区景区管理部门03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '65', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('269', '区景区管理部门04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '65', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('270', '区景区管理部门05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '65', '2', null, '1490768315', '1', '1491042694', '-1', '0');
INSERT INTO `nk_user` VALUES ('271', '区委统战部01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '66', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('272', '区委统战部02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '66', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('273', '区委统战部03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '66', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('274', '区委统战部04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '66', '2', null, '1490768315', '1', '1492515245', '-1', '0');
INSERT INTO `nk_user` VALUES ('275', '区委统战部05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '66', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('276', '官易里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '67', '2', null, '1490768315', '1', '1492514742', '-1', '0');
INSERT INTO `nk_user` VALUES ('277', '官易里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '67', '2', null, '1490768315', '1', '1492513383', '-1', '0');
INSERT INTO `nk_user` VALUES ('278', '官易里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '67', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('279', '官易里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '67', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('280', '官易里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '67', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('281', '跃升里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '68', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('282', '跃升里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '68', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('283', '跃升里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '68', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('284', '跃升里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '68', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('285', '跃升里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '68', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('286', '春畅里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '69', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('287', '春畅里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '69', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('288', '春畅里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '69', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('289', '春畅里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '69', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('290', '春畅里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '69', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('291', '宜君里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '70', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('292', '宜君里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '70', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('293', '宜君里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '70', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('294', '宜君里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '70', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('295', '宜君里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '70', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('296', '集园里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '71', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('297', '集园里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '71', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('298', '集园里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '71', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('299', '集园里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '71', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('300', '集园里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '71', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('301', '留园里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '72', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('302', '留园里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '72', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('303', '留园里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '72', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('304', '留园里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '72', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('305', '留园里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '72', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('306', '芥园中里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '73', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('307', '芥园中里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '73', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('308', '芥园中里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '73', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('309', '芥园中里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '73', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('310', '芥园中里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '73', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('311', '冶金里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '74', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('312', '冶金里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '74', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('313', '冶金里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '74', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('314', '冶金里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '74', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('315', '冶金里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '74', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('316', '云阳里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '75', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('317', '云阳里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '75', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('318', '云阳里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '75', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('319', '云阳里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '75', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('320', '云阳里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '75', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('321', '华阳里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '76', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('322', '华阳里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '76', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('323', '华阳里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '76', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('324', '华阳里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '76', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('325', '华阳里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '76', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('326', '向阳路社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '77', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('327', '向阳路社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '77', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('328', '向阳路社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '77', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('329', '向阳路社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '77', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('330', '向阳路社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '77', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('331', '战备楼社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '78', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('332', '战备楼社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '78', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('333', '战备楼社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '78', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('334', '战备楼社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '78', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('335', '战备楼社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '78', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('336', '昔阳里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '79', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('337', '昔阳里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '79', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('338', '昔阳里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '79', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('339', '昔阳里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '79', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('340', '昔阳里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '79', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('341', '延安楼社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '80', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('342', '延安楼社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '80', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('343', '延安楼社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '80', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('344', '延安楼社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '80', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('345', '延安楼社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '80', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('346', '延长里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '81', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('347', '延长里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '81', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('348', '延长里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '81', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('349', '延长里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '81', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('350', '延长里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '81', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('351', '瑞湾花园社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '82', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('352', '瑞湾花园社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '82', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('353', '瑞湾花园社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '82', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('354', '瑞湾花园社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '82', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('355', '瑞湾花园社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '82', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('356', '大园新居社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '83', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('357', '大园新居社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '83', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('358', '大园新居社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '83', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('359', '大园新居社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '83', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('360', '大园新居社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '83', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('361', '景园里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '84', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('362', '景园里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '84', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('363', '景园里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '84', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('364', '景园里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '84', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('365', '景园里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '84', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('366', '燕宇花园社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '85', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('367', '燕宇花园社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '85', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('368', '燕宇花园社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '85', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('369', '燕宇花园社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '85', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('370', '燕宇花园社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '85', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('371', '安华里社区社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '86', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('372', '安华里社区社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '86', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('373', '安华里社区社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '86', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('374', '安华里社区社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '86', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('375', '安华里社区社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '86', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('376', '居华里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '87', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('377', '居华里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '87', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('378', '居华里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '87', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('379', '居华里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '87', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('380', '居华里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '87', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('381', '莹华里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '88', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('382', '莹华里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '88', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('383', '莹华里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '88', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('384', '莹华里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '88', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('385', '莹华里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '88', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('386', '碧华里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '89', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('387', '碧华里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '89', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('388', '碧华里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '89', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('389', '碧华里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '89', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('390', '碧华里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '89', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('391', '绮华里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '90', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('392', '绮华里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '90', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('393', '绮华里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '90', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('394', '绮华里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '90', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('395', '绮华里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '90', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('396', '天华里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '91', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('397', '天华里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '91', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('398', '天华里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '91', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('399', '天华里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '91', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('400', '天华里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '91', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('401', '地华里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '92', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('402', '地华里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '92', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('403', '地华里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '92', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('404', '地华里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '92', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('405', '地华里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '92', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('406', '日华里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '93', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('407', '日华里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '93', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('408', '日华里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '93', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('409', '日华里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '93', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('410', '日华里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '93', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('411', '久华里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '94', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('412', '久华里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '94', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('413', '久华里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '94', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('414', '久华里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '94', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('415', '久华里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '94', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('416', '长华里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '95', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('417', '长华里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '95', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('418', '长华里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '95', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('419', '长华里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '95', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('420', '长华里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '95', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('421', '新城社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '96', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('422', '新城社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '96', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('423', '新城社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '96', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('424', '新城社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '96', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('425', '新城社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '96', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('426', '卫安中里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '97', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('427', '卫安中里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '97', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('428', '卫安中里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '97', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('429', '卫安中里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '97', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('430', '卫安中里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '97', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('431', '卫安西里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '98', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('432', '卫安西里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '98', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('433', '卫安西里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '98', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('434', '卫安西里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '98', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('435', '卫安西里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '98', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('436', '瑞德里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '99', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('437', '瑞德里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '99', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('438', '瑞德里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '99', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('439', '瑞德里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '99', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('440', '瑞德里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '99', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('441', '级升里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '100', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('442', '级升里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '100', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('443', '级升里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '100', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('444', '级升里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '100', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('445', '级升里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '100', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('446', '桦林园社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '101', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('447', '桦林园社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '101', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('448', '桦林园社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '101', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('449', '桦林园社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '101', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('450', '桦林园社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '101', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('451', '新丽里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '102', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('452', '新丽里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '102', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('453', '新丽里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '102', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('454', '新丽里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '102', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('455', '新丽里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '102', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('456', '朝园里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '103', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('457', '朝园里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '103', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('458', '朝园里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '103', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('459', '朝园里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '103', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('460', '朝园里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '103', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('461', '风荷天江社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '104', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('462', '风荷天江社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '104', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('463', '风荷天江社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '104', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('464', '风荷天江社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '104', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('465', '风荷天江社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '104', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('466', '格调春天社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '105', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('467', '格调春天社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '105', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('468', '格调春天社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '105', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('469', '格调春天社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '105', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('470', '格调春天社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '105', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('471', '颂禹里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '106', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('472', '颂禹里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '106', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('473', '颂禹里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '106', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('474', '颂禹里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '106', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('475', '颂禹里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '106', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('476', '康舜里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '107', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('477', '康舜里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '107', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('478', '康舜里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '107', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('479', '康舜里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '107', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('480', '康舜里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '107', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('481', '凯兴公寓社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '108', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('482', '凯兴公寓社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '108', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('483', '凯兴公寓社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '108', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('484', '凯兴公寓社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '108', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('485', '凯兴公寓社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '108', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('486', '宝龙湾社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '109', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('487', '宝龙湾社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '109', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('488', '宝龙湾社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '109', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('489', '宝龙湾社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '109', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('490', '宝龙湾社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '109', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('491', '五马路社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '110', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('492', '五马路社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '110', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('493', '五马路社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '110', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('494', '五马路社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '110', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('495', '五马路社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '110', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('496', '怀庆里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '111', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('497', '怀庆里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '111', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('498', '怀庆里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '111', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('499', '怀庆里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '111', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('500', '怀庆里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '111', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('501', '龙凤里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '112', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('502', '龙凤里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '112', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('503', '龙凤里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '112', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('504', '龙凤里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '112', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('505', '龙凤里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '112', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('506', '源德里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '113', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('507', '源德里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '113', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('508', '源德里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '113', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('509', '源德里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '113', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('510', '源德里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '113', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('511', '延生里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '114', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('512', '延生里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '114', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('513', '延生里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '114', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('514', '延生里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '114', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('515', '延生里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '114', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('516', '紫光苑社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '115', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('517', '紫光苑社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '115', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('518', '紫光苑社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '115', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('519', '紫光苑社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '115', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('520', '紫光苑社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '115', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('521', '耀远里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '116', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('522', '耀远里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '116', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('523', '耀远里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '116', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('524', '耀远里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '116', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('525', '耀远里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '116', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('526', '昆裕里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '117', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('527', '昆裕里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '117', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('528', '昆裕里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '117', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('529', '昆裕里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '117', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('530', '昆裕里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '117', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('531', '南马路社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '118', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('532', '南马路社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '118', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('533', '南马路社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '118', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('534', '南马路社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '118', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('535', '南马路社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '118', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('536', '天越园社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '119', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('537', '天越园社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '119', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('538', '天越园社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '119', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('539', '天越园社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '119', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('540', '天越园社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '119', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('541', '天霖园社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '120', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('542', '天霖园社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '120', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('543', '天霖园社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '120', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('544', '天霖园社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '120', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('545', '天霖园社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '120', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('546', '龙亭家园社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '121', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('547', '龙亭家园社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '121', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('548', '龙亭家园社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '121', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('549', '龙亭家园社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '121', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('550', '龙亭家园社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '121', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('551', '祥丰社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '122', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('552', '祥丰社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '122', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('553', '祥丰社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '122', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('554', '祥丰社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '122', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('555', '祥丰社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '122', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('556', '铜锣湾社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '123', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('557', '铜锣湾社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '123', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('558', '铜锣湾社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '123', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('559', '铜锣湾社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '123', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('560', '铜锣湾社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '123', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('561', '尚佳新苑社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '124', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('562', '尚佳新苑社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '124', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('563', '尚佳新苑社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '124', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('564', '尚佳新苑社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '124', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('565', '尚佳新苑社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '124', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('566', '后现代社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '125', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('567', '后现代社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '125', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('568', '后现代社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '125', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('569', '后现代社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '125', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('570', '后现代社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '125', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('571', '壹街区社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '126', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('572', '壹街区社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '126', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('573', '壹街区社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '126', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('574', '壹街区社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '126', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('575', '壹街区社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '126', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('576', '海河社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '127', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('577', '海河社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '127', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('578', '海河社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '127', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('579', '海河社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '127', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('580', '海河社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '127', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('581', '荣迁里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '128', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('582', '荣迁里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '128', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('583', '荣迁里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '128', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('584', '荣迁里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '128', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('585', '荣迁里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '128', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('586', '临园里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '129', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('587', '临园里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '129', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('588', '临园里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '129', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('589', '临园里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '129', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('590', '临园里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '129', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('591', '复康里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '130', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('592', '复康里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '130', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('593', '复康里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '130', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('594', '复康里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '130', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('595', '复康里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '130', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('596', '近园里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '131', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('597', '近园里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '131', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('598', '近园里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '131', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('599', '近园里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '131', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('600', '近园里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '131', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('601', '宁福里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '132', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('602', '宁福里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '132', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('603', '宁福里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '132', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('604', '宁福里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '132', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('605', '宁福里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '132', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('606', '观景里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '133', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('607', '观景里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '133', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('608', '观景里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '133', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('609', '观景里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '133', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('610', '观景里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '133', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('611', '观园里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '134', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('612', '观园里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '134', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('613', '观园里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '134', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('614', '观园里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '134', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('615', '观园里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '134', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('616', '红医里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '135', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('617', '红医里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '135', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('618', '红医里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '135', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('619', '红医里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '135', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('620', '红医里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '135', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('621', '水上公寓社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '136', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('622', '水上公寓社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '136', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('623', '水上公寓社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '136', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('624', '水上公寓社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '136', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('625', '水上公寓社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '136', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('626', '欣苑公寓社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '137', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('627', '欣苑公寓社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '137', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('628', '欣苑公寓社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '137', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('629', '欣苑公寓社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '137', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('630', '欣苑公寓社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '137', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('631', '长江里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '138', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('632', '长江里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '138', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('633', '长江里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '138', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('634', '长江里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '138', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('635', '长江里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '138', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('636', '长宁里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '139', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('637', '长宁里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '139', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('638', '长宁里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '139', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('639', '长宁里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '139', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('640', '长宁里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '139', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('641', '风荷园社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '140', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('642', '风荷园社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '140', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('643', '风荷园社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '140', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('644', '风荷园社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '140', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('645', '风荷园社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '140', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('646', '华章里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '141', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('647', '华章里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '141', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('648', '华章里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '141', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('649', '华章里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '141', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('650', '华章里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '141', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('651', '佳音里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '142', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('652', '佳音里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '142', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('653', '佳音里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '142', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('654', '佳音里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '142', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('655', '佳音里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '142', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('656', '龙德里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '143', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('657', '龙德里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '143', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('658', '龙德里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '143', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('659', '龙德里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '143', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('660', '龙德里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '143', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('661', '龙井里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '144', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('662', '龙井里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '144', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('663', '龙井里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '144', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('664', '龙井里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '144', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('665', '龙井里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '144', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('666', '南丰里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '145', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('667', '南丰里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '145', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('668', '南丰里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '145', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('669', '南丰里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '145', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('670', '南丰里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '145', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('671', '三潭东社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '146', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('672', '三潭东社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '146', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('673', '三潭东社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '146', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('674', '三潭东社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '146', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('675', '三潭东社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '146', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('676', '三潭西社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '147', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('677', '三潭西社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '147', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('678', '三潭西社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '147', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('679', '三潭西社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '147', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('680', '三潭西社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '147', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('681', '双峰里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '148', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('682', '双峰里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '148', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('683', '双峰里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '148', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('684', '双峰里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '148', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('685', '双峰里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '148', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('686', '苏堤路社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '149', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('687', '苏堤路社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '149', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('688', '苏堤路社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '149', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('689', '苏堤路社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '149', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('690', '苏堤路社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '149', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('691', '天大北五村01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '150', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('692', '天大北五村02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '150', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('693', '天大北五村03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '150', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('694', '天大北五村04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '150', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('695', '天大北五村05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '150', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('696', '天环里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '151', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('697', '天环里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '151', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('698', '天环里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '151', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('699', '天环里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '151', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('700', '天环里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '151', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('701', '同富社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '152', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('702', '同富社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '152', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('703', '同富社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '152', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('704', '同富社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '152', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('705', '同富社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '152', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('706', '卧龙社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '153', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('707', '卧龙社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '153', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('708', '卧龙社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '153', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('709', '卧龙社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '153', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('710', '卧龙社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '153', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('711', '兴泰路社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '154', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('712', '兴泰路社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '154', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('713', '兴泰路社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '154', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('714', '兴泰路社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '154', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('715', '兴泰路社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '154', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('716', '义兴里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '155', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('717', '义兴里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '155', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('718', '义兴里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '155', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('719', '义兴里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '155', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('720', '义兴里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '155', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('721', '玉皇里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '156', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('722', '玉皇里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '156', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('723', '玉皇里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '156', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('724', '玉皇里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '156', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('725', '玉皇里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '156', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('726', '玉泉北社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '157', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('727', '玉泉北社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '157', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('728', '玉泉北社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '157', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('729', '玉泉北社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '157', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('730', '玉泉北社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '157', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('731', '玉泉里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '158', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('732', '玉泉里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '158', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('733', '玉泉里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '158', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('734', '玉泉里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '158', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('735', '玉泉里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '158', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('736', '紫云里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '159', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('737', '紫云里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '159', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('738', '紫云里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '159', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('739', '紫云里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '159', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('740', '紫云里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '159', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('741', '东王台社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '160', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('742', '东王台社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '160', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('743', '东王台社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '160', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('744', '东王台社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '160', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('745', '东王台社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '160', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('746', '建华里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '161', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('747', '建华里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '161', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('748', '建华里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '161', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('749', '建华里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '161', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('750', '建华里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '161', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('751', '翰园里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '162', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('752', '翰园里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '162', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('753', '翰园里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '162', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('754', '翰园里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '162', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('755', '翰园里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '162', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('756', '光明路社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '163', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('757', '光明路社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '163', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('758', '光明路社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '163', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('759', '光明路社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '163', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('760', '光明路社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '163', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('761', '平陆东社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '164', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('762', '平陆东社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '164', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('763', '平陆东社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '164', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('764', '平陆东社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '164', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('765', '平陆东社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '164', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('766', '雅园里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '165', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('767', '雅园里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '165', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('768', '雅园里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '165', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('769', '雅园里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '165', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('770', '雅园里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '165', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('771', '雅云里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '166', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('772', '雅云里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '166', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('773', '雅云里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '166', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('774', '雅云里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '166', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('775', '雅云里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '166', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('776', '广灵里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '167', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('777', '广灵里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '167', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('778', '广灵里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '167', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('779', '广灵里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '167', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('780', '广灵里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '167', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('781', '幸福南社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '168', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('782', '幸福南社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '168', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('783', '幸福南社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '168', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('784', '幸福南社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '168', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('785', '幸福南社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '168', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('786', '芙蓉南里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '169', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('787', '芙蓉南里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '169', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('788', '芙蓉南里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '169', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('789', '芙蓉南里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '169', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('790', '芙蓉南里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '169', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('791', '华美里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '170', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('792', '华美里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '170', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('793', '华美里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '170', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('794', '华美里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '170', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('795', '华美里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '170', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('796', '雅美里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '171', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('797', '雅美里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '171', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('798', '雅美里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '171', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('799', '雅美里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '171', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('800', '雅美里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '171', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('801', '盛达园社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '172', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('802', '盛达园社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '172', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('803', '盛达园社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '172', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('804', '盛达园社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '172', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('805', '盛达园社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '172', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('806', '嘉陵北里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '173', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('807', '嘉陵北里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '173', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('808', '嘉陵北里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '173', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('809', '嘉陵北里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '173', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('810', '嘉陵北里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '173', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('811', '罗江里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '174', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('812', '罗江里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '174', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('813', '罗江里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '174', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('814', '罗江里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '174', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('815', '罗江里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '174', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('816', '南江西里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '175', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('817', '南江西里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '175', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('818', '南江西里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '175', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('819', '南江西里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '175', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('820', '南江西里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '175', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('821', '雅安东里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '176', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('822', '雅安东里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '176', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('823', '雅安东里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '176', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('824', '雅安东里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '176', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('825', '雅安东里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '176', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('826', '宜宾东里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '177', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('827', '宜宾东里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '177', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('828', '宜宾东里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '177', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('829', '宜宾东里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '177', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('830', '宜宾东里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '177', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('831', '川南里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '178', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('832', '川南里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '178', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('833', '川南里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '178', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('834', '川南里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '178', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('835', '川南里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '178', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('836', '泊江里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '179', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('837', '泊江里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '179', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('838', '泊江里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '179', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('839', '泊江里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '179', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('840', '泊江里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '179', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('841', '桂荷园社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '180', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('842', '桂荷园社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '180', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('843', '桂荷园社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '180', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('844', '桂荷园社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '180', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('845', '桂荷园社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '180', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('846', '汶川里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '181', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('847', '汶川里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '181', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('848', '汶川里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '181', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('849', '汶川里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '181', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('850', '汶川里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '181', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('851', '咸阳里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '182', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('852', '咸阳里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '182', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('853', '咸阳里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '182', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('854', '咸阳里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '182', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('855', '咸阳里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '182', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('856', '云龙里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '183', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('857', '云龙里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '183', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('858', '云龙里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '183', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('859', '云龙里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '183', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('860', '云龙里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '183', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('861', '宜宾西里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '184', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('862', '宜宾西里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '184', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('863', '宜宾西里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '184', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('864', '宜宾西里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '184', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('865', '宜宾西里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '184', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('866', '金川里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '185', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('867', '金川里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '185', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('868', '金川里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '185', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('869', '金川里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '185', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('870', '金川里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '185', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('871', '南江东里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '186', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('872', '南江东里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '186', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('873', '南江东里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '186', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('874', '南江东里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '186', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('875', '南江东里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '186', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('876', '易川里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '187', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('877', '易川里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '187', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('878', '易川里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '187', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('879', '易川里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '187', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('880', '易川里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '187', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('881', '雅安西里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '188', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('882', '雅安西里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '188', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('883', '雅安西里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '188', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('884', '雅安西里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '188', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('885', '雅安西里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '188', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('886', '淦江里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '189', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('887', '淦江里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '189', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('888', '淦江里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '189', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('889', '淦江里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '189', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('890', '淦江里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '189', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('891', '昌宁里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '190', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('892', '昌宁里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '190', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('893', '昌宁里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '190', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('894', '昌宁里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '190', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('895', '昌宁里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '190', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('896', '保山南里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '191', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('897', '保山南里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '191', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('898', '保山南里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '191', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('899', '保山南里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '191', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('900', '保山南里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '191', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('901', '保山北里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '192', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('902', '保山北里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '192', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('903', '保山北里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '192', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('904', '保山北里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '192', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('905', '保山北里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '192', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('906', '华宁南里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '193', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('907', '华宁南里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '193', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('908', '华宁南里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '193', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('909', '华宁南里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '193', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('910', '华宁南里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '193', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('911', '华宁北里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '194', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('912', '华宁北里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '194', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('913', '华宁北里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '194', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('914', '华宁北里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '194', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('915', '华宁北里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '194', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('916', '横江里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '195', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('917', '横江里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '195', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('918', '横江里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '195', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('919', '横江里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '195', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('920', '横江里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '195', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('921', '盈江东里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '196', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('922', '盈江东里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '196', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('923', '盈江东里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '196', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('924', '盈江东里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '196', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('925', '盈江东里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '196', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('926', '盈江西里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '197', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('927', '盈江西里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '197', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('928', '盈江西里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '197', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('929', '盈江西里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '197', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('930', '盈江西里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '197', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('931', '金环里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '198', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('932', '金环里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '198', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('933', '金环里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '198', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('934', '金环里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '198', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('935', '金环里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '198', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('936', '金典花园社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '199', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('937', '金典花园社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '199', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('938', '金典花园社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '199', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('939', '金典花园社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '199', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('940', '金典花园社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '199', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('941', '金冠里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '200', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('942', '金冠里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '200', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('943', '金冠里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '200', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('944', '金冠里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '200', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('945', '金冠里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '200', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('946', '迎水里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '201', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('947', '迎水里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '201', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('948', '迎水里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '201', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('949', '迎水里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '201', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('950', '迎水里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '201', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('951', '园荫里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '202', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('952', '园荫里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '202', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('953', '园荫里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '202', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('954', '园荫里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '202', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('955', '园荫里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '202', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('956', '林苑东里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '203', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('957', '林苑东里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '203', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('958', '林苑东里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '203', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('959', '林苑东里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '203', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('960', '林苑东里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '203', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('961', '林苑西里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '204', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('962', '林苑西里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '204', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('963', '林苑西里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '204', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('964', '林苑西里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '204', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('965', '林苑西里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '204', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('966', '林苑北里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '205', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('967', '林苑北里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '205', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('968', '林苑北里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '205', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('969', '林苑北里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '205', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('970', '林苑北里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '205', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('971', '凤园南里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '206', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('972', '凤园南里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '206', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('973', '凤园南里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '206', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('974', '凤园南里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '206', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('975', '凤园南里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '206', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('976', '凤园北里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '207', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('977', '凤园北里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '207', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('978', '凤园北里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '207', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('979', '凤园北里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '207', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('980', '凤园北里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '207', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('981', '迎风里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '208', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('982', '迎风里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '208', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('983', '迎风里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '208', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('984', '迎风里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '208', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('985', '迎风里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '208', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('986', '鹤园北里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '209', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('987', '鹤园北里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '209', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('988', '鹤园北里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '209', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('989', '鹤园北里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '209', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('990', '鹤园北里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '209', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('991', '金厦里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '210', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('992', '金厦里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '210', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('993', '金厦里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '210', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('994', '金厦里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '210', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('995', '金厦里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '210', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('996', '美云里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '211', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('997', '美云里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '211', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('998', '美云里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '211', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('999', '美云里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '211', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1000', '美云里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '211', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1001', '学湖里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '212', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1002', '学湖里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '212', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1003', '学湖里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '212', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1004', '学湖里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '212', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1005', '学湖里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '212', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1006', '风湖里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '213', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1007', '风湖里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '213', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1008', '风湖里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '213', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1009', '风湖里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '213', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1010', '风湖里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '213', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1011', '美湖里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '214', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1012', '美湖里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '214', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1013', '美湖里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '214', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1014', '美湖里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '214', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1015', '美湖里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '214', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1016', '航天北里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '215', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1017', '航天北里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '215', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1018', '航天北里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '215', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1019', '航天北里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '215', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1020', '航天北里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '215', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1021', '南大西南一社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '216', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1022', '南大西南一社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '216', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1023', '南大西南一社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '216', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1024', '南大西南一社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '216', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1025', '南大西南一社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '216', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1026', '南大西南二社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '217', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1027', '南大西南二社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '217', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1028', '南大西南二社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '217', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1029', '南大西南二社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '217', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1030', '南大西南二社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '217', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1031', '新园村社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '218', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1032', '新园村社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '218', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1033', '新园村社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '218', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1034', '新园村社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '218', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1035', '新园村社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '218', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1036', '月环里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '219', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1037', '月环里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '219', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1038', '月环里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '219', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1039', '月环里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '219', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1040', '月环里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '219', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1046', '照湖里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '221', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1047', '照湖里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '221', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1048', '照湖里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '221', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1049', '照湖里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '221', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1050', '照湖里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '221', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1051', '天大六村社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '222', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1052', '天大六村社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '222', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1053', '天大六村社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '222', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1054', '天大六村社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '222', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1055', '天大六村社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '222', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1056', '龙兴里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '223', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1057', '龙兴里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '223', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1058', '龙兴里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '223', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1059', '龙兴里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '223', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1060', '龙兴里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '223', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1061', '府湖里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '224', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1062', '府湖里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '224', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1063', '府湖里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '224', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1064', '府湖里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '224', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1065', '府湖里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '224', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1066', '荣迁西里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '225', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1067', '荣迁西里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '225', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1068', '荣迁西里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '225', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1069', '荣迁西里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '225', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1070', '荣迁西里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '225', '2', null, '1490768315', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1071', '俊城浅水湾社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '226', '2', null, '1490768315', '1', '1492518092', '-1', null);
INSERT INTO `nk_user` VALUES ('1072', '俊城浅水湾社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '226', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1073', '俊城浅水湾社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '226', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1074', '俊城浅水湾社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '226', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1075', '俊城浅水湾社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '226', '2', null, '1490768315', '1', '1492504232', '-1', null);
INSERT INTO `nk_user` VALUES ('1076', '宁乐里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '227', '2', null, '1490768315', '1', '1492520392', '-1', null);
INSERT INTO `nk_user` VALUES ('1077', '宁乐里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '227', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1078', '宁乐里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '227', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1079', '宁乐里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '227', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1080', '宁乐里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '227', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1081', '津涞花园社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '228', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1082', '津涞花园社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '228', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1083', '津涞花园社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '228', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1084', '津涞花园社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '228', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1085', '津涞花园社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '228', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1086', '凌研里社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '229', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1087', '凌研里社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '229', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1088', '凌研里社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '229', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1089', '凌研里社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '229', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1090', '凌研里社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '229', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1091', '金谷园社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '230', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1092', '金谷园社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '230', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1093', '金谷园社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '230', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1094', '金谷园社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '230', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1095', '金谷园社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '230', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1096', '阳光壹佰社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '231', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1097', '阳光壹佰社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '231', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1098', '阳光壹佰社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '231', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1099', '阳光壹佰社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '231', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1100', '阳光壹佰社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '231', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1101', '仁爱豪景社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '232', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1102', '仁爱豪景社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '232', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1103', '仁爱豪景社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '232', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1104', '仁爱豪景社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '232', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1105', '仁爱豪景社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '232', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1106', '时代奥城社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '233', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1107', '时代奥城社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '233', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1108', '时代奥城社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '233', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1109', '时代奥城社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '233', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1110', '时代奥城社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '233', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1111', '宁发阳光公寓社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '234', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1112', '宁发阳光公寓社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '234', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1113', '宁发阳光公寓社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '234', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1114', '宁发阳光公寓社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '234', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1115', '宁发阳光公寓社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '234', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1116', '星城社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '235', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1117', '星城社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '235', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1118', '星城社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '235', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1119', '星城社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '235', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1120', '星城社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '235', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1121', '龙滨园社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '236', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1122', '龙滨园社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '236', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1123', '龙滨园社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '236', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1124', '龙滨园社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '236', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1125', '龙滨园社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '236', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1126', '金禧园社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '237', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1127', '金禧园社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '237', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1128', '金禧园社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '237', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1129', '金禧园社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '237', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1130', '金禧园社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '237', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1131', '区人大办公室01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '252', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1132', '区人大办公室02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '252', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1133', '区人大办公室03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '252', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1134', '区人大办公室04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '252', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1135', '区人大办公室05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '252', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1136', '区政府办公室01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '253', '2', null, '1490768315', '1', '1491721830', '-1', null);
INSERT INTO `nk_user` VALUES ('1137', '区政府办公室02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '253', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1138', '区政府办公室03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '253', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1139', '区政府办公室04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '253', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1140', '区政府办公室05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '253', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1141', '区政协办公室01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '254', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1142', '区政协办公室02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '254', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1143', '区政协办公室03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '254', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1144', '区政协办公室04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '254', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1145', '区政协办公室05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '254', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1146', '区委研究室01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '255', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1147', '区委研究室02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '255', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1148', '区委研究室03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '255', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1149', '区委研究室04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '255', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1150', '区委研究室05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '255', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1151', '区政府研究室01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '256', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1152', '区政府研究室02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '256', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1153', '区政府研究室03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '256', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1154', '区政府研究室04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '256', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1155', '区政府研究室05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '256', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1156', '党史研究室01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '257', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1157', '党史研究室02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '257', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1158', '党史研究室03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '257', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1159', '党史研究室04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '257', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1160', '党史研究室05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '257', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1161', '区委组织部01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '258', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1162', '区委组织部02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '258', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1163', '区委组织部03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '258', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1164', '区委组织部04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '258', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1165', '区委组织部05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '258', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1166', '区委宣传部01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '259', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1167', '区委宣传部02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '259', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1168', '区委宣传部03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '259', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1169', '区委宣传部04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '259', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1170', '区委宣传部05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '259', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1171', '区委政法委01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '260', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1172', '区委政法委02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '260', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1173', '区委政法委03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '260', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1174', '区委政法委04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '260', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1175', '区委政法委05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '260', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1176', '区委统战部01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '261', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1177', '区委统战部02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '261', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1178', '区委统战部03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '261', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1179', '区委统战部04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '261', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1180', '区委统战部05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '261', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1181', '区网信办01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '262', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1182', '区网信办02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '262', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1183', '区网信办03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '262', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1184', '区网信办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '262', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1185', '区网信办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '262', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1186', '区台办01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '263', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1187', '区台办02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '263', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1188', '区台办03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '263', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1189', '区台办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '263', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1190', '区台办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '263', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1191', '区委党校01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '264', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1192', '区委党校02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '264', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1193', '区委党校03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '264', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1194', '区委党校04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '264', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1195', '区委党校05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '264', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1196', '区级机关工委01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '265', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1197', '区级机关工委02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '265', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1198', '区级机关工委03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '265', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1199', '区级机关工委04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '265', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1200', '区级机关工委05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '265', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1201', '区档案局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '266', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1202', '区档案局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '266', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1203', '区档案局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '266', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1204', '区档案局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '266', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1205', '区档案局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '266', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1206', '区新闻中心01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '267', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1207', '区新闻中心02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '267', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1208', '区新闻中心03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '267', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1209', '区新闻中心04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '267', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1210', '区新闻中心05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '267', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1211', '区工商联01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '268', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1212', '区工商联02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '268', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1213', '区工商联03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '268', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1214', '区工商联04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '268', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1215', '区工商联05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '268', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1216', '区总工会01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '269', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1217', '区总工会02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '269', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1218', '区总工会03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '269', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1219', '区总工会04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '269', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1220', '区总工会05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '269', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1221', '团区委01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '270', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1222', '团区委02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '270', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1223', '团区委03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '270', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1224', '团区委04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '270', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1225', '团区委05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '270', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1226', '区法院01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '271', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1227', '区法院02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '271', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1228', '区法院03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '271', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1229', '区法院04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '271', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1230', '区法院05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '271', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1231', '区检察院01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '272', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1232', '区检察院02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '272', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1233', '区检察院03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '272', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1234', '区检察院04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '272', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1235', '区检察院05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '272', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1236', '区人武部01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '273', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1237', '区人武部02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '273', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1238', '区人武部03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '273', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1239', '区人武部04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '273', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1240', '区人武部05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '273', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1241', '规划南开分局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '274', '2', null, '1490768315', '1', '1492517090', '-1', null);
INSERT INTO `nk_user` VALUES ('1242', '规划南开分局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '274', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1243', '规划南开分局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '274', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1244', '规划南开分局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '274', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1245', '规划南开分局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '274', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1246', '科技园管委会01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '275', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1247', '科技园管委会02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '275', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1248', '科技园管委会03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '275', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1249', '科技园管委会04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '275', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1250', '科技园管委会05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '275', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1251', '区市容园林委01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '276', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1252', '区市容园林委02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '276', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1253', '区市容园林委03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '276', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1254', '区市容园林委04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '276', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1255', '区市容园林委05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '276', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1256', '区国资委01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '277', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1257', '区国资委02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '277', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1258', '区国资委03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '277', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1259', '区国资委04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '277', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1260', '区国资委05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '277', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1261', '区编办01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '278', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1262', '区编办02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '278', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1263', '区编办03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '278', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1264', '区编办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '278', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1265', '区编办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '278', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1266', '区房管局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '279', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1267', '区房管局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '279', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1268', '区房管局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '279', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1269', '区房管局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '279', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1270', '区房管局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '279', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1271', '区体育局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '280', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1272', '区体育局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '280', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1273', '区体育局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '280', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1274', '区体育局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '280', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1275', '区体育局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '280', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1276', '区综合执法局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '281', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1277', '区综合执法局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '281', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1278', '区综合执法局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '281', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1279', '区综合执法局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '281', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1280', '区综合执法局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '281', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1281', '区安监局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '282', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1282', '区安监局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '282', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1283', '区安监局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '282', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1284', '区安监局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '282', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1285', '区安监局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '282', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1286', '区法制办01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '283', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1287', '区法制办02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '283', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1288', '区法制办03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '283', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1289', '区法制办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '283', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1290', '区法制办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '283', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1291', '区招商合作交流办01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '284', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1292', '区招商合作交流办02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '284', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1293', '区招商合作交流办03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '284', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1294', '区招商合作交流办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '284', '2', null, '1490768315', '1', '1492515125', '-1', null);
INSERT INTO `nk_user` VALUES ('1295', '区招商合作交流办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '284', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1296', '区人防办01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '285', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1297', '区人防办02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '285', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1298', '区人防办03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '285', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1299', '区人防办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '285', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1300', '区人防办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '285', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1301', '区信访办01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '286', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1302', '区信访办02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '286', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1303', '区信访办03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '286', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1304', '区信访办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '286', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1305', '区信访办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '286', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1306', '区金融办01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '287', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1307', '区金融办02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '287', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1308', '区金融办03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '287', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1309', '区金融办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '287', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1310', '区金融办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '287', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1311', '服装街管委会01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '288', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1312', '服装街管委会02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '288', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1313', '服装街管委会03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '288', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1314', '服装街管委会04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '288', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1315', '服装街管委会05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '288', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1316', '区残联01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '289', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1317', '区残联02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '289', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1318', '区残联03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '289', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1319', '区残联04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '289', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1320', '区残联05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '289', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1321', '区红十字会01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '290', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1322', '区红十字会02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '290', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1323', '区红十字会03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '290', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1324', '区红十字会04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '290', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1325', '区红十字会05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '290', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1326', '区文联01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '291', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1327', '区文联02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '291', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1328', '区文联03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '291', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1329', '区文联04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '291', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1330', '区文联05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '291', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1331', '天津中医药大学第一附属医院01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '292', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1332', '天津中医药大学第一附属医院02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '292', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1333', '天津中医药大学第一附属医院03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '292', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1334', '天津中医药大学第一附属医院04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '292', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1335', '天津中医药大学第一附属医院05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '292', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1336', '天津市第一中心医院01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '293', '2', null, '1490768315', '1', '1492520484', '-1', null);
INSERT INTO `nk_user` VALUES ('1337', '天津市第一中心医院02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '293', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1338', '天津市第一中心医院03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '293', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1339', '天津市第一中心医院04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '293', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1340', '天津市第一中心医院05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '293', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1341', '天津市中心妇产科医院01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '294', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1342', '天津市中心妇产科医院02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '294', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1343', '天津市中心妇产科医院03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '294', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1344', '天津市中心妇产科医院04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '294', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1345', '天津市中心妇产科医院05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '294', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1346', '天津市传染病医院01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '295', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1347', '天津市传染病医院02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '295', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1348', '天津市传染病医院03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '295', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1349', '天津市传染病医院04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '295', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1350', '天津市传染病医院05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '295', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1351', '南开医院01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '296', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1352', '南开医院02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '296', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1353', '南开医院03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '296', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1354', '南开医院04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '296', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1355', '南开医院05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '296', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1356', '中国人民解放军第四六四医院01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '297', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1357', '中国人民解放军第四六四医院02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '297', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1358', '中国人民解放军第四六四医院03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '297', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1359', '中国人民解放军第四六四医院04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '297', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1360', '中国人民解放军第四六四医院05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '297', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1361', '天津市第二人民医院01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '298', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1362', '天津市第二人民医院02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '298', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1363', '天津市第二人民医院03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '298', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1364', '天津市第二人民医院04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '298', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1365', '天津市第二人民医院05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '298', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1366', '南开大学01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '299', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1367', '南开大学02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '299', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1368', '南开大学03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '299', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1369', '南开大学04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '299', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1370', '南开大学05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '299', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1371', '天津大学01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '300', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1372', '天津大学02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '300', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1373', '天津大学03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '300', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1374', '天津大学04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '300', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1375', '天津大学05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '300', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1376', '天大四季村社区01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '220', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1377', '天大四季村社区02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '220', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1378', '天大四季村社区03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '220', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1379', '天大四季村社区04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '220', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1380', '天大四季村社区05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '220', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1381', '天津中医药大学01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '301', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1382', '天津中医药大学02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '301', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1383', '天津中医药大学03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '301', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1384', '天津中医药大学04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '301', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1385', '天津中医药大学05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '301', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1386', '天津市南开中学01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '302', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1387', '天津市南开中学02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '302', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1388', '天津市南开中学03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '302', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1389', '天津市南开中学04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '302', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1390', '天津市南开中学05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '302', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1391', '天津市天津中学01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '303', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1392', '天津市天津中学02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '303', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1393', '天津市天津中学03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '303', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1394', '天津市天津中学04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '303', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1395', '天津市天津中学05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '303', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1396', '天津市幼儿师范学校01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '304', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1397', '天津市幼儿师范学校02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '304', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1398', '天津市幼儿师范学校03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '304', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1399', '天津市幼儿师范学校04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '304', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1400', '天津市幼儿师范学校05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '304', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1401', '天津市社会主义学院01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '305', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1402', '天津市社会主义学院02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '305', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1403', '天津市社会主义学院03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '305', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1404', '天津市社会主义学院04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '305', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1405', '天津市社会主义学院05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '305', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1406', '天津广播电视大学01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '306', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1407', '天津广播电视大学02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '306', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1408', '天津广播电视大学03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '306', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1409', '天津广播电视大学04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '306', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1410', '天津广播电视大学05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '306', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1411', '天津艺术职业学院01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '307', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1412', '天津艺术职业学院02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '307', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1413', '天津艺术职业学院03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '307', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1414', '天津艺术职业学院04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '307', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1415', '天津艺术职业学院05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '307', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1416', '海河剧院01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '308', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1417', '海河剧院02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '308', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1418', '海河剧院03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '308', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1419', '海河剧院04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '308', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1420', '海河剧院05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '308', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1421', '天津戏剧博物馆和文庙博物馆管理办公室01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '309', '2', null, '1490768315', '1', '1492514342', '-1', null);
INSERT INTO `nk_user` VALUES ('1422', '天津戏剧博物馆和文庙博物馆管理办公室02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '309', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1423', '天津戏剧博物馆和文庙博物馆管理办公室03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '309', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1424', '天津戏剧博物馆和文庙博物馆管理办公室04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '309', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1425', '天津戏剧博物馆和文庙博物馆管理办公室05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '309', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1426', '天津市古文化街管委会01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '310', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1427', '天津市古文化街管委会02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '310', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1428', '天津市古文化街管委会03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '310', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1429', '天津市古文化街管委会04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '310', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1430', '天津市古文化街管委会05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '310', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1431', '天津市图书馆01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '311', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1432', '天津市图书馆02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '311', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1433', '天津市图书馆03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '311', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1434', '天津市图书馆04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '311', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1435', '天津市图书馆05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '311', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1436', '周恩来邓颖超纪念馆01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '312', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1437', '周恩来邓颖超纪念馆02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '312', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1438', '周恩来邓颖超纪念馆03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '312', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1439', '周恩来邓颖超纪念馆04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '312', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1440', '周恩来邓颖超纪念馆05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '312', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1441', '天津网球中心01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '313', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1442', '天津网球中心02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '313', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1443', '天津网球中心03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '313', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1444', '天津网球中心04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '313', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1445', '天津网球中心05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '313', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1446', '天津市游泳运动中心01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '314', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1447', '天津市游泳运动中心02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '314', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1448', '天津市游泳运动中心03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '314', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1449', '天津市游泳运动中心04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '314', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1450', '天津市游泳运动中心05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '314', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1451', '天津奥林匹克中心体育场01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '315', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1452', '天津奥林匹克中心体育场02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '315', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1453', '天津奥林匹克中心体育场03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '315', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1454', '天津奥林匹克中心体育场04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '315', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1455', '天津奥林匹克中心体育场05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '315', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1456', '天津体育馆01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '316', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1457', '天津体育馆02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '316', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1458', '天津体育馆03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '316', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1459', '天津体育馆04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '316', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1460', '天津体育馆05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '316', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1461', '天津市水上公园（动物园）01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '317', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1462', '天津市水上公园（动物园）02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '317', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1463', '天津市水上公园（动物园）03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '317', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1464', '天津市水上公园（动物园）04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '317', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1465', '天津市水上公园（动物园）05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '317', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1466', '天津市南翠屏公园管理所01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '318', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1467', '天津市南翠屏公园管理所02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '318', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1468', '天津市南翠屏公园管理所03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '318', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1469', '天津市南翠屏公园管理所04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '318', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1470', '天津市南翠屏公园管理所05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '318', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1471', '天津市社会保险中心南开分中心01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '319', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1472', '天津市社会保险中心南开分中心02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '319', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1473', '天津市社会保险中心南开分中心03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '319', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1474', '天津市社会保险中心南开分中心04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '319', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1475', '天津市社会保险中心南开分中心05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '319', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1476', '天津市住房公积金管理中心南开分理部01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '320', '2', null, '1490768315', '1', '1492517132', '-1', null);
INSERT INTO `nk_user` VALUES ('1477', '天津市住房公积金管理中心南开分理部02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '320', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1478', '天津市住房公积金管理中心南开分理部03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '320', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1479', '天津市住房公积金管理中心南开分理部04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '320', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1480', '天津市住房公积金管理中心南开分理部05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '320', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1481', '天津市血液中心01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '321', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1482', '天津市血液中心02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '321', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1483', '天津市血液中心03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '321', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1484', '天津市血液中心04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '321', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1485', '天津市血液中心05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '321', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1486', '天津市大中专毕业生就业指导中心01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '322', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1487', '天津市大中专毕业生就业指导中心02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '322', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1488', '天津市大中专毕业生就业指导中心03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '322', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1489', '天津市大中专毕业生就业指导中心04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '322', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1490', '天津市大中专毕业生就业指导中心05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '322', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1491', '天津市燃气集团有限公司01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '323', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1492', '天津市燃气集团有限公司02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '323', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1493', '天津市燃气集团有限公司03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '323', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1494', '天津市燃气集团有限公司04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '323', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1495', '天津市燃气集团有限公司05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '323', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1496', '南开区邮电局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '324', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1497', '南开区邮电局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '324', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1498', '南开区邮电局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '324', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1499', '南开区邮电局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '324', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1500', '南开区邮电局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '324', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1501', '自来水营销三分公司01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '325', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1502', '自来水营销三分公司02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '325', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1503', '自来水营销三分公司03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '325', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1504', '自来水营销三分公司04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '325', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1505', '自来水营销三分公司05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '325', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1506', '天津市道路桥梁管理处三所01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '326', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1507', '天津市道路桥梁管理处三所02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '326', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1508', '天津市道路桥梁管理处三所03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '326', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1509', '天津市道路桥梁管理处三所04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '326', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1510', '天津市道路桥梁管理处三所05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '326', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1511', '天津市排水管理处二所01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '327', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1512', '天津市排水管理处二所02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '327', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1513', '天津市排水管理处二所03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '327', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1514', '天津市排水管理处二所04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '327', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1515', '天津市排水管理处二所05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '327', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1516', '天津移动南开分公司01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '328', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1517', '天津移动南开分公司02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '328', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1518', '天津移动南开分公司03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '328', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1519', '天津移动南开分公司04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '328', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1520', '天津移动南开分公司05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '328', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1521', '创建督查指挥部01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '14', '2', null, '1490768315', '1', '1492519941', '-1', null);
INSERT INTO `nk_user` VALUES ('1522', '创建督查指挥部02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '14', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1523', '创建督查指挥部03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '14', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1524', '创建督查指挥部04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '14', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1525', '创建督查指挥部05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '14', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1526', '区政府办公室01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '15', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1527', '区政府办公室02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '15', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1528', '区政府办公室03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '15', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1529', '区政府办公室04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '15', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1530', '区政府办公室05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '15', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1531', '区发改委01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '16', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1532', '区发改委02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '16', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1533', '区发改委03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '16', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1534', '区发改委04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '16', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1535', '区发改委05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '16', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1536', '交警南开支队01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '17', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1537', '交警南开支队02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '17', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1538', '交警南开支队03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '17', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1539', '交警南开支队04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '17', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1540', '交警南开支队05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '17', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1541', '区国税局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '18', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1542', '区国税局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '18', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1543', '区国税局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '18', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1544', '区国税局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '18', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1545', '区国税局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '18', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1546', '区地税局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '19', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1547', '区地税局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '19', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1548', '区地税局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '19', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1549', '区地税局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '19', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1550', '区地税局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '19', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1551', '区市场监管局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '20', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1552', '区市场监管局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '20', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1553', '区市场监管局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '20', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1554', '区市场监管局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '20', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1555', '区市场监管局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '20', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1556', '区商务委01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '21', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1557', '区商务委02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '21', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1558', '区商务委03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '21', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1559', '区商务委04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '21', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1560', '区商务委05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '21', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1561', '区建管委01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '22', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1562', '区建管委02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '22', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1563', '区建管委03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '22', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1564', '区建管委04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '22', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1565', '区建管委05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '22', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1566', '区卫计委01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '23', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1567', '区卫计委02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '23', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1568', '区卫计委03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '23', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1569', '区卫计委04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '23', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1570', '区卫计委05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '23', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1571', '区文化旅游局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '24', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1572', '区文化旅游局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '24', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1573', '区文化旅游局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '24', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1574', '区文化旅游局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '24', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1575', '区文化旅游局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '24', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1576', '区环保局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '25', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1577', '区环保局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '25', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1578', '区环保局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '25', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1579', '区环保局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '25', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1580', '区环保局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '25', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1581', '区安监局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '26', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1582', '区安监局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '26', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1583', '区安监局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '26', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1584', '区安监局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '26', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1585', '区安监局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '26', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1586', '区财政局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '27', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1587', '区财政局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '27', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1588', '区财政局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '27', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1589', '区财政局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '27', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1590', '区财政局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '27', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1591', '区行政审批局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '28', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1592', '区行政审批局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '28', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1593', '区行政审批局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '28', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1594', '区行政审批局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '28', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1595', '区行政审批局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '28', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1596', '区文明办01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '29', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1597', '区文明办02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '29', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1598', '区文明办03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '29', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1599', '区文明办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '29', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1600', '区文明办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '29', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1601', '区金融办01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '30', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1602', '区金融办02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '30', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1603', '区金融办03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '30', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1604', '区金融办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '30', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1605', '区金融办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '30', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1606', '区法院01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '31', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1607', '区法院02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '31', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1608', '区法院03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '31', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1609', '区法院04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '31', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1610', '区法院05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '31', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1611', '区新闻中心01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '32', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1612', '区新闻中心02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '32', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1613', '区新闻中心03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '32', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1614', '区新闻中心04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '32', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1615', '区新闻中心05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '32', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1616', '区工商联01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '33', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1617', '区工商联02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '33', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1618', '区工商联03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '33', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1619', '区工商联04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '33', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1620', '区工商联05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '33', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1621', '区委办公室01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '34', '2', null, '1490768315', '1', '1492515236', '-1', null);
INSERT INTO `nk_user` VALUES ('1622', '区委办公室02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '34', '2', null, '1490768315', '1', '1491790478', '-1', null);
INSERT INTO `nk_user` VALUES ('1623', '区委办公室03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '34', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1624', '区委办公室04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '34', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1625', '区委办公室05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '34', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1626', '区法制办01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '35', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1627', '区法制办02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '35', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1628', '区法制办03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '35', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1629', '区法制办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '35', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1630', '区法制办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '35', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1631', '交警南开支队01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '36', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1632', '交警南开支队02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '36', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1633', '交警南开支队03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '36', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1634', '交警南开支队04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '36', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1635', '交警南开支队05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '36', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1636', '区编办01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '37', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1637', '区编办02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '37', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1638', '区编办03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '37', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1639', '区编办04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '37', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1640', '区编办05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '37', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1641', '公安南开分局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '38', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1642', '公安南开分局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '38', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1643', '公安南开分局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '38', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1644', '公安南开分局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '38', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1645', '公安南开分局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '38', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1646', '消防南开支队01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '39', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1647', '消防南开支队02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '39', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1648', '消防南开支队03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '39', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1649', '消防南开支队04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '39', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1650', '消防南开支队05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '39', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1651', '区教育局01', '55cb49d1f24f273201deed2c149bc1e1', null, null, '40', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1652', '区教育局02', '55cb49d1f24f273201deed2c149bc1e1', null, null, '40', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1653', '区教育局03', '55cb49d1f24f273201deed2c149bc1e1', null, null, '40', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1654', '区教育局04', '55cb49d1f24f273201deed2c149bc1e1', null, null, '40', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1655', '区教育局05', '55cb49d1f24f273201deed2c149bc1e1', null, null, '40', '2', null, '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1656', '区领导1', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '1492521411', '-1', null);
INSERT INTO `nk_user` VALUES ('1657', '区领导2', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '1492518045', '-1', null);
INSERT INTO `nk_user` VALUES ('1658', '区领导3', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1659', '区领导4', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1660', '区领导5', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1661', '区领导6', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1662', '区领导7', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1663', '区领导8', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1664', '区领导9', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1665', '区领导10', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1666', '区领导11', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1667', '区领导12', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1668', '区领导13', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1669', '区领导14', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1670', '区领导15', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1671', '区领导16', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1672', '区领导17', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1673', '区领导18', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1674', '区领导19', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1675', '区领导20', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1676', '区领导21', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1677', '区领导22', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1678', '区领导23', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1679', '区领导24', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1680', '区领导25', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1681', '区领导26', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1682', '区领导27', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1683', '区领导28', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1684', '区领导29', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1685', '区领导30', '55cb49d1f24f273201deed2c149bc1e1', '', '', '7', '2', '', '1490768315', '1', '0', '-1', null);
INSERT INTO `nk_user` VALUES ('1687', '鼓楼街道01', '906caab64124b8ca5458fc14b05365f0', '', null, '352', '2', null, '1492302157', '1', '1492302286', '-1', '0');
INSERT INTO `nk_user` VALUES ('1688', '鼓楼街道02', '1250a19014bc46ac683055ac52a27381', '', null, '352', '2', null, '1492302331', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1689', '鼓楼街道03', '1a7becb833662439dd1a43f194f54ccb', '', null, '352', '2', null, '1492302346', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1690', '鼓楼街道04', '343f5a5cddec4b355089b50aa76f28ab', '', null, '352', '2', null, '1492302360', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1691', '鼓楼街道05', '500d60c11e24f99a292bc70187d7c96e', '', null, '352', '2', null, '1492302378', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1692', '兴南街道01', '0b096f31b2229eba6e353a700b13b83b', '', null, '353', '2', null, '1492302395', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1693', '兴南街道02', '4f0d2b009a0badfa273ea90b2b2914c1', '', null, '353', '2', null, '1492302409', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1694', '兴南街道03', '74f7534343a4e2473b9d900f78edee06', '', null, '353', '2', null, '1492302424', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1695', '兴南街道04', '71f9f672c7bcd4d34c605f5a507f1f50', '', null, '353', '2', null, '1492302437', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1696', '兴南街道05', 'f58fa36e35336c2f66ab64e02ec31341', '', null, '353', '2', null, '1492302449', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1697', '广开街道01', '42d4885701f131e0095c529136239389', '', null, '354', '2', null, '1492302467', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1698', '广开街道02', 'a455c3cd4b4330dad06e70ef94abc943', '', null, '354', '2', null, '1492302481', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1699', '广开街道03', '821d1262727c32b53a6f932949f888a5', '', null, '354', '2', null, '1492302492', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1700', '广开街道04', 'ca8bc90d8d624224eff28c9c5ebcc30b', '', null, '354', '2', null, '1492302505', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1701', '广开街道05', 'f9107fba6240b93129dd4c99051c353b', '', null, '354', '2', null, '1492302520', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1702', '长虹街道01', 'a2c3f55edba525e566510420842b6d9b', '', null, '355', '2', null, '1492303096', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1703', '长虹街道02', '9611e53c71bcbcd018628c645c4f4518', '', null, '355', '2', null, '1492303109', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1704', '长虹街道03', '7a6184523d2850143eec35b94e49c290', '', null, '355', '2', null, '1492303121', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1705', '长虹街道04', 'fb99a119d7efe987ae9bd6c762894f3a', '', null, '355', '2', null, '1492303136', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1706', '长虹街道05', '78942910d546f497fcdb8611cd637b7c', '', null, '355', '2', null, '1492303147', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1707', '向阳路街道01', '1cfa954f4dc4832e30e94dcc5bb26d4f', '', null, '356', '2', null, '1492303162', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1708', '向阳路街道02', '03eb918b60a4d7523187426742e3a4b6', '', null, '356', '2', null, '1492303174', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1709', '向阳路街道03', '620f8a160a9a341b67ba343859320265', '', null, '356', '2', null, '1492303188', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1710', '向阳路街道04', 'bd4ca1c531902d555ced5bd4d485cae4', '', null, '356', '2', null, '1492303200', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1711', '向阳路街道05', '1e2491ca58c03c76baf44e4b8d299f76', '', null, '356', '2', null, '1492303210', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1712', '嘉陵道街道01', '56a043df9a81c7d770d2268d718d1161', '', null, '357', '2', null, '1492303224', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1713', '嘉陵道街道02', 'e82ec980c88259c548619513118626d4', '', null, '357', '2', null, '1492303234', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1714', '嘉陵道街道03', '7b9de8c96e105d8f7b362a27359348bf', '', null, '357', '2', null, '1492303245', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1715', '嘉陵道街道04', '6ebef07a7f1894e8b7e707b15311879c', '', null, '357', '2', null, '1492303256', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1716', '嘉陵道街道05', '527364764a8ed303f9f7a62e4285b159', '', null, '357', '2', null, '1492303267', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1717', '万兴街道01', '6bdf6eaa8f3a1ac916f04930e0459ace', '', null, '358', '2', null, '1492306131', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1718', '万兴街道02', 'dcc1406add5c3fe15f76c553efd16d1f', '', null, '358', '2', null, '1492306143', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1719', '万兴街道03', '4316bc6275fac8f656f450a0aaf957c2', '', null, '358', '2', null, '1492306161', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1720', '万兴街道04', 'f6e1dd9f2345c2a11ba450fb4a0f8fed', '', null, '358', '2', null, '1492306174', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1721', '万兴街道05', '54bfc060ac22bfea47214ef5ccd5b817', '', null, '358', '2', null, '1492306186', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1722', '学府街道01', 'a92ebb9052931990e75d6250c0b6d43b', '', null, '359', '2', null, '1492306199', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1723', '学府街道02', '0a56677e0ae69df5eaaddaba17a9d208', '', null, '359', '2', null, '1492306210', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1724', '学府街道03', '800b3e4bfa4039c592672dead5c717dd', '', null, '359', '2', null, '1492306222', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1725', '学府街道04', 'c41e110233892aee791f655952cc85e2', '', null, '359', '2', null, '1492306237', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1726', '学府街道05', 'e9a0177fb99302a5bc95923b6080226f', '', null, '359', '2', null, '1492306248', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1727', '水上公园街道01', '73beb48c547dc5e45ce227d7e382e9e3', '', null, '360', '2', null, '1492306261', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1728', '水上公园街道02', 'da412525fdfbc2056b5961152a46c83e', '', null, '360', '2', null, '1492306272', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1729', '水上公园街道03', 'e623ce2f7a48459dabd0cd979793e293', '', null, '360', '2', null, '1492306284', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1730', '水上公园街道04', 'e67e1a8796a3261b5d7317f07b29aea5', '', null, '360', '2', null, '1492306296', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1731', '水上公园街道05', '922ccc57ec7178d925bcd1d059420db6', '', null, '360', '2', null, '1492306308', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1732', '王顶堤街道01', '3c7c26d24957149ef435fadc1ab44836', '', null, '361', '2', null, '1492306320', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1733', '王顶堤街道02', 'b0aa4d46734b07ef612bacf589aca677', '', null, '361', '2', null, '1492306332', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1734', '王顶堤街道03', '7bb4714094dabf51c58512d66dfbeeb6', '', null, '361', '2', null, '1492306343', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1735', '王顶堤街道04', 'ef131335cd1a73c4e49b709ae96e7565', '', null, '361', '2', null, '1492306354', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1736', '王顶堤街道05', 'f77fadebbdfe8ef2ea056bd09f070183', '', null, '361', '2', null, '1492306365', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1737', '体育中心街道01', '5c14e3ffcf473e751c1d4cab31703a6c', '', null, '362', '2', null, '1492306377', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1738', '体育中心街道02', '78d68c327fc0a51749b22b54bd5ad2d3', '', null, '362', '2', null, '1492306387', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1739', '体育中心街道03', '2b08c97690062966a4bf8b6a88a0d586', '', null, '362', '2', null, '1492306397', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1740', '体育中心街道04', '50d602519f7b6d8a58214890af150792', '', null, '362', '2', null, '1492306410', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1741', '体育中心街道05', 'dd3fe5a82f951296dde917bb5e735e96', '', null, '362', '2', null, '1492306423', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1742', '华苑街道01', 'd8611646450dc46f8aa2f6af4401cb61', '', null, '363', '2', null, '1492306435', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1743', '华苑街道02', '4372f1c6cfabe6d0776455693cedcfad', '', null, '363', '2', null, '1492306446', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1744', '华苑街道03', '819379d262e692a07209c91fdeb51d48', '', null, '363', '2', null, '1492306456', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1745', '华苑街道04', 'b4f69caedfea5be4b7529190a41a63c5', '', null, '363', '2', null, '1492306467', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1746', '华苑街道05', 'b34eb9f69b8b35adf238ac294a5a47a1', '', null, '363', '2', null, '1492306477', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1747', '鼓楼街道指挥部01', '0611f9ec648838cdee44674e2f229c9d', '', null, '364', '2', null, '1492306609', '1', '1492520297', '-1', '0');
INSERT INTO `nk_user` VALUES ('1748', '鼓楼街道指挥部02', 'cc4d92afd2d3adad6b0b548d2ccbfd26', '', null, '364', '2', null, '1492306621', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1749', '鼓楼街道指挥部03', '067ca2cd650f7c8a5bc33d0e58928676', '', null, '364', '2', null, '1492306631', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1750', '鼓楼街道指挥部04', '1114cf3bf1819bd756a4e4e004622ae7', '', null, '364', '2', null, '1492306642', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1751', '鼓楼街道指挥部05', '33bbca98465635300e35cb6a4637c402', '', null, '364', '2', null, '1492306652', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1752', '兴南街道指挥部01', '65f176516321c51f1106dfd786a5cdbe', '', null, '365', '2', null, '1492306664', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1753', '兴南街道指挥部02', '739fc268de76b68c2b7e4bc77017dd0f', '', null, '365', '2', null, '1492306674', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1754', '兴南街道指挥部03', '4f2143bcc69a274253d4553985fa5b85', '', null, '365', '2', null, '1492306685', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1755', '兴南街道指挥部04', '2fb5313a1cb1a15f82bc66eb15d84828', '', null, '365', '2', null, '1492306696', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1756', '兴南街道指挥部05', '7af46d8a61707f9af90659e02f9f7f1b', '', null, '365', '2', null, '1492306708', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1757', '广开街道指挥部01', '966ce4a7cc0c16d34ddc6e34a1ba0b91', '', null, '366', '2', null, '1492306719', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1758', '广开街道指挥部02', 'c81f36aebceed887efe571533ea558df', '', null, '366', '2', null, '1492306729', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1759', '广开街道指挥部03', '539f26243a69d73ea667fbe25f51820f', '', null, '366', '2', null, '1492306741', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1760', '广开街道指挥部04', '5c1604045d2375d26412a1549aa735f9', '', null, '366', '2', null, '1492306750', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1761', '广开街道指挥部05', '49ee805ea8f4c36ba827249687867732', '', null, '366', '2', null, '1492306759', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1762', '长虹街道指挥部01', '847f30a994225b5eb7ff7c3165616a13', '', null, '367', '2', null, '1492306769', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1763', '长虹街道指挥部02', 'f18f8eb9bd9e39ec3927693a5a03a92d', '', null, '367', '2', null, '1492306778', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1764', '长虹街道指挥部03', '66d3c24163b5e9c56ac88a5ff11a5bef', '', null, '367', '2', null, '1492306787', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1765', '长虹街道指挥部04', 'd012027e62432df1bfefc1e851fc7fb7', '', null, '367', '2', null, '1492306798', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1766', '长虹街道指挥部05', 'c083e798033acdfc16cb728f98cecdba', '', null, '367', '2', null, '1492306808', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1767', '向阳路街道指挥部01', '413950da4b0a4b3f1323fe3c09397551', '', null, '368', '2', null, '1492306821', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1768', '向阳路街道指挥部03', 'e7cd16ac9b298560abcbf75360dffce2', '', null, '368', '2', null, '1492306835', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1769', '向阳路街道指挥部04', '20f45bdcc2149f6896be740ee95a4e8c', '', null, '368', '2', null, '1492306844', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1770', '向阳路街道指挥部05', '638168b47f0adda1b24cb90dedcfdf2f', '', null, '368', '2', null, '1492306855', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1771', '嘉陵道街道指挥部01', 'f72b1d768f5d0497eea2e3ab50034299', '', null, '369', '2', null, '1492306865', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1772', '嘉陵道街道指挥部02', 'ec75cc6fd396e36e0ef4f98c552c8c5b', '', null, '369', '2', null, '1492306874', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1773', '嘉陵道街道指挥部03', '7d570e3ba009c8a93603b4f98f0ff442', '', null, '369', '2', null, '1492306883', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1774', '嘉陵道街道指挥部04', '31f4cbad178d5c288956eb15fa875fc0', '', null, '369', '2', null, '1492306891', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1775', '嘉陵道街道指挥部05', '303ebe58e8bd27177ebe8e84fdc25791', '', null, '369', '2', null, '1492306900', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1776', '万兴街道指挥部01', '6b74b8f6f1e0c8645181afc300493486', '', null, '370', '2', null, '1492306909', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1777', '万兴街道指挥部02', 'c8b615b07deca5f6442517e21d31cc73', '', null, '370', '2', null, '1492306918', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1778', '万兴街道指挥部03', '3ff1c0beed6ca211f524b81c6014f112', '', null, '370', '2', null, '1492306927', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1779', '万兴街道指挥部04', 'ef7419815d868e27e5f497e62875fbb2', '', null, '370', '2', null, '1492306937', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1780', '万兴街道指挥部05', '61f847bfe2a94305b2d34a792bcc86a5', '', null, '370', '2', null, '1492306952', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1781', '学府街道指挥部01', '8a6caf8b3af48521a7ff257e94c93256', '', null, '371', '2', null, '1492306966', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1782', '学府街道指挥部02', '17f25ee0536a4a7206e7921f81bdbab2', '', null, '371', '2', null, '1492306976', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1783', '学府街道指挥部03', '6ae3d514d9e830c499eb2117ca6bcd5e', '', null, '371', '2', null, '1492306994', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1784', '学府街道指挥部04', '6b2ad5ca2804b7fe95914dffaa9ba21a', '', null, '371', '2', null, '1492307002', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1785', '学府街道指挥部05', '014bb6f88a0d1b0c11baa0ae2ede41fe', '', null, '371', '2', null, '1492307012', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1786', '水上公园街道指挥部01', 'd40dd6530ba5c61b35e4c0945c4c7092', '', null, '372', '2', null, '1492307022', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1787', '水上公园街道指挥部02', 'a621fffab76509a8b0f3122a9554f6fa', '', null, '372', '2', null, '1492307033', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1788', '水上公园街道指挥部03', 'a8e8e33ab9b75d29a294c70f632c341f', '', null, '372', '2', null, '1492307041', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1789', '水上公园街道指挥部04', '2286e05fb9aefd9508bf6d302083e41a', '', null, '372', '2', null, '1492307050', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1790', '水上公园街道指挥部05', '4982b35708f52506673e1cbae98c593e', '', null, '372', '2', null, '1492307058', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1791', '王顶堤街道指挥部01', '4b29bb9cc59545121b5e841041fc8b04', '', null, '373', '2', null, '1492307068', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1792', '王顶堤街道指挥部02', '24ef4c44f05fe30255fa126b3538697e', '', null, '373', '2', null, '1492307078', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1793', '王顶堤街道指挥部03', '8cc4681e4313ef3a5403a306babe3506', '', null, '373', '2', null, '1492307089', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1794', '王顶堤街道指挥部04', '00ed6dca26c1e1301f4d999c1adf0f07', '', null, '373', '2', null, '1492307108', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1795', '王顶堤街道指挥部05', 'bf3b44c3e8f98fc9afa272168b502997', '', null, '373', '2', null, '1492307120', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1796', '体育中心街道指挥部01', '98e6398439db08eb23502ecdfce34a3a', '', null, '374', '2', null, '1492307136', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1797', '体育中心街道指挥部02', '3828a44472e88a543a6fe26ba6fd1c9c', '', null, '374', '2', null, '1492307145', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1798', '体育中心街道指挥部03', 'c2c9fd8a906f88758e502cc258b57b98', '', null, '374', '2', null, '1492307154', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1799', '体育中心街道指挥部04', '8a4bc20c17f851bfb6632c50b77fb658', '', null, '374', '2', null, '1492307165', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1800', '体育中心街道指挥部05', '7c7423c4eb7de4a380201b226dfb33a3', '', null, '374', '2', null, '1492307174', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1801', '华苑街道指挥部01', '5397d5d4decc792f15cca60b68b76132', '', null, '375', '2', null, '1492307184', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1802', '华苑街道指挥部02', '9edd541f9ee3c3fb01a1f1f3a2e9b4b2', '', null, '375', '2', null, '1492307194', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1803', '华苑街道指挥部03', 'e0a1550b18307cc521efef42ff46ccb0', '', null, '375', '2', null, '1492307204', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1804', '华苑街道指挥部04', '92ba4103715ee945a2bfeeaa6badfcee', '', null, '375', '2', null, '1492307212', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1805', '华苑街道指挥部05', 'cbb81499ceefea76ce9a2a8d44af0017', '', null, '375', '2', null, '1492307222', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1806', '向阳路街道指挥部02', 'ed1231b940c60542177e314fdada81fb', '', null, '368', '2', null, '1492307297', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1807', '测试创文办账号', '639f5cdca3728c5502fe2584674fbcbd', '', null, '7', '2', null, '1492521274', '1', '0', '1', '1');
INSERT INTO `nk_user` VALUES ('1808', '创文办06', 'b30e64e26af57eec3133323e70f61890', '', null, '1', '2', null, '1492680625', '1', '1493256217', '-1', '0');
INSERT INTO `nk_user` VALUES ('1809', '创文办07', '87b04140a85d91caa1259725e860662a', '', null, '1', '2', null, '1492680637', '1', '1492765238', '-1', '0');
INSERT INTO `nk_user` VALUES ('1810', '创文办08', '485c34908b64073eaf5217eaf2487b91', '', null, '1', '2', null, '1492680642', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1811', '马超', '9bc0141f4beccbe97d535b7f1f2cf15c', '18622008191', null, '1', '2', null, '1492680648', '1', '1492738890', '-1', '0');
INSERT INTO `nk_user` VALUES ('1812', '创文办10', '3dd91ae6646f561434a16f0e1202cbb7', '', null, '1', '2', null, '1492680653', '1', '1492739278', '-1', '0');
INSERT INTO `nk_user` VALUES ('1813', '创文办11', 'bfe31e3a3da3a847ce7bdf6b9bdc8727', '', null, '1', '2', null, '1492680658', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1814', '创文办12', '3657e8d06ddb389bb414e0052eb0c37e', '', null, '1', '2', null, '1492680663', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1815', '创文办13', '50b8738141dd91d382568ca13888ae75', '', null, '1', '2', null, '1492680669', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1816', '创文办14', 'c41a142a262ef2aed09b9293e2d76517', '', null, '1', '2', null, '1492680674', '1', '0', '-1', '0');
INSERT INTO `nk_user` VALUES ('1817', '创文办15', 'a4f19997fb3bedb413c4ccf801e7aae2', '', null, '1', '2', null, '1492680679', '1', '0', '-1', '0');

-- ----------------------------
-- Table structure for nk_version
-- ----------------------------
DROP TABLE IF EXISTS `nk_version`;
CREATE TABLE `nk_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(255) DEFAULT NULL COMMENT '版本号',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='----------版本号---------';

-- ----------------------------
-- Records of nk_version
-- ----------------------------
INSERT INTO `nk_version` VALUES ('1', '1.1.2', 'http://47.92.68.19/app/nankai.apk');
