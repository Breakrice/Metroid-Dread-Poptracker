function R1045()
    return R1155() and true
end
function R1046()
    return R1045() and true
end
function R1047()
    return
        (R1048() and has("gravity") or (surviveDMG(50) and has("suitlessI"))) or
        (R1046() and has("gravity") or (surviveDMG(20) and has("suitlessI"))) or
        (R1062() and true)
end
function R1048()
    return
        (R1047() and has("gravity") or (surviveDMG(50) and has("suitlessI"))) or
        (R1046() and has("gravity") or (surviveDMG(20) and has("suitlessI"))) or
        (R1070() and true)
end
function R1049()
    return
        --(R1052() and Artaria Central Unit) or
        (R1187() and true)
end
function R1050()
    return R1189() and true --potentially morph
end
function R1051() --events here: Artaria Central Unit
    return R1052() and
        ((has("charge") or has("CONmissile", 1)) or
        (has("speed") and has("speedB")))
end
function R1052()
    return
        (R1051() and true) or
        (R1050() and true) --or
        --(R1049() and Artaria Central Unit)
end
function R1053() --starting room
    return true
end
function R1054()
    return
        (R1055() and has("flash")) or
        (R1056() and (has("spin") or (has("morph") and has("crossbomb") and has     ("IBJB")) or (has("morph") and CANBLOWUP() and has("IBJI")) or has("grapple") or (has("CONmissile", 1) and has("ice") and has("frozenenemyB")))) or
        (R1053() and true) or
        (R1205() and true)
end
function R1055()
    return R1201() and has("grapple")
end
function R1056()
    return
        (R1055() and true) or
        (R1054() and true)
end
function R1057() --starting room
    return true
end
function R1058()
    return
        (R1057() and true) or
        (R1301() and true) or
        (R1101() and true)
end
function R1059() --starting room
    return true
end
function R1060()
    return
        (R1062() and has("speed")) or
        (R1137() and has("morph"))
end
function R1061()
    return
        (R1062() and (true or (has("CONmissile", 1) and has("speed")))) or
        (R1060() and has("morph") and has("speed")) or
        (R1059() and true) or
        (R1138() and true)
end
function R1062()
    return
        (R1063() and true) or
        (R1061() and (true or (has("CONmissile", 1) and has("speed")))) or
        (R1069() and true) or
        (R1047() and true)
end
function R1063()
    return R1062() and true and has("speed")
end
function R1064() --events here: Artaria: grapple pull off
    return R1067() and has("grapple") and has("reversegrappleB")
end
function R1065() --starting room
    return true
end
function R1066()
    return
        --(R1067() and Artaria: grapple pull off) or
        (R1075() and has("morph"))
end
function R1067()
    return 
        --(R1066() and Artaria: grapple pull off) or
        (R1065() and true) or
        (R1064() and true) or
        (R1158() and true) or
        (R1083() and has("plasma"))
end
function R1068()
    return R1069() and has("speed")
end
function R1069()
    return
        (R1068() and has("speed")) or
        (R1062() and true)
end
function R1070()
    return R1073() and 
        (has("gravity") or 
        (surviveDMG(50) and has("suitlessI")))
end
function R1071()
    return R1073() and
        (has("gravity") or 
        (surviveDMG(50) and has("suitlessI")))
end
function R1072()
    return
        (R1160() and has("plasma")) or
        (R1084() and true)
end
function R1073()
    return
        (R1071() and (has("gravity") or (surviveDMG(50) and has("suitlessI")))) or
        (R1070() and (has("gravity") or (surviveDMG(350) and has("suitlessI")))) or
        (R1091() and has("grapple"))
end
function R1074() --events here: Artaria SA Rotatable
    return
        (R1087() and has("speed") and DOORRANDOOFF() and has("CONmissile", 1) and has("speedB") and has("screw")) --or
        --(R1076() and Artaria SA Rotatable)
end
function R1075()
    return
        --(R1080() and Artaria: grapple pull off) or
        (R1066() and has("morph"))
end
function R1076()
    return
        (R1087() and (has("morph") or has("screw"))) or
        (R1090() and (has("gravity") or (has("morph") and has("crossbomb") and has("WBJB")) or (has("morph") and has("bomb") and has("WBJI")))) or
        (R1077() and has("space")) or
        (R1078() and (has("gravity") or (has("morph") and (has("crossbomb") and has("WBJB")) or (has("crossbomb") and has("WBJI")))))
end
function R1077()
    return
        --(R1091() and (has("speed") and Artaria: breakable cave and has("morph") and ((has("flash") and has("speed") and has("shortboostE") and DOORRANDOOFF() and has("grapple")) or (has(Speed Upgrade) and DOORRANDOOFF() and has("grapple")) or has(Speed Upgrade, 3)) and has("movementA"))) or
        --(R1087() and (has("speed") and DOORRANDOOFF() and has("CONmissile", 1) and (has("screw") or (has("morph") and has("movementB"))) and has("speedB") and Artaria SA Rotatable)) or
        (R1084() and true) or
        (R1078() and (has("gravity") and ((has("morph") and has("crossbomb") and has("IBJB")) or has("morph") and has("bomb") and has("IBJI")) or has("spin"))) or
        (R1076() and has("space") and has("WSJI"))
end
function R1078()
    return
        (R1077() and true) or
        --(R1082() and Artaria: breakable cave) or
        (R1076() and true)
end
function R1079() --events here: Artaria: grapple pull off
    return R1080() and has("grapple")
end
function R1080()
    return
        (R1079() and true) or
        --(R1075() and Artaria: grapple pull off) or
        --(R816() and true) CATARIS
end
function R1081() --events here: Artaria: breakable cave
    return
        (R1082() and (has("diffusion") or has("wave") or has("pseudowaveA") or (has("gravity") and has("pseudowaveI")))) or
        (R1078() and (has("wave") or has("pseudowaveI") or (has("gravity") and has("pseudowaveB"))))
end
function R1082()
    return
        (R1091() and CANBLOWUP()) or
        --(R1086() and has("morph") and Artaria: breakable cave) or
        (R1081() and true) --or
        --(R1078() and Artaria: breakable cave)
end
function R1083()
    return
        (R1084() and has("screw")) or
        (R1067() and has("plasma"))
end
function R1084()
    return
        (R1083() and has("screw")) or
        (R1077() and (has("morph") and (has("walljumpB") or (has("morph") and has("crossbomb") and has("IBJB")) or (has("morph") and has("bomb") and has("IBJI")) or has("spin")))) or
        (R1072() and true)
end
function R1085()
    return
end
function R1086()
    return
end
function R1087()
    return
end
function R1088()
    return
end
function R1089()
    return
end
function R1090()
    return
end
function R1091()
    return
end
function R1092()
    return
end
function R1093()
    return
end
function R1094()
    return
end
function R1095()
    return
end
function R1096()
    return
end
function R1097()
    return
end
function R1098()
    return
end
function R1099()
    return
end
function R1100()
    return
end
function R1101()
    return
end
function R1102()
    return
end
function R1103()
    return
end
function R1104()
    return
end
function R1105()
    return
end
function R1106()
    return
end
function R1107()
    return
end
function R1108()
    return
end
function R1109()
    return
end
function R1110()
    return
end
function R1111()
    return
end
function R1112()
    return
end
function R1113()
    return
end
function R1114()
    return
end
function R1115()
    return
end
function R1116()
    return
end
function R1117()
    return
end
function R1118()
    return
end
function R1119()
    return
end
function R1120()
    return
end
function R1121()
    return
end
function R1122()
    return
end
function R1123()
    return
end
function R1124()
    return
end
function R1125()
    return
end
function R1126()
    return
end
function R1127()
    return
end
function R1128()
    return
end
function R1129()
    return
end
function R1130()
    return
end
function R1131()
    return
end
function R1132()
    return
end
function R1133()
    return
end
function R1134()
    return
end
function R1135()
    return
end
function R1136()
    return
end
function R1137()
    return
end
function R1138()
    return
end
function R1139()
    return
end
function R1140()
    return
end
function R1141()
    return
end
function R1142()
    return
end
function R1143()
    return
end
function R1144()
    return
end
function R1145()
    return
end
function R1146()
    return
end
function R1147()
    return
end
function R1148()
    return
end
function R1149()
    return
end
function R1150()
    return
end
function R1151()
    return
end
function R1152()
    return
end
function R1153()
    return
end
function R1154()
    return
end
function R1155()
    return
end
function R1156()
    return
end
function R1157()
    return
end
function R1158()
    return
end
function R1159()
    return
end
function R1160()
    return
end
function R1161()
    return
end
function R1162()
    return
end
function R1163()
    return
end
function R1164()
    return
end
function R1165()
    return
end
function R1166()
    return
end
function R1167()
    return
end
function R1168()
    return
end
function R1169()
    return
end
function R1170()
    return
end
function R1171()
    return
end
function R1172()
    return
end
function R1173()
    return
end
function R1174()
    return
end
function R1175()
    return
end
function R1176()
    return
end
function R1177()
    return
end
function R1178()
    return
end
function R1179()
    return
end
function R1180()
    return
end
function R1181()
    return
end
function R1182()
    return
end
function R1183()
    return
end
function R1184()
    return
end
function R1185()
    return
end
function R1186()
    return
end
function R1187()
    return
end
function R1188()
    return
end
function R1189()
    return
end
function R1190()
    return
end
function R1191()
    return
end
function R1192()
    return
end
function R1193()
    return
end
function R1194()
    return
end
function R1195()
    return
end
function R1196()
    return
end
function R1197()
    return
end
function R1198()
    return
end
function R1199()
    return
end
function R1200()
    return
end
function R1201()
    return
end
function R1202()
    return
end
function R1203()
    return
end
function R1204()
    return
end
function R1205()
    return
end
function R1206()
    return
end
function R1207()
    return
end
function R1208()
    return
end
function R1209()
    return
end
function R1210()
    return
end
function R1211()
    return
end
function R1212()
    return
end
function R1213()
    return
end
function R1214()
    return
end
function R1215()
    return
end
function R1216()
    return
end
function R1217()
    return
end
function R1218()
    return
end
function R1219()
    return
end
function R1220()
    return
end
function R1221()
    return
end
function R1222()
    return
end
function R1223()
    return
end
function R1224()
    return
end
function R1225()
    return
end
function R1226()
    return
end
function R1227()
    return
end
function R1228()
    return
end
function R1229()
    return
end
function R1230()
    return
end
function R1231()
    return
end
function R1232()
    return
end
function R1233()
    return
end
function R1234()
    return
end
function R1235()
    return
end
function R1236()
    return
end
function R1237()
    return
end
function R1238()
    return
end
function R1239()
    return
end
function R1240()
    return
end
function R1241()
    return
end
function R1242()
    return
end
function R1243()
    return
end
function R1244()
    return
end
function R1245()
    return
end
function R1246()
    return
end
function R1247()
    return
end
function R1248()
    return
end
function R1249()
    return
end
function R1250()
    return
end
function R1251()
    return
end
function R1252()
    return
end
function R1253()
    return
end
function R1254()
    return
end
function R1255()
    return
end
function R1256()
    return
end
function R1257()
    return
end
function R1258()
    return
end
function R1259()
    return
end
function R1260()
    return
end
function R1261()
    return
end
function R1262()
    return
end
function R1263()
    return
end
function R1264()
    return
end
function R1265()
    return
end
function R1266()
    return
end
function R1267()
    return
end
function R1268()
    return
end
function R1269()
    return
end
function R1270()
    return
end
function R1271()
    return
end
function R1272()
    return
end
function R1273()
    return
end
function R1274()
    return
end
function R1275()
    return
end
function R1276()
    return
end
function R1277()
    return
end
function R1278()
    return
end
function R1279()
    return
end
function R1280()
    return
end
function R1281()
    return
end
function R1282()
    return
end
function R1283()
    return
end
function R1284()
    return
end
function R1285()
    return
end
function R1286()
    return
end
function R1287()
    return
end
function R1288()
    return
end
function R1289()
    return
end
function R1290()
    return
end
function R1291()
    return
end
function R1292()
    return
end
function R1293()
    return
end
function R1294()
    return
end
function R1295()
    return
end
function R1296()
    return
end
function R1297()
    return
end
function R1298()
    return
end
function R1299()
    return
end
function R1300()
    return
end
function R1301()
    return
end
function R1302()
    return
end
function R1303()
    return
end
function R1304()
    return
end
function R1305()
    return
end
function R1306()
    return
end
function R1307()
    return
end
function R1308()
    return
end
function R1309()
    return
end
function R1310()
    return
end
function R1311()
    return
end
function R1312()
    return
end
function R1313()
    return
end
function R1314()
    return
end
function R1315()
    return
end
function R1316()
    return
end
function R1317()
    return
end
function R1318()
    return
end
function R1319()
    return
end
function R1320()
    return
end
function R1321()
    return
end
function R1322()
    return
end
function R1323()
    return
end
function R1324()
    return
end
function R1325()
    return
end
function R1326()
    return
end
function R1327()
    return
end
function R1328()
    return
end
function R1329()
    return
end
function R1330()
    return
end
function R1331()
    return
end
function R1332()
    return
end
function R1333()
    return
end
function R1334()
    return
end
function R1335()
    return
end
function R1336()
    return
end
function R1337()
    return
end
function R1338()
    return
end
function R1339()
    return
end
function R1340()
    return
end
function R1341()
    return
end
function R1342()
    return
end
function R1343()
    return
end
function R1344()
    return
end
    