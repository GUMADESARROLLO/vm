/*
 Navicat Premium Data Transfer

 Source Server         : localhost_8448
 Source Server Type    : MySQL
 Source Server Version : 100113
 Source Host           : localhost:3306
 Source Schema         : vistamedica

 Target Server Type    : MySQL
 Target Server Version : 100113
 File Encoding         : 65001

 Date: 07/10/2019 08:12:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for articulos
-- ----------------------------
DROP TABLE IF EXISTS `articulos`;
CREATE TABLE `articulos`  (
  `ARTICULO` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CLASE_TERAPEUTICA` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `DESCRIPCION` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total` decimal(10, 0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of articulos
-- ----------------------------
INSERT INTO `articulos` VALUES ('10024011', 'PSICOTROPICOS', 'Sevredol (Morfina) 20 mg Tabletas Recubiertas 56/Caja  (BaRD PHaRMa)', 0);
INSERT INTO `articulos` VALUES ('10102011', 'ANESTESICOS', 'Pancuronio 2mg/ml Sol. iny. 2ml/ampolla unidad (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10102021', 'ANESTESICOS', 'Tiopental Sodico 1g Liofilizado para Sol. iny. Vial 1/Caja (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10105011', 'ANTIBIOTICOS', 'Vancomicina 500 Mg Polvo para Sol. iny i.V uSP Vial 1/Caja (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10113022', 'GASTROINTESTINAL', 'ondansetron 8 mg/4 ml Sol. iny. 4ml/amp 5/Caja (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10115012', 'HEMATOLOGICO', 'Lenalidomida 25 mg Capsulas 10/Frasco 1/Caja (Naprod)', 300);
INSERT INTO `articulos` VALUES ('10118011', 'ONCOLOGICOS', 'acido Zoledronico 4mg/5ml Sol. iny i.V 5ml/Vial 1/Caja (Naprod)', 600);
INSERT INTO `articulos` VALUES ('10118022', 'ONCOLOGICOS', 'anastrozol 1 Mg Tab Recubierta 28/Caja (Naprod)', 714);
INSERT INTO `articulos` VALUES ('10118041', 'ONCOLOGICOS', 'Bleomicina Sulfato 15 ui PPSi 5ml/Vial 1/Caja Refrigerado (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118051', 'ONCOLOGICOS', 'Bortezomib 3.5 mg   Polvo Liofilizado para Solucion inyectable Vial 1/Caja(Naprod)', 170);
INSERT INTO `articulos` VALUES ('10118062', 'ONCOLOGICOS', 'Capecitabina 500 mg Tabletas Recubiertas 10/Caja (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118071', 'ONCOLOGICOS', 'Carboplatino 10mg/ml Solucion iny i.V 5 ml/Vial 1/Caja  (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118072', 'ONCOLOGICOS', 'Carboplatino 10mg/ml Solucion iny i.V 15 ml/FaM 1/Caja  (Naprod)', 944);
INSERT INTO `articulos` VALUES ('10118073', 'ONCOLOGICOS', 'Carboplatino 10mg/ml Solucion iny i.V 45 ml/Vial 1/Caja  (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118081', 'ONCOLOGICOS', 'Bicalutamida 50 mg Tabletas Recubiertas 100/Frasco 1/Caja (Naprod)', 315);
INSERT INTO `articulos` VALUES ('10118091', 'ONCOLOGICOS', 'Bicalutamida 150 mg Tabletas Recubiertas 100/Frasco 1/Caja (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118101', 'ONCOLOGICOS', 'Cisplatino 1mg/ml Solucion iny i.V 10 ml/Vial 1/Caja (Naprod)', 1908);
INSERT INTO `articulos` VALUES ('10118111', 'ONCOLOGICOS', 'Cisplatino 1mg/ml Solucion iny i.V 50 ml/Vial 1/Caja (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118121', 'ONCOLOGICOS', 'Citarabina 100 Mg/5 ml Sol. iny 5 ml/Vial 1/Caja (Naprod)', 615);
INSERT INTO `articulos` VALUES ('10118131', 'ONCOLOGICOS', 'Dacarbazina 200 Mg PPSi i.V FaM 1/Caja Refrigerado(Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118161', 'ONCOLOGICOS', 'Docetaxel 20 Mg/0.5 ml Sol. iny 0.5 ml/Vial 1/Caja Refrigerado (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118171', 'ONCOLOGICOS', 'Docetaxel 80 mg/2 ml Sol. iny 2ml/Vial 1/Combipack Refrigerado (Naprod)', 595);
INSERT INTO `articulos` VALUES ('10118181', 'ONCOLOGICOS', 'Doxorubicina 10 Mg PPSi i.V Vial 1/Caja (Naprod)', 12);
INSERT INTO `articulos` VALUES ('10118191', 'ONCOLOGICOS', 'Doxorubicina 50 Mg PPSi Vial 1/Caja (Naprod)', 298);
INSERT INTO `articulos` VALUES ('10118201', 'ONCOLOGICOS', 'epirubicina 50 mg PPSi Vial 1/Caja(Naprod)', 53);
INSERT INTO `articulos` VALUES ('10118212', 'ONCOLOGICOS', 'erlotinib 100 mg Tabletas Recubiertas 10/Caja (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118222', 'ONCOLOGICOS', 'erlotinib 150 mg Tab Recub. 10/Caja (Naprod)', 68);
INSERT INTO `articulos` VALUES ('10118231', 'ONCOLOGICOS', 'etoposido 100 mg/5 ml Solucion inyectable 5 ml/Vial 1/Caja (Naprod)', 509);
INSERT INTO `articulos` VALUES ('10118242', 'ONCOLOGICOS', 'exemestano 25 mg Tabletas Recubiertas 10/Frasco 1/Caja (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118251', 'ONCOLOGICOS', 'Fludarabina Fosfato 50 mg Liofilizado para Sol. iny. Vial 1/Caja Refrigerado (Naprod)', 84);
INSERT INTO `articulos` VALUES ('10118261', 'ONCOLOGICOS', 'Fluoracilo 500 mg/10 ml Sol. iny.10 ml/Vial 1/Caja (Naprod)', 2321);
INSERT INTO `articulos` VALUES ('10118281', 'ONCOLOGICOS', 'Gemcitabina 1 G PPSi i.V  Vial 1/Caja (Naprod)', 1236);
INSERT INTO `articulos` VALUES ('10118292', 'ONCOLOGICOS', 'Hidroxiurea 500 Mg Capsula 50/Caja (Naprod)', 127);
INSERT INTO `articulos` VALUES ('10118301', 'ONCOLOGICOS', 'ifosfamida 1 Gr PPSi Vial 1/Caja (Naprod)', 519);
INSERT INTO `articulos` VALUES ('10118332', 'ONCOLOGICOS', 'imatinib Mesilato 400 Mg Tabletas Recubiertas 10/Frasco 1/Caja (Naprod)', 587);
INSERT INTO `articulos` VALUES ('10118342', 'ONCOLOGICOS', 'irinotecan 20 mg/ml Sol. iny i.V 5 ml/Vial 1/Caja  (Naprod)', 284);
INSERT INTO `articulos` VALUES ('10118343', 'ONCOLOGICOS', 'irinotecan 20 mg/ml Sol. iny i.V 2 ml/Vial 1/Caja  (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118351', 'ONCOLOGICOS', 'L-asparaginasa 10,000 ui PPSi Vial 1/Caja Refrigerado (Naprod)', 939);
INSERT INTO `articulos` VALUES ('10118362', 'ONCOLOGICOS', 'Letrozol 2.5 mg Tab 10/Frasco 1/Caja (Naprod)', 2134);
INSERT INTO `articulos` VALUES ('10118372', 'ONCOLOGICOS', 'Mercaptopurina 50 mg Tabletas 100/Caja (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118381', 'ONCOLOGICOS', 'Metotrexato 2,5 mg Tableta 24/Frasco 1/Caja (Naprod)', 130);
INSERT INTO `articulos` VALUES ('10118382', 'ONCOLOGICOS', 'Metotrexato 50 mg/2 ml Sol. iny 2ml/Vial 1/Caja (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118401', 'ONCOLOGICOS', 'oxaliplatino 50 Mg PPSi Vial 1/Caja (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118411', 'ONCOLOGICOS', 'oxaliplatino 100 Mg PPSi Vial 1/Caja (Naprod)', 686);
INSERT INTO `articulos` VALUES ('10118431', 'ONCOLOGICOS', 'Paclitaxel 150 mg/25 ml Sol. iny.25ml/Vial 1/Caja (Naprod)', 1548);
INSERT INTO `articulos` VALUES ('10118441', 'ONCOLOGICOS', 'Pemetrexed 500 mg Liofilizado para Sol. iny. Vial 1/Caja (Naprod)', 32);
INSERT INTO `articulos` VALUES ('10118462', 'ONCOLOGICOS', 'Tamoxifeno 20 mg Tab 100/Caja (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118463', 'ONCOLOGICOS', 'Tamoxifeno Citrato 20 mg Tabletas 100/Frasco 1/Caja (Naprod)', 142);
INSERT INTO `articulos` VALUES ('10118472', 'ONCOLOGICOS', 'Temozolamida 100 mg Capsulas 5/Caja (Naprod)', 330);
INSERT INTO `articulos` VALUES ('10118481', 'ONCOLOGICOS', 'Vincristina 1 mg/1ml PPSi Vial 1/Caja Refrigerado (Naprod)', 881);
INSERT INTO `articulos` VALUES ('10118491', 'ONCOLOGICOS', 'Vincristina Sulfato 5 mg PPSi Vial 1/Caja Refrigerado (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118501', 'ONCOLOGICOS', 'Vinblastina 10 Mg PPSi  Vial 1/Caja Refrigerado (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118511', 'ONCOLOGICOS', 'imatinib Mesilato 100 mg Tabletas Recubiertas 10/Frasco 1/Caja (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10118521', 'ONCOLOGICOS', 'Flutamida 250 mg Tabletas 10/Frasco 1/Caja (Naprod)', 6458);
INSERT INTO `articulos` VALUES ('10118531', 'ONCOLOGICOS', 'abiraterona acetato 250 mg Tabletas 60/Frasco 1/Caja (Naprod)', 147);
INSERT INTO `articulos` VALUES ('10118541', 'ONCOLOGICOS', 'Gefitinib 250 mg Tabletas Recubiertas 30/Frasco 1/Caja (Naprod)', 70);
INSERT INTO `articulos` VALUES ('10126011', 'ANTIPALUDICO', 'Leucovorina Calcica 50 mg/5 ml Solucion iny. 5 ml/Vial 1/Caja Refrigerado (Naprod)', 1983);
INSERT INTO `articulos` VALUES ('10130032', 'INMUNOSUPRESOR', 'Micofelonato de Mofetilo 500 mg Tableta Recubierta 10/Caja (Naprod)', 0);
INSERT INTO `articulos` VALUES ('10204012', 'ANTIALERGICOS', 'Loratadina 10 mg Tabletas 10/Caja (Hetero)', 0);
INSERT INTO `articulos` VALUES ('10205012', 'ANTIBIOTICOS', 'Claritromicina 500 mg Tableta Recubierta 10/Caja (Hetero)', 0);
INSERT INTO `articulos` VALUES ('10205032', 'ANTIBIOTICOS', 'Levofloxacina 500 mg Tableta Recubierta 5/Caja (Hetero)', 0);
INSERT INTO `articulos` VALUES ('10206022', 'ANTICOLVUS/ANTIDEPRE', 'Sertralina 50 mg Tableta Recubierta 30/Caja (Hetero)', 0);
INSERT INTO `articulos` VALUES ('10207011', 'ANTIMICOTICOS', 'Fluconazol 150 mg Tabletas 10/Caja (Hetero)', 0);
INSERT INTO `articulos` VALUES ('10207022', 'ANTIMICOTICOS', 'Ketoconazol 200 mg Tableta 20/Caja (Hetero)', 0);
INSERT INTO `articulos` VALUES ('10207033', 'ANTIMICOTICOS', 'Terbinafina 250 mg Tableta 28/Caja (Hetero)', 0);
INSERT INTO `articulos` VALUES ('10209012', 'ANTIVIRAL/ANTIRETROV', 'aciclovir 400 mg Tableta 30/Caja (Hetero)', 0);
INSERT INTO `articulos` VALUES ('10218012', 'ONCOLOGICOS', 'Bicalutamida 50 mg Tableta 100/Caja (Hetero)', 0);
INSERT INTO `articulos` VALUES ('10225011', 'UROLOGIA', 'Tadalafil 20 mg Tabletas Recubiertas 4/Caja (Hetero)', 0);
INSERT INTO `articulos` VALUES ('10301021', 'ANALGES/ANTIPIRETICO', 'acetaminofen 100 mg/ml Solucion oral tas 30ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10301031', 'ANALGES/ANTIPIRETICO', 'acetaminofen 120 mg/5ml Jarabe 120 ml/Frasco unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10301032', 'ANALGES/ANTIPIRETICO', 'acetaminofen 120 mg/5ml Jarabe 120 ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10301051', 'ANALGES/ANTIPIRETICO', 'acetaminofen 300 mg Supositorios unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10301052', 'ANALGES/ANTIPIRETICO', 'acetaminofen 300 mg Supositorios 10/Caja (Ramos)', 1384);
INSERT INTO `articulos` VALUES ('10301061', 'ANALGES/ANTIPIRETICO', 'BioNeural (Diclofenac Sodico + B1, B6, B12) Capsulas 30/Caja (Ramos)', 565);
INSERT INTO `articulos` VALUES ('10301062', 'ANALGES/ANTIPIRETICO', 'Dexketoprofeno 25 mg Capsula 10/Caja (Ramos)', 1);
INSERT INTO `articulos` VALUES ('10301072', 'ANALGES/ANTIPIRETICO', 'Dexketoprofeno 1,25 % Gel 30 g/Tubo 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10301082', 'ANALGES/ANTIPIRETICO', 'Diram (Diclofenac Sodico) 50 mg Tabletas 100/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10301083', 'ANALGES/ANTIPIRETICO', 'Diram (Diclofenac Sodico) 50 mg Tabletas unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10301092', 'ANALGES/ANTIPIRETICO', 'Diclofenac Sodico 100 mg Tableta 100/Caja (Ramos)', 90);
INSERT INTO `articulos` VALUES ('10301102', 'ANALGES/ANTIPIRETICO', 'Diclofenac 1% Gel 30 Gr/Tubo 1/Caja(Ramos)', 3811);
INSERT INTO `articulos` VALUES ('10301111', 'ANALGES/ANTIPIRETICO', 'Diclofenac 1.5% Solucion oral tas 20 ml/Frasco 1/Caja (Ramos)', 130);
INSERT INTO `articulos` VALUES ('10301132', 'ANALGES/ANTIPIRETICO', 'indometacina 25 mg Tabletas 100/Caja (Ramos)', 2);
INSERT INTO `articulos` VALUES ('10301142', 'ANALGES/ANTIPIRETICO', 'Ketoprofeno 50 mg Capsulas 100/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10301152', 'ANALGES/ANTIPIRETICO', 'Ketoprofeno 2,5% Gel 30 g/Tubo 1/Caja (Ramos)', 104);
INSERT INTO `articulos` VALUES ('10301162', 'ANALGES/ANTIPIRETICO', 'Metamizol 300 mg Supositorios 10/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10301182', 'ANALGES/ANTIPIRETICO', 'indometacina 100 mg Supositorios 6/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10301192', 'ANALGES/ANTIPIRETICO', 'Ketorolaco 10 mg Tab. Recubierta 10/Caja (Ramos)', 1);
INSERT INTO `articulos` VALUES ('10301212', 'ANALGES/ANTIPIRETICO', 'Piroxicam 20 mg Capsula 100/Caja (Ramos)', 11);
INSERT INTO `articulos` VALUES ('10301222', 'ANALGES/ANTIPIRETICO', 'Piroxicam 0.5% Gel 30 g/Tubo 1/Caja (Ramos)', 100);
INSERT INTO `articulos` VALUES ('10303012', 'ANTIASMAT/RESPIRATOR', 'ambroxol 15 mg/5 ml Jarabe 120 ml/Frasco 1/Caja (Ramos)', 717);
INSERT INTO `articulos` VALUES ('10303022', 'ANTIASMAT/RESPIRATOR', 'ambroxol + Clenbuterol 7.5 mg x 0.005 mg/5 ml Jarabe 120 ml/Frasco 1/Caja (Ramos)', 1698);
INSERT INTO `articulos` VALUES ('10303031', 'ANTIASMAT/RESPIRATOR', 'ambroxol + Salbutamol 15 mg x 2 mg/5 ml Jarabe 120 ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10303032', 'ANTIASMAT/RESPIRATOR', 'ambroxol + Clenbuterol15 mg x 0.01 mg/5 ml Jarabe 120 ml/Frasco 1/Caja (Ramos)', 653);
INSERT INTO `articulos` VALUES ('10303041', 'ANTIASMAT/RESPIRATOR', 'Bromuro de ipratropio 0.025% Sol. para nebulizar 20 ml/Frasco unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10303042', 'ANTIASMAT/RESPIRATOR', 'Bromuro de ipratropio 0.025% Sol. para nebulizar 20 ml/Frasco 1/Caja (Ramos)', 970);
INSERT INTO `articulos` VALUES ('10303051', 'ANTIASMAT/RESPIRATOR', 'ambroxol + Clenbuterol 15 mg x 0.01 mg/5 ml Jarabe DiaBeTiCoS 120 ml/Frasco 1/Caja (Ramos)', 247);
INSERT INTO `articulos` VALUES ('10303052', 'ANTIASMAT/RESPIRATOR', 'expectobron (Dextrometorfano) 30 mg/15 ml Jarabe 120 ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10303062', 'ANTIASMAT/RESPIRATOR', 'oximetazolina 0.025% Solucion Nasal tas 20 ml/Frasco 1/Caja (Ramos)', 121);
INSERT INTO `articulos` VALUES ('10303072', 'ANTIASMAT/RESPIRATOR', 'oximetazolina 0.05% Solucion Nasal tas 20 ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10303082', 'ANTIASMAT/RESPIRATOR', 'Prednisona 5 mg Tabletas 100/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10303092', 'ANTIASMAT/RESPIRATOR', 'Prednisona 50 mg Tabletas 100/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10303102', 'ANTIASMAT/RESPIRATOR', 'Salbutamol 2 mg/5 ml Jarabe 120 ml/Frasco 1/Caja (Ramos)', 364);
INSERT INTO `articulos` VALUES ('10303111', 'ANTIASMAT/RESPIRATOR', 'Salbutamol 0.5% Sol. para nebulizar 20 ml/Frasco unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10303112', 'ANTIASMAT/RESPIRATOR', 'Salbutamol 0.5% Sol. para nebulizar 20 ml/Frasco 1/Caja (Ramos)', 725);
INSERT INTO `articulos` VALUES ('10303122', 'ANTIASMAT/RESPIRATOR', 'Prednisolona 5 mg/5 ml Sol. oral 60 ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10303131', 'ANTIASMAT/RESPIRATOR', 'Prednisolona 15 mg/5 ml Sol. oral 60 ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10303132', 'ANTIASMAT/RESPIRATOR', 'Prednisolona 15 mg/5 ml Solucion oral 120 ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10304012', 'ANTIALERGICOS', 'Desloratadina 2.5 mg/5 ml Jarabe 60 ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10304021', 'ANTIALERGICOS', 'Desloratadina 5 mg Tabletas Recubiertas 10/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10304032', 'ANTIALERGICOS', 'Difenhidramina 12.5 mg/5 ml Jarabe 120 ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10304042', 'ANTIALERGICOS', 'Difenhidramina 25 mg Tabletas 100/Caja (Ramos)', 72);
INSERT INTO `articulos` VALUES ('10304052', 'ANTIALERGICOS', 'Ketomed (Ketotifeno) 1 mg/5 ml Jarabe 120 ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10304062', 'ANTIALERGICOS', 'Ketomed (Ketotifeno) 1 mg Tabletas 100/Caja (Ramos)', 186);
INSERT INTO `articulos` VALUES ('10304072', 'ANTIALERGICOS', 'Loratadina 5 mg/5 ml Jarabe 60 ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10304082', 'ANTIALERGICOS', 'Loratadina 10 mg Tabletas 100/Caja (Ramos)', 90);
INSERT INTO `articulos` VALUES ('10304091', 'ANTIALERGICOS', 'Dexametasona 0.5 mg Tableta 100/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305012', 'ANTIBIOTICOS', 'aziram (azitromicina) 500 mg Capsulas 3/Caja (Ramos)', 543);
INSERT INTO `articulos` VALUES ('10305022', 'ANTIBIOTICOS', 'Cefadroxilo 250 mg/5ml PPSo 60ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305032', 'ANTIBIOTICOS', 'Cefadroxilo 500 mg Capsulas 100/Caja (Ramos)', 42);
INSERT INTO `articulos` VALUES ('10305042', 'ANTIBIOTICOS', 'Cefixima 400 mg Capsulas 20/Caja (Ramos)', 1);
INSERT INTO `articulos` VALUES ('10305052', 'ANTIBIOTICOS', 'Cefixima 100 mg/5 ml Polvo para Susp. oral 50 ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305061', 'ANTIBIOTICOS', 'C-Falex (Cefalexina) 500 mg Capsulas unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305062', 'ANTIBIOTICOS', 'C-Falex (Cefalexina) 500 mg Capsulas 40/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305063', 'ANTIBIOTICOS', 'C-Falex (Cefalexina) 500 mg Capsulas 100/Caja (Ramos)', 113);
INSERT INTO `articulos` VALUES ('10305091', 'ANTIBIOTICOS', 'Dicloxam (Dicloxacilina) 125 mg/5 ml Polvo para Susp. oral 100 ml/Frasco unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305092', 'ANTIBIOTICOS', 'Dicloxam (Dicloxacilina) 125 mg/5 ml Polvo para Susp. oral 60 ml/Frasco 1/Caja (Ramos)', 199);
INSERT INTO `articulos` VALUES ('10305101', 'ANTIBIOTICOS', 'Dicloxam (Dicloxacilina) 500 mg Capsula unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305103', 'ANTIBIOTICOS', 'Dicloxam (Dicloxacilina) 500 mg Capsula 100/Caja (Ramos)', 92);
INSERT INTO `articulos` VALUES ('10305111', 'ANTIBIOTICOS', 'Doxitab (Doxiciclina) 100 mg Tabletas unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305112', 'ANTIBIOTICOS', 'Doxitab (Doxiciclina) 100 mg Tabletas 100/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305121', 'ANTIBIOTICOS', 'eritromicina 250 mg/5 ml Polvo para Susp. oral 60 ml/Frasco unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305122', 'ANTIBIOTICOS', 'eritromicina 250 mg/5 ml Polvo para Susp. oral 60 ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305131', 'ANTIBIOTICOS', 'eritromicina 500 mg Capleta unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305132', 'ANTIBIOTICOS', 'eritromicina 500 mg Capleta 100/Caja (Ramos)', 22);
INSERT INTO `articulos` VALUES ('10305141', 'ANTIBIOTICOS', 'Furazolidona 50 mg/5 ml Suspension oral 120 ml/Frasco unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305142', 'ANTIBIOTICOS', 'Furazolidona 50 mg/5 ml Suspension oral 120 ml/Frasco 1/Caja (Ramos)', 1182);
INSERT INTO `articulos` VALUES ('10305152', 'ANTIBIOTICOS', 'Furazolidona 100 mg Tabletas 100/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305153', 'ANTIBIOTICOS', 'Furazolidona 100 mg Tabletas unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305161', 'ANTIBIOTICOS', 'amoxicilina 250 mg/5 ml Polvo para Susp. oral 100 ml/Frasco unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305162', 'ANTIBIOTICOS', 'Ramox (amoxicilina) 250 mg/5 ml Polvo para Susp. oral 60 ml/Frasco 1/Caja (Ramos)', 536);
INSERT INTO `articulos` VALUES ('10305163', 'ANTIBIOTICOS', 'amoxicilina 250 mg/5 ml Polvo para Susp. oral 60 ml/Frasco 1/Caja + Jeringa Dosificadora (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305165', 'ANTIBIOTICOS', 'amoxicilina 250 mg/5 ml Polvo para Susp. oral 100 ml/Frasco 1/Caja + Jeringa Dosificadora (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305173', 'ANTIBIOTICOS', 'Trimexam (Trimetoprim/Sulfametoxazol) 40mg x 200mg/5ml Suspension oral 100 ml/Frasco 1/Caja (Ramos)', 531);
INSERT INTO `articulos` VALUES ('10305191', 'ANTIBIOTICOS', 'Claram (Claritromicina) 250 mg/5 ml Polvo para Susp. oral 60 ml/Frasco 1/Caja + Copa Dosificadora (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305192', 'ANTIBIOTICOS', 'aziram (azitromicina) 200 mg/5 ml Polvo para Susp. oral 15 ml/Frasco 1/Caja (Ramos)', 244);
INSERT INTO `articulos` VALUES ('10305202', 'ANTIBIOTICOS', 'Clindamicina 300 mg Capsulas 10/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305203', 'ANTIBIOTICOS', 'Clindamicina 300 mg Capsulas 20/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305204', 'ANTIBIOTICOS', 'Clindamicina 300 mg Capsulas unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305211', 'ANTIBIOTICOS', 'Clindamicina 1% Locion 30 ml/Frasco (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305212', 'ANTIBIOTICOS', 'Clindamicina 1% Locion Topica Spray 30 ml/Frasco 1/Caja (Ramos)', 40);
INSERT INTO `articulos` VALUES ('10305221', 'ANTIBIOTICOS', 'Clindamicina 2% Crema Vaginal c/aplicador 30 g/Tubo 1/Caja (Ramos)', 827);
INSERT INTO `articulos` VALUES ('10305241', 'ANTIBIOTICOS', 'Ciprofloxacina 0.2% Solucion otica/Frasco 10ml/unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305242', 'ANTIBIOTICOS', 'Ciprofloxacina 0.2% Solucion otica/Frasco 20ml/unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305251', 'ANTIBIOTICOS', 'Trimetoprim/Sulfa 160 mg/800 mg Capleta unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10305270', 'ORTODONCIA', 'eritromicina 500mg Cja x 48 cap', 0);
INSERT INTO `articulos` VALUES ('10306011', 'ANTICOLVUS/ANTIDEPRE', 'Valproato Sodico 250 mg/5 ml Solucion oral 120 ml/Frasco unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10306012', 'ANTICOLVUS/ANTIDEPRE', 'Valproato Sodico 250 mg/5 ml Solucion oral 120 ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10307011', 'ANTIMICOTICOS', 'Clotrimazol 1% Crema 20 g/Tubo unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10307012', 'ANTIMICOTICOS', 'Clotrimazol 1% Crema 20 g/Tubo 1/Caja (Ramos)', 3);
INSERT INTO `articulos` VALUES ('10307021', 'ANTIMICOTICOS', 'Clotrimazol 1% Crema Vaginal c/aplicador 30 g/Tubo 1/Caja (Ramos)', 130);
INSERT INTO `articulos` VALUES ('10307032', 'ANTIMICOTICOS', 'Clotrimazol 1% Solucion Topica 30 ml/Frasco (Ramos)', 181);
INSERT INTO `articulos` VALUES ('10307042', 'ANTIMICOTICOS', 'Clotrimazol 100 mg ovulos 10/Caja (Ramos)', 1238);
INSERT INTO `articulos` VALUES ('10307051', 'ANTIMICOTICOS', 'Poranox-H (Bifonazol) 1% Talco 50g/Frasco (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10307052', 'ANTIMICOTICOS', 'Clotrimazol 500 mg ovulos 1/Caja (Ramos)', 1018);
INSERT INTO `articulos` VALUES ('10307061', 'ANTIMICOTICOS', 'Nistatina 100,000 ui/ml Solucion oral tas 30 ml/Frasco unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10307062', 'ANTIMICOTICOS', 'Clotrimazol 1% Crema 30 g/Pomo (Ramos)', 1089);
INSERT INTO `articulos` VALUES ('10307072', 'ANTIMICOTICOS', 'Fluoram (Fluconazol) 150 mg Capsula 2/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10307082', 'ANTIMICOTICOS', 'Ketoconazol 2% Crema 20 g/Tubo 1/Caja (Ramos)', 289);
INSERT INTO `articulos` VALUES ('10307092', 'ANTIMICOTICOS', 'Miconazol 2% Crema vaginal 30 Gr/Tubo 1/Caja  (Ramos)', 1566);
INSERT INTO `articulos` VALUES ('10307101', 'ANTIMICOTICOS', 'Nistatina 100,000 ui/ml Sol. oral 30 ml/Frasco unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10307102', 'ANTIMICOTICOS', 'Nistatina 100,000 ui/ml Sol. oral 30 ml/Frasco 1/Caja (Ramos)', 787);
INSERT INTO `articulos` VALUES ('10307112', 'ANTIMICOTICOS', 'Nistatina 100,000 ui ovulo 14/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10307121', 'ANTIMICOTICOS', 'Bifonazol 1% Solucion Topica 30ml/Frasco und. (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10307122', 'ANTIMICOTICOS', 'Nistatina/Tinidazol (100,000 ui/150 mg) ovulo 14/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10307123', 'ANTIMICOTICOS', 'Bifonazol 1% Solucion Topica 30ml/Frasco 1/Caja + Bomba Rociadora (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10307132', 'ANTIMICOTICOS', 'Nistatina/Metronidazol (100,000 ui/500 mg) ovulo 14/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10307142', 'ANTIMICOTICOS', 'Ketoconazol 400 mg ovulo 3/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10308012', 'ANTIPARASITARIOS', 'aldal (albendazol) 100 mg/5 ml Suspension oral 20 ml/Frasco (Ramos)', 3996);
INSERT INTO `articulos` VALUES ('10308022', 'ANTIPARASITARIOS', 'Mebendazol 100 mg Tabletas 100/Caja (Ramos)', 184);
INSERT INTO `articulos` VALUES ('10308032', 'ANTIPARASITARIOS', 'Mebendazol 100 mg/5 ml Suspension oral 30 ml/Frasco (Ramos)', 1);
INSERT INTO `articulos` VALUES ('10308041', 'ANTIPARASITARIOS', 'Metronidazol 125 mg/5ml Suspension oral 120 ml/Frasco unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10308042', 'ANTIPARASITARIOS', 'Metronidazol 125 mg/5 ml Suspension oral 120 ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10308050', 'ANTIPARASITARIOS', 'Tinidazol 500 mg Capleta Recubierta unidad  (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10308052', 'ANTIPARASITARIOS', 'Metronidazol 500 mg Capleta Recubierta 100/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10308062', 'ANTIPARASITARIOS', 'Metronidazol 500 mg ovulo 10/Caja  (Ramos)', 264);
INSERT INTO `articulos` VALUES ('10308072', 'ANTIPARASITARIOS', 'Metronidazol 0.75% Gel 30 g/Tubo 1/Caja (Ramos)', 43);
INSERT INTO `articulos` VALUES ('10308082', 'ANTIPARASITARIOS', 'Tinidazol 500 mg Capleta Recubierta 100/Caja Ramos)', 49);
INSERT INTO `articulos` VALUES ('10308091', 'ANTIPARASITARIOS', 'Clotrimazol/Tinidazol (100 mg/150 mg) ovulo 10/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10308101', 'ANTIPARASITARIOS', 'Clotrimazol/Betametasona (1 %/0.05 %) Crema 20 g/Tubo 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10309011', 'ANTIVIRAL/ANTIRETROV', 'Oseltamivir 12mg/ml Polvo para Reconstituir Suspension Sabor Banano 75ml/Frasco Unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10309021', 'ANTIVIRAL/ANTIRETROV', 'oseltamivir 75 mg Capsula unidad  (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10309022', 'ANTIVIRAL/ANTIRETROV', 'oseltamivir 75 mg Capsula 10/Caja (Ramos)', 667);
INSERT INTO `articulos` VALUES ('10309031', 'ANTIVIRAL/ANTIRETROV', 'aciclovir 400 mg Capsula unidad(Ramos)', 0);
INSERT INTO `articulos` VALUES ('10309041', 'ANTIVIRAL/ANTIRETROV', 'Oseltamivir 12mg/ml Polvo para Reconstituir Suspension Sabor Banano 75ml/Frasco 1/Caja (Ramos)', 307);
INSERT INTO `articulos` VALUES ('10310011', 'CARDIOVASCULAR', 'Carvedilol 6.25 mg Tableta unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10310012', 'CARDIOVASCULAR', 'Carvedilol 6.25 mg Tableta 30/Caja (Ramos)', 2457);
INSERT INTO `articulos` VALUES ('10310021', 'CARDIOVASCULAR', 'Carvedilol 25 mg Tableta unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10310022', 'CARDIOVASCULAR', 'Carvedilol 25 mg Tableta 30/Caja (Ramos)', 3410);
INSERT INTO `articulos` VALUES ('10310032', 'CARDIOVASCULAR', 'enaram (enalapril) 10 mg Tableta 100/Caja (Ramos)', 69);
INSERT INTO `articulos` VALUES ('10310042', 'CARDIOVASCULAR', 'enaram (enalapril) 20 mg Tableta 100/Caja  (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10310052', 'CARDIOVASCULAR', 'irbesartan 300 mg Capleta 30/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10310061', 'CARDIOVASCULAR', 'acido acetilsalicilico 100 mg Tableta unidad  (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10310081', 'CARDIOVASCULAR', 'Hidroclorotiazida 50 mg Tableta unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10310082', 'CARDIOVASCULAR', 'Hidroclorotiazida 50 mg Tableta 100/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10311012', 'DERMATOLOGICO', 'acido Salicilico 5% unguento 30 g/Pomo (Ramos)', 32);
INSERT INTO `articulos` VALUES ('10311022', 'DERMATOLOGICO', 'acido Salicilico 10% unguento 30 g/Pomo (Ramos)', 92);
INSERT INTO `articulos` VALUES ('10311032', 'DERMATOLOGICO', 'Benzoato de Bencilo 25% Locion 120 ml/Frasco (Ramos)', 17);
INSERT INTO `articulos` VALUES ('10311041', 'DERMATOLOGICO', 'Betametasona 0.1% Crema 20 g/Tubo unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10311042', 'DERMATOLOGICO', 'Betametasona 0.1% Crema 20 g/Tubo 1/Caja (Ramos)', 324);
INSERT INTO `articulos` VALUES ('10311051', 'DERMATOLOGICO', 'Tretinoina 0.025% Crema 30 g/ Tubo unidad (Ramos)', 587);
INSERT INTO `articulos` VALUES ('10311052', 'DERMATOLOGICO', 'Dexram (Dexametasona) 0.2% Crema 30 g/Pomo (Ramos)', 502);
INSERT INTO `articulos` VALUES ('10311061', 'DERMATOLOGICO', 'Betametasona 0.1% Crema 15 g/Pomo (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10311071', 'DERMATOLOGICO', 'Mupirocina 2% unguento 20 g/Tubo 1/Caja (Ramos)', 1);
INSERT INTO `articulos` VALUES ('10311082', 'DERMATOLOGICO', 'Pasta al agua 20% Crema 30 g/Pomo (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10311083', 'DERMATOLOGICO', 'Pasta al agua 20% Crema 40 g/Pomo (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10311092', 'DERMATOLOGICO', 'Zanate (Deltametrina) 0.219 mg Locion 30 ml/Frasco 1/Caja (Ramos)', 4440);
INSERT INTO `articulos` VALUES ('10311101', 'DERMATOLOGICO', 'acido Salicilico 40% unguento 30 g/Pomo (Ramos)', 26);
INSERT INTO `articulos` VALUES ('10311111', 'DERMATOLOGICO', 'eritromicina 4% Gel Topico 30 g/Tubo 1/Caja (Ramos)', 24);
INSERT INTO `articulos` VALUES ('10311112', 'DERMATOLOGICO', 'eritromicina 4% Gel Topico 30 g/Tubo unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10311121', 'DERMATOLOGICO', 'Mometasona 0.1% unguento 20 g/Tubo 1/Caja (Ramos)', 67);
INSERT INTO `articulos` VALUES ('10311122', 'DERMATOLOGICO', 'Mometasona 0.1% Solucion Topica Spray 30ml/Frasco 1/Caja (Ramos)', 2);
INSERT INTO `articulos` VALUES ('10311131', 'DERMATOLOGICO', 'Tretinoina 0.05% Crema 30 g/ Tubo unidad (Ramos)', 322);
INSERT INTO `articulos` VALUES ('10311142', 'DERMATOLOGICO', 'Sulfadiazina de Plata 1% Crema 20 g/Tubo (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10311144', 'DERMATOLOGICO', 'Sulfadiazina de Plata 1% Crema 30 g/Tubo (Ramos)', 302);
INSERT INTO `articulos` VALUES ('10311151', 'DERMATOLOGICO', 'Mometasona 0.1% Crema 15 g/Tubo 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10311152', 'DERMATOLOGICO', 'Dexram (Dexametasona) 0.2% Crema 20 g/Tubo 1/Caja (Ramos)', 209);
INSERT INTO `articulos` VALUES ('10311162', 'DERMATOLOGICO', 'Hidrocortisona 1% Crema 15 g/Tubo 1/Caja (Ramos)', 6378);
INSERT INTO `articulos` VALUES ('10311171', 'DERMATOLOGICO', 'Permetrina 5% Crema 20g/Tubo unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10311181', 'DERMATOLOGICO', 'Hidroquinona 4% Crema 30 g/Tubo 1/Caja (Ramos)', 135);
INSERT INTO `articulos` VALUES ('10311191', 'DERMATOLOGICO', 'urea 20% Crema 30 g/Tubo unidad (Ramos)', 163);
INSERT INTO `articulos` VALUES ('10311201', 'DERMATOLOGICO', 'Permetrina 5% Locion 100ml/Frasco 1/Caja (Ramos)', 132);
INSERT INTO `articulos` VALUES ('10311202', 'DERMATOLOGICO', 'Permetrina 5% Locion 60ml/Frasco 1/Caja (Ramos)', 64);
INSERT INTO `articulos` VALUES ('10311211', 'DERMATOLOGICO', 'Urea 10% Crema 30 g/Tubo 1/Caja (Ramos)', 282);
INSERT INTO `articulos` VALUES ('10312012', 'ENDOCRINOLOGICO', 'Glibentab (Glibenclamida) 5 mg Tableta 100/Caja  (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10312021', 'ENDOCRINOLOGICO', 'Metformina 500 mg Capleta 10/Blister (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10312022', 'ENDOCRINOLOGICO', 'Metformina 500 mg Capleta 30/Caja (Ramos)', 209);
INSERT INTO `articulos` VALUES ('10312023', 'ENDOCRINOLOGICO', 'Metformina 500 mg Capleta unidad (Ramos)', 356670);
INSERT INTO `articulos` VALUES ('10312042', 'ENDOCRINOLOGICO', 'Metformina 850 mg Capleta 30/Caja (Ramos)', 80);
INSERT INTO `articulos` VALUES ('10313010', NULL, 'Loperamida 2mg Tableta uND', 0);
INSERT INTO `articulos` VALUES ('10313012', 'GASTROINTESTINAL', 'Dimenhidrinato 50 mg Tableta 100/Caja  (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10313022', 'GASTROINTESTINAL', 'Dimenhidrinato 100 mg Supositorio 10/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10313032', 'GASTROINTESTINAL', 'Lansoprazol 30 mg Pellet Capsula 30/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10313041', 'GASTROINTESTINAL', 'esomeprazol 40 mg Capsula 30/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10313042', 'GASTROINTESTINAL', 'Loperamida 2 mg Tableta 100/Caja (Ramos)', 53);
INSERT INTO `articulos` VALUES ('10313043', 'GASTROINTESTINAL', 'Loperamida 2 mg Tableta unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10313052', 'GASTROINTESTINAL', 'Pantoprazol 40 mg Pellet Capsula 30/Caja (Ramos)', 152);
INSERT INTO `articulos` VALUES ('10313061', 'GASTROINTESTINAL', 'Dimenhidrinato 25 mg Supositorio 10/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10313071', 'GASTROINTESTINAL', 'Cimetidina 300 mg Tabletas 100/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10313072', 'GASTROINTESTINAL', 'omeprazol 40 mg Pellet Capsula 30/caja (Ramos)', 242);
INSERT INTO `articulos` VALUES ('10313081', 'GASTROINTESTINAL', 'Canela 100% natural 500 mg Capsulas 50/Frasco (Ramos)', 584);
INSERT INTO `articulos` VALUES ('10314021', 'GINECOLOG/OBSTETRICO', 'Clindamicina 100 mg + Ketoconazol 400 mg Ovulo 3/Caja (Ramos)', 172);
INSERT INTO `articulos` VALUES ('10315011', 'HEMATOLOGICO', 'Pre-Lac (acido Folico) 5 mg Tableta unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10315021', 'HEMATOLOGICO', 'Pre-Lac (acido Folico) 5 mg Tableta 100/Caja (Ramos)', 32);
INSERT INTO `articulos` VALUES ('10315031', 'HEMATOLOGICO', 'Sulfato Ferroso 25 mg/ml Solucion oral tas 30 ml/Frasco unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10315032', 'HEMATOLOGICO', 'Sulfato Ferroso 15 mg/0.6 ml Solucion oral tas 30 ml/Frasco (Ramos)', 1080);
INSERT INTO `articulos` VALUES ('10315041', 'HEMATOLOGICO', 'Sulfato Ferroso/ac. Folico (200 mg/0.4 mg) Capleta unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10315042', 'HEMATOLOGICO', 'Sulfato Ferroso/ac. Folico (200 mg/0.4 mg) Capleta 100/Caja (Ramos)', 913);
INSERT INTO `articulos` VALUES ('10315052', 'HEMATOLOGICO', 'Troxerutina 2% Gel Topico 30 g/Tubo 1/Caja (Ramos)', 12);
INSERT INTO `articulos` VALUES ('10315101', 'HEMATOLOGICO', 'Troxerutina 300 mg Capsula unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10315103', 'HEMATOLOGICO', 'Troxerutina 300 mg Capsula 100/Caja (Ramos)', 11);
INSERT INTO `articulos` VALUES ('10317012', 'NEUROLOGICOS', 'Risperidona 1 mg/ml Solucion oral 120 ml/Frasco 1/Caja (Ramos)', 44);
INSERT INTO `articulos` VALUES ('10317022', 'NEUROLOGICOS', 'Risperidona 3 mg Tableta 60/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10322012', 'VIAS URINARIAS', 'Fenazopiridina 100 mg Tableta 100/Caja  (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10322022', 'VIAS URINARIAS', 'Nitrofurantoina 100 mg Capsula 30/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10323021', 'VITAMINAS/MULTIVITAM', 'Tonogen (Vitaminas y Fluor) Sol. oral 30 ml/Frasco unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10323022', 'VITAMINAS/MULTIVITAM', 'Tonogen (Vit a, C, D3 y Fluor) Sol. oral 30 ml/Frasco 1/Caja (Ramos)', 33);
INSERT INTO `articulos` VALUES ('10323033', 'VITAMINAS/MULTIVITAM', 'Vita Forte (Vitaminas B1, B6, B12) Capsula 100/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10323041', 'VITAMINAS/MULTIVITAM', 'Piridoxina 50 mg Capsulas unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10323052', 'VITAMINAS/MULTIVITAM', 'enervit (acido Glutamico + Vit B1) Capsula 40/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10323053', 'VITAMINAS/MULTIVITAM', 'enervit (acido Glutamico + Vit B1) Capsulas 100/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10323201', 'VITAMINAS/MULTIVITAM', 'Vitamina a 25,000 ui Solucion oral 30ml/Frasco/ (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10324021', 'PSICOTROPICOS', 'Fenitoina 100 mg Capsula unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10324031', 'PSICOTROPICOS', 'Carbamazepina 200 mg Tableta unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10324032', 'PSICOTROPICOS', 'Carbamazepina 200 mg Tableta 30/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10324033', 'PSICOTROPICOS', 'Carbamazepina 200 mg Tableta 100/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10324041', 'PSICOTROPICOS', 'Fenitoina 125mg/5ml Suspension oral 120ml/Frasco 1/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10324051', 'PSICOTROPICOS', 'alprazolam 0.5 mg Tabletas 30/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10324081', 'PSICOTROPICOS', 'Clonazepam 2 mg Tabletas 30/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10324082', 'PSICOTROPICOS', 'Clonazepam 2 mg Tabletas 100/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10324091', 'PSICOTROPICOS', 'Fenitoina 100 mg Capsula 30/Caja (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10324101', 'PSICOTROPICOS', 'amitriptilina 25 mg Capsulas unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10326011', 'ANTIPALUDICO', 'Primaquina 5 mg Tableta unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10326021', 'ANTIPALUDICO', 'Primaquina 15 mg Tableta unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10330011', 'INMUNOSUPRESOR', 'Ciclosporina 100 mg Capsulas unidad (Ramos)', 0);
INSERT INTO `articulos` VALUES ('10413011', 'GASTROINTESTINAL', 'Ranitidina 50 mg/2 ml Sol. iny amp unidad (Gland Pharma)', 0);
INSERT INTO `articulos` VALUES ('10415011', 'HEMATOLOGICO', 'Heparina Sodica 5,000 ui/ ml Solucion inyectable 5 ml/Vial 1/Caja (Gland Pharma)', 0);
INSERT INTO `articulos` VALUES ('10415012', 'HEMATOLOGICO', 'enoxaparina 40 mg /0.4 ml Sol. iny Jeringa 1/Caja (Gland pharma)', 2713);
INSERT INTO `articulos` VALUES ('10415013', 'HEMATOLOGICO', 'Heparina Sodica 5,000 UI/ ml Solucion Inyectable 5 ml/Vial 25/Caja (Gland Pharma)', 467);
INSERT INTO `articulos` VALUES ('10417011', 'NEUROLOGICOS', 'Diazepam 10mg/2ml Sol iny. ampolla 10/Bandeja (Gland Pharma)', 0);
INSERT INTO `articulos` VALUES ('10417012', 'NEUROLOGICOS', 'Diazepam 10mg/2ml Solucion Inyectable 100 Ampollas/Caja (Gland Pharma)', 0);
INSERT INTO `articulos` VALUES ('10501012', 'ANALGES/ANTIPIRETICO', 'ibuprofeno 400 mg Tableta Recubierta 100/Caja (intermed)', 0);
INSERT INTO `articulos` VALUES ('10504012', 'ANTIALERGICOS', 'Loratadina 5mg/5ml Solucion oral 120ml/Frasco 1/Caja (intermed)', 0);
INSERT INTO `articulos` VALUES ('10505012', 'ANTIBIOTICOS', 'amox/ac. Clavulanico 250 mg/62.5 mg/5ml PPSo 60 ml/Frasco 1/Caja (intermed)', 1);
INSERT INTO `articulos` VALUES ('10505022', 'ANTIBIOTICOS', 'amoxicilina/ac. Clavulanico 875 mg/125 mg Tab Recub.14/Caja (intermed)', 0);
INSERT INTO `articulos` VALUES ('10505023', 'ANTIBIOTICOS', 'azitromicina 250 mg Tabletas Recubiertas 100/Caja (intermed)', 0);
INSERT INTO `articulos` VALUES ('10505031', 'ANTIBIOTICOS', 'eritromicina etilsuccinato 250mg/5ml Polvo para Suspension oral 100ml/Frasco 1/Caja (iNTeRMeD)', 3102);
INSERT INTO `articulos` VALUES ('10506012', 'ANTICOLVUS/ANTIDEPRE', 'Carbamazepina 200 mg Tableta 100/Caja (intermed)', 0);
INSERT INTO `articulos` VALUES ('10506022', 'ANTICOLVUS/ANTIDEPRE', 'imipramina 25 mg Tableta Recubierta 100/Caja (intermed)', 0);
INSERT INTO `articulos` VALUES ('10506032', 'ANTICOLVUS/ANTIDEPRE', 'Gabapentina 300 mg Tableta 30/Caja (intermed)', 2540);
INSERT INTO `articulos` VALUES ('10506033', 'ANTICOLVUS/ANTIDEPRE', 'Gabapentina 300 mg Tableta 100/Caja (intermed)', 1);
INSERT INTO `articulos` VALUES ('10506042', 'ANTICOLVUS/ANTIDEPRE', 'Gabapentina 600 mg Tableta Recubierta 20/Caja (intermed)', 4594);
INSERT INTO `articulos` VALUES ('10510012', 'CARDIOVASCULAR', 'Dixina 0.25 mg Tableta 100/Caja (intermed)', 773);
INSERT INTO `articulos` VALUES ('10510022', 'CARDIOVASCULAR', 'Metildopa 500 mg Tableta Recubierta 100/Caja (intermed)', 5974);
INSERT INTO `articulos` VALUES ('10513032', 'GASTROINTESTINAL', 'omeprazol 20 mg Pellet Capsula 100/Caja (intermed)', 30247);
INSERT INTO `articulos` VALUES ('10513033', 'GASTROINTESTINAL', 'omeprazol 20 mg Pellet Capsula 1,000/Caja (intermed)', 1);
INSERT INTO `articulos` VALUES ('10513034', 'GASTROINTESTINAL', 'omeprazol 20 mg Pellets Capsula 2/Caja (intermed)', 0);
INSERT INTO `articulos` VALUES ('10520011', 'REPOSITOR ELECTROLIT', 'Sales de Rehidratacion oral 28.1g/Sobre Polvo para 1 Litro Sabor Limon unidad (intermed)', 0);
INSERT INTO `articulos` VALUES ('10520012', 'REPOSITOR ELECTROLIT', 'Sales de Rehidratacion oral 28.1g/Sobre Polvo para 1 Litro Sabor Limon 20/Caja (intermed)', 5183);
INSERT INTO `articulos` VALUES ('10520031', 'REPOSITOR ELECTROLIT', 'Sales de Rehidratacion oral 28.1g/Sobre Polvo para 1 Litro Sabor uva 20/Caja (intermed)', 14727);
INSERT INTO `articulos` VALUES ('10520032', 'REPOSITOR ELECTROLIT', 'Sales de Rehidratacion oral 28.1g/Sobre Polvo para 1 Litro Sabor uva unidad (intermed)', 0);
INSERT INTO `articulos` VALUES ('10520042', 'REPOSITOR ELECTROLIT', 'Sales de Rehidratacion oral 28.1g/Sobre Polvo para 1 Litro Sabor Manzana 20/Caja (intermed)', 2912);
INSERT INTO `articulos` VALUES ('10522012', 'VIAS URINARIAS', 'Nitrofurantoina 100 mg Tableta 100/Caja (intermed)', 0);
INSERT INTO `articulos` VALUES ('10523013', 'VITAMINAS/MULTIVITAM', 'Calcio 600 mg + Colecalciferol 200 ui Tabletas 100/Caja (intermed)', 21);
INSERT INTO `articulos` VALUES ('10523023', 'VITAMINAS/MULTIVITAM', 'Calcio 600 mg Tabletas 100/Caja (intermed)', 0);
INSERT INTO `articulos` VALUES ('10601011', 'ANALGES/ANTIPIRETICO', 'Ketorolaco Trometamina 10 mg Tabletas Recubiertas 10/Caja (austin Pharma)', 0);
INSERT INTO `articulos` VALUES ('10605011', 'ANTIBIOTICOS', 'azitromicina 500 mg Tabletas Recubiertas 5/Caja (austin Pharma)', 0);
INSERT INTO `articulos` VALUES ('10605012', 'ANTIBIOTICOS', 'azitromicina 500 mg Tabletas Recubiertas 100/Caja (austin Pharma)', 0);
INSERT INTO `articulos` VALUES ('10606011', 'ANTICOLVUS/ANTIDEPRE', 'Paroxetina 20 mg Tabletas Recubiertas 30/Caja (austin Pharma)', 0);
INSERT INTO `articulos` VALUES ('10606012', 'ANTICOLVUS/ANTIDEPRE', 'Gabapentina 400 mg Tableta Recubierta 30/Caja (austin Pharma)', 0);
INSERT INTO `articulos` VALUES ('10606013', 'ANTICOLVUS/ANTIDEPRE', 'Gabapentina 400mg Tableta Recubierta 100/Caja (austin Pharma)', 0);
INSERT INTO `articulos` VALUES ('10606032', 'ANTICOLVUS/ANTIDEPRE', 'Paroxetina 20 mg Capleta 30/Caja (austin Pharma)', 0);
INSERT INTO `articulos` VALUES ('10610012', 'CARDIOVASCULAR', 'Clopidogrel 75 mg Tableta Recubierta 20/Caja (austin Pharma)', 0);
INSERT INTO `articulos` VALUES ('10610013', 'CARDIOVASCULAR', 'Clopidogrel 75mg Tableta Recubierta 100/Caja (austin Pharma)', 0);
INSERT INTO `articulos` VALUES ('10616012', 'METABOLICOS', 'Simvastatina 40 mg Capleta Recubierta  10/Caja (austin Pharma)', 0);
INSERT INTO `articulos` VALUES ('10624011', 'PSICOTROPICOS', 'Furosemida 40 mg Tableta 100/Caja (austin Pharma)', 0);
INSERT INTO `articulos` VALUES ('10704031', 'ANTIALERGICOS', 'Clorfeniramina Maleato 4 mg Tableta 20/Blister (Selectpharma)', 0);
INSERT INTO `articulos` VALUES ('11401012', 'ANALGES/ANTIPIRETICO', 'Paracetamol 500 mg Tabletas 1000/Caja (Huazhong)', 0);
INSERT INTO `articulos` VALUES ('11401023', 'ANALGES/ANTIPIRETICO', 'acetaminofen 500 mg Tabletas 100/Caja (Huazhong)', 5);
INSERT INTO `articulos` VALUES ('11401024', 'ANALGES/ANTIPIRETICO', 'acetaminofen 500 mg Tabletas 1,000/Caja (Huazhong)', 151);
INSERT INTO `articulos` VALUES ('11401032', 'ANALGES/ANTIPIRETICO', 'ibuprofeno 400 mg Tabletas Recubiertas 1000/Caja (Huazhong)', 0);
INSERT INTO `articulos` VALUES ('11401033', 'ANALGES/ANTIPIRETICO', 'Ibuprofeno 400 mg Tabletas Recubiertas 100/Caja (Huazhong)', 0);
INSERT INTO `articulos` VALUES ('11405011', 'ANTIBIOTICOS', 'Doxiciclina 100 mg Tabletas 1,000/Caja (Huazhong)', 510);
INSERT INTO `articulos` VALUES ('11405022', 'ANTIBIOTICOS', 'Ciprofloxacina 500 mg Tabletas Recubiertas 1000/Caja (Huazhong)', 191);
INSERT INTO `articulos` VALUES ('11408011', 'ANTIPARASITARIOS', 'Metronidazol 500 mg Tabletas 1000/Caja (Huazhong)', 242);
INSERT INTO `articulos` VALUES ('11408013', 'ANTIPARASITARIOS', 'Metronidazol 500 mg Tabletas 100/Caja (Huazhong)', 0);
INSERT INTO `articulos` VALUES ('11410013', 'CARDIOVASCULAR', 'acido acetilsalicilico 100 mg Tabletas 100/Caja (Huazhong)', 5);
INSERT INTO `articulos` VALUES ('11410014', 'CARDIOVASCULAR', 'acido acetilsalicilico 100 mg Tabletas 1,000/Caja (Huazhong)', 1);
INSERT INTO `articulos` VALUES ('11423013', 'VITAMINAS/MULTIVITAM', 'ViTaMiNa C 500MG TaBLeTaS ReCuBieRTaS 100/Caja (Huazhong)', 0);
INSERT INTO `articulos` VALUES ('11423014', 'VITAMINAS/MULTIVITAM', 'ViTaMiNa C 500MG TaBLeTaS ReCuBieRTaS 1000/Caja (Huazhong)', 138);
INSERT INTO `articulos` VALUES ('11423021', 'VITAMINAS/MULTIVITAM', 'Tiamina Clorhidrato 300 mg Tabletas 100/Caja (Huazhong)', 0);
INSERT INTO `articulos` VALUES ('11424011', 'PSICOTROPICOS', 'Diazepam 5 mg Tabletas 100/Caja (Huazhong)', 0);
INSERT INTO `articulos` VALUES ('11615011', 'HEMATOLOGICO', 'Hierro Sacarosa 100mg/5ml Solución Inyectable 5ml/Ampolla 5/Caja (Hencer)', 2195);
INSERT INTO `articulos` VALUES ('12403020', 'ANTIASMAT/RESPIRATOR', 'Beclometasona 50mcg/Dosis  aerosol 200 Puff/Frasco 1/Caja (MiDaS)', 0);
INSERT INTO `articulos` VALUES ('12403021', 'ANTIASMAT/RESPIRATOR', 'Beclometasona 250mcg/Dosis inhalador 200 Dosis/Frasco 1/Caja (MiDaS)', 0);
INSERT INTO `articulos` VALUES ('12601021', 'ANALGES/ANTIPIRETICO', 'Dolin Plus (Dexketoprofeno) 25 mg Tableta 20/Caja (Farkot)', 0);
INSERT INTO `articulos` VALUES ('12603011', 'ANTIASMAT/RESPIRATOR', 'Broflud Comp (expectorante) Jarabe 120 ml/Frasco 1/Caja (Farkot)', 0);
INSERT INTO `articulos` VALUES ('12603051', 'ANTIASMAT/RESPIRATOR', 'Fosfo Nervon (Reconstituyente) Sol.iny. 3 ml/ampolla 2/Caja (Farkot)', 0);
INSERT INTO `articulos` VALUES ('12604011', 'ANTIALERGICOS', 'allerd (Desloratadina) 2.5 mg/5 ml Jarabe 120 ml/Frasco 1/Caja (Farkot)', 0);
INSERT INTO `articulos` VALUES ('12605031', 'ANTIBIOTICOS', 'Dekafloxacina (Ciprofloxacina 500mg) Tableta 10/Caja (Farkot)', 0);
INSERT INTO `articulos` VALUES ('12613011', 'GASTROINTESTINAL', 'Digestol  Compuesto (Digestivo/antiflatulento) Capsulas 30/Caja (Farkot)', 0);
INSERT INTO `articulos` VALUES ('12613021', 'GASTROINTESTINAL', 'Digestol Forte (Digestivo/antflatulento) Capsulas 30/Caja (Farkot)', 0);
INSERT INTO `articulos` VALUES ('12613031', 'GASTROINTESTINAL', 'Digestol Gel (antiacido/antiflatulento) Suspension 200 ml/Frasco 1/Caja(Farkot)', 0);
INSERT INTO `articulos` VALUES ('12613041', 'GASTROINTESTINAL', 'Digestol Plus (Gastrocinetico/antiflatulento) Capsulas 30/Caja (Farkot)', 0);
INSERT INTO `articulos` VALUES ('12613051', 'GASTROINTESTINAL', 'Digexopan (Dimetilpolisiloxano) 20 mg/ml Suspension oral 40 ml/Frasco 1/Caja (Farkot)', 0);
INSERT INTO `articulos` VALUES ('12613052', 'GASTROINTESTINAL', 'Digexopan (Dimetilpolisiloxano) Formula Mejorada 100 mg/ml Suspension oral tas 40 ml/Frasco 1/Caja (Farkot)', 0);
INSERT INTO `articulos` VALUES ('12613061', 'GASTROINTESTINAL', 'Heloprazol (Lansoprazol) 30 mg Pellet Capsula 24/Caja (Farkot)', 0);
INSERT INTO `articulos` VALUES ('12623011', 'VITAMINAS/MULTIVITAM', 'Deka-C adulto (Vit: a,D,e,C) ampollas Bebibles 5 ml/amp. 2/Caja (Farkot)', 0);
INSERT INTO `articulos` VALUES ('12623021', 'VITAMINAS/MULTIVITAM', 'Deka-C adulto (Vit a,C,D,e)  5ml /amp. Beb 1/Caja (Farkot)', 0);
INSERT INTO `articulos` VALUES ('12623031', 'VITAMINAS/MULTIVITAM', 'Deka-C infantil (Vit: a,D,e,C) ampollas Bebibles 2 ml/amp. 1/Caja (Farkot)', 0);
INSERT INTO `articulos` VALUES ('12623041', 'VITAMINAS/MULTIVITAM', 'Fosfo Nervon (Reconstituyente) Capsulas 60/Caja (Farkot)', 0);
INSERT INTO `articulos` VALUES ('12623051', 'VITAMINAS/MULTIVITAM', 'Deka-C infantiL  2ml /aMP. Beb DoS/Caja (Farkot)', 2);
INSERT INTO `articulos` VALUES ('12623061', 'VITAMINAS/MULTIVITAM', 'Fosfo Nervon (Reconstituyente) Capsulas 20/Caja (Farkot)', 0);
INSERT INTO `articulos` VALUES ('12801011', 'ANALGES/ANTIPIRETICO', 'Dolofin adulto (analgesico/Vitamina B1) Tabletas 100/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12801021', 'ANALGES/ANTIPIRETICO', 'Dolofin Niño (acetaminofen) 80 mg Tabletas 100/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12801031', 'ANALGES/ANTIPIRETICO', 'Delor Niño 80 mg Tabletas Masticables 100/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12801041', 'ANALGES/ANTIPIRETICO', 'exfamol (Tenoxicam) 20 mg Tableta 30/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12801051', 'ANALGES/ANTIPIRETICO', 'Korin (antigripal) Solucion oral tas 30ml/Frasco 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12801061', 'ANALGES/ANTIPIRETICO', 'Milagrosa (acido acetilsalicilico) 400 mg Tabletas 100/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12801071', 'ANALGES/ANTIPIRETICO', 'Delor Flex (Naproxeno) 500 mg Tableta 50/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12801081', 'ANALGES/ANTIPIRETICO', 'Delor extrafuerte (acetaminofen 500 mg) Tabletas 100/Caja (Karnel)', 2);
INSERT INTO `articulos` VALUES ('12801091', 'ANALGES/ANTIPIRETICO', 'Delor antigripal Capletas 100/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12801101', 'ANALGES/ANTIPIRETICO', 'Dolofin antigripal Tabletas 100/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12801111', 'ANALGES/ANTIPIRETICO', 'Piroxil (Piroxicam) 20 mg Capsula 60/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12802401', 'PSICOTROPICOS', 'Rebasin 2mg  caja x 30 tab.', 0);
INSERT INTO `articulos` VALUES ('12803011', 'ANTIASMAT/RESPIRATOR', 'Broflem (ambroxol) 15 mg/5ml Jarabe 120 ml/Frasco 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12803021', 'ANTIASMAT/RESPIRATOR', 'Kaler 1 mg/5ml Jarabe 120ml/Frasco 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12803031', 'ANTIASMAT/RESPIRATOR', 'Sumobac Compuesto (Salbutamol/Guaifenesina) 1 mg x 50 mg/5 ml Jarabe 120 ml/Frasco 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12804011', 'ANTIALERGICOS', 'Klaromin 2.5mg/5ml Jarabe 60 ml/Frasco 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12804021', 'ANTIALERGICOS', 'Klaromin (Desloratadina) 5mg Tableta 10/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12805011', 'ANTIBIOTICOS', 'Ciflobac (Ciprofloxacina) 500 mg Tableta 10/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12805041', 'ANTIBIOTICOS', 'Tolvin (Levofloxacina) 500 mg Tableta 7/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12805051', 'ANTIBIOTICOS', 'Trimebac (Trimetoprim-Sulfametoxazol) 40 mg x 200 mg/5ml  Suspension oral 60 ml/Frasco 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12805061', 'ANTIBIOTICOS', 'Trimebac (Trimetoprim-Sulfametoxazol) 40 mg x 200 mg/5ml  Suspension oral 120 ml/Frasco 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12805071', 'ANTIBIOTICOS', 'Trimebac Forte Tabletas 100/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12805081', 'ANTIBIOTICOS', 'Zorca (Norfloxacina) 400 mg Tableta 20/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12806021', 'ANTICOLVUS/ANTIDEPRE', 'Luxen (Fluoxetina) 20 mg  Tableta 14/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12807011', 'ANTIMICOTICOS', 'Kemicol (Ketoconazol 2%) Shampoo 120 ml/Frasco 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12807021', 'ANTIMICOTICOS', 'Kemicol (Ketoconazol) 200 mg Tableta 10/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12807031', 'ANTIMICOTICOS', 'Kemicol (Ketoconazol) Crema 15 g/Tubo 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12808011', 'ANTIPARASITARIOS', 'amegil (Metronidazol) 125 mg/5ml Suspension oral 120 ml/Frasco 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12808021', 'ANTIPARASITARIOS', 'ametizol (Tinidazol) 500 mg Tabletas 40/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12808031', 'ANTIPARASITARIOS', 'ametizol Forte (Tinidazol) 1g Tabletas 24/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12808041', 'ANTIPARASITARIOS', 'Heli-2 (albendazol) 200 mg Tabletas Masticables 2/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12808051', 'ANTIPARASITARIOS', 'Comtel Compuesto (oxantel, Pirantel) 250 mg x 250 mg/5ml Suspension oral 15ml/Frasco 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12808061', 'ANTIPARASITARIOS', 'Comtel (Pirantel) 250 mg/5ml Suspension oral 15 ml/Frasco 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12808071', 'ANTIPARASITARIOS', 'amegil Forte (Metronidazol) 200mg/5ml Suspension oral 120ml/Frasco 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12808081', 'ANTIPARASITARIOS', 'Heli-2 (albendazol) 100 mg/5 ml Suspension oral 20 ml/Frasco 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12809011', 'ANTIVIRAL/ANTIRETROV', 'Filovex (aciclovir) 5% Crema 10 g/Tubo 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12809021', 'ANTIVIRAL/ANTIRETROV', 'Filovex (aciclovir) 250 mg/5ml Jarabe 120 ml/Frasco 1/Caja(Karnel)', 0);
INSERT INTO `articulos` VALUES ('12809031', 'ANTIVIRAL/ANTIRETROV', 'Filovex (aciclovir) 200 mg Tabletas 25/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12809041', 'ANTIVIRAL/ANTIRETROV', 'Filovex (aciclovir) 400 mg Tabletas 35/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12809051', 'ANTIVIRAL/ANTIRETROV', 'Filovex (aciclovir) 200 mg/5ml Suspension oral 120 ml/Frasco 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12810011', 'CARDIOVASCULAR', 'Cardio Delor (acido acetilsalicilico) 81 mg Tabletas 30/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12813011', 'GASTROINTESTINAL', 'ilomida (Loperamida) 2 mg Tabletas 48/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12817011', 'NEUROLOGICOS', 'Nocetan (Piracetam) 200 mg/ml Jarabe 120 ml/Frasco 1/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12817021', 'NEUROLOGICOS', 'Nocetan (Piracetam) 800 mg Tabletas 30/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12817031', 'NEUROLOGICOS', 'Tranbus (Citrato de Buspirona) 10mg Tab 20/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12824011', 'PSICOTROPICOS', 'Sedatival (Lorazepam) 2 mg Tableta 100/Caja (Karnel)', 0);
INSERT INTO `articulos` VALUES ('12901011', 'ANALGES/ANTIPIRETICO', 'acetaminofen 120 mg/5ml Jarabe 120 ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12901021', 'ANALGES/ANTIPIRETICO', 'ibuprofeno 400 mg Tableta Recubierta 50/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12901032', 'ANALGES/ANTIPIRETICO', 'ibuprofeno 600 mg Tableta Recubierta 50/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12901051', 'ANALGES/ANTIPIRETICO', 'Desinac (Diclofenac Sodico) 9mg/5ml Jarabe120ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12901061', 'ANALGES/ANTIPIRETICO', 'Desinac (Diclofenac Sodico)15 mg/1ml tas 20ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12901071', 'ANALGES/ANTIPIRETICO', 'indulan (Dexketoprofenol) 25mg Tableta 10/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12901091', 'ANALGES/ANTIPIRETICO', 'Desinac (Diclofenac Potasico) 50 mg Tableta 10/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12901101', 'ANALGES/ANTIPIRETICO', 'acetaminofen 500 mg Tableta 100/Caja (Lancasco)', 77);
INSERT INTO `articulos` VALUES ('12901111', 'ANALGES/ANTIPIRETICO', 'ibuprofeno 100mg/5ml Suspension 60 ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12903011', 'ANTIASMAT/RESPIRATOR', 'Brohmexina 4 mg/5ml Jarabe 120 ml/Frasco 1/Caja(Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12903021', 'ANTIASMAT/RESPIRATOR', 'expectorante Compuesto Jarabe 120 ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12903031', 'ANTIASMAT/RESPIRATOR', 'Hi-Miel (antitusivo natural) Jarabe 120 ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12903041', 'ANTIASMAT/RESPIRATOR', 'Salbutamol 2mg/5ml Solucion oral 120 ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12903051', 'ANTIASMAT/RESPIRATOR', 'expectorante Jarabe 120 ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12903061', 'ANTIASMAT/RESPIRATOR', 'Yedrax (Hedera helix) 35mg/5ml Solucion oral 120 ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12904031', 'ANTIALERGICOS', 'Sinhistan (Loratadina) 10 mg Tableta 10/Caja (Lancasco)', 32);
INSERT INTO `articulos` VALUES ('12904041', 'ANTIALERGICOS', 'Sinhistan (Loratadina) 5 mg/5ml Jarabe 100 ml/Frasco 1/Caja (Lancasco)', 126);
INSERT INTO `articulos` VALUES ('12904051', 'ANTIALERGICOS', 'Sinhistan Cort (Loratadina/Betametasona) 5 mg x 0.25 mg Tabletas 10/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12904061', 'ANTIALERGICOS', 'Sinhistan Cort (Loratadina/Betametasona) 5 mg x 0.25 mg/5ml Solucion oral 60ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12904071', 'ANTIALERGICOS', 'Tussilan (antitusivo) Jarabe 120 ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12904081', 'ANTIALERGICOS', 'Vianasol (Desloratadina) 5 mg Tabletas Recubiertas 10/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12904091', 'ANTIALERGICOS', 'Sinhistan D (Loratadina+Fenilefrina) 5mgx2.5mg/5ml Solucion s/cereza 100ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905011', 'ANTIBIOTICOS', 'aticef (Ceftriaxona) 0.5 g Polvo para Sol. iny. Combipack 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905021', 'ANTIBIOTICOS', 'aticef (Ceftriaxona) 1 g Polvo para Sol. iny. Combipack 1/Caja (Lancasco)', 91);
INSERT INTO `articulos` VALUES ('12905031', 'ANTIBIOTICOS', 'Clanic (amoxicilina/acido Clavulanico) 200 mg/28.5 mg Polvo para Susp. oral 70 ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905041', 'ANTIBIOTICOS', 'Clanic (amoxicilina/acido Clavulanico) 400 mg/57 mg Polvo para Susp. oral 70 ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905051', 'ANTIBIOTICOS', 'Clanic Bid (amoxicilina/acido Clavulanico) 875mg x 125mg Tabletas Recubiertas 10/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905061', 'ANTIBIOTICOS', 'Claribac (Claritromicina) 125mg/5ml Polvo para Suspension oral 50ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905071', 'ANTIBIOTICOS', 'Claribac (Claritromicina) 250mg/5ml Polvo para Suspension oral 50ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905081', 'ANTIBIOTICOS', 'Claribac (Claritromicina) 500 mg Tableta 10/Caja (Lancasco)', 69);
INSERT INTO `articulos` VALUES ('12905101', 'ANTIBIOTICOS', 'Dediacol (aminosidina) 125 mg/5ml Jarabe 60ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905111', 'ANTIBIOTICOS', 'Dediacol (aminosidina) 250 mg Tableta 60/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905121', 'ANTIBIOTICOS', 'etadex (Cefixima) 100 mg/5ml Polvo para Suspension oral 50 ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905131', 'ANTIBIOTICOS', 'etadex (Cefixima) 400 mg Capsulas 5/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905151', 'ANTIBIOTICOS', 'Loxilan (Levofloxacina) 500 mg Tabletas Recubiertas 7/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905161', 'ANTIBIOTICOS', 'Loxilan (Levofloxacina) 750 mg Tabletas Recubiertas 5/Caja (Lancasco)', 42);
INSERT INTO `articulos` VALUES ('12905171', 'ANTIBIOTICOS', 'Terabiol (ampicilina/Sulbactam) 1 g x 0.5 g Polvo para Sol. iny. Combipack 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905181', 'ANTIBIOTICOS', 'Proksi (Ciprofloxacina) 500 mg Tabletas 10/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905182', 'ANTIBIOTICOS', 'Proksi (Ciprofloxacina) 500 mg Tabletas 30/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905191', 'ANTIBIOTICOS', 'Terabiol  (ampicilina/Sulbactam) 147mg x 98 mg/5 ml Polvo para Susp. oral 70 ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905211', 'ANTIBIOTICOS', 'Terabiol (ampicilina/Sulbactan) 375 mg/147 mg Tableta 10/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905221', 'ANTIBIOTICOS', 'Cefadroxilo 250mg/5ml Polvo para Suspension oral 60ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905231', 'ANTIBIOTICOS', 'amoxicilina 500 mg Capsula 30/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905241', 'ANTIBIOTICOS', 'amoxicilina 250mg/5ml Suspension 80ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12905251', 'ANTIBIOTICOS', 'enterolan (Trimetoprim/Sulfametoxazol) 40mgx200mg/5ml Suspension 60ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12907010', 'ANTIBIOTICOS', 'Lanzat (azitromicina) 500 mg Tabletas Recubiertas 3/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12907012', 'ANTIMICOTICOS', 'Lanzat (azitromicina) 500 mg Tabletas Recubiertas 10/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12908011', 'ANTIPARASITARIOS', 'Nitazoxanida 100 mg/5ml PPSo 30ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12908021', 'ANTIPARASITARIOS', 'Nitazoxanida 500 mg Tabletas Recubiertas 6/caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12910011', 'CARDIOVASCULAR', 'Tensinor H (Valsartan/Hidroclorotiazida) 160 mg/25 mg Tabletas Recubiertas 20/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12910021', 'CARDIOVASCULAR', 'Tensinor H (Valsartan/Hidroclorotiazida) 160 mg/12.5 mg Tabletas Recubiertas 20/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12910031', 'CARDIOVASCULAR', 'Tensinor (Valsartan)160 mg Tabletas Recubiertas 20/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12911011', 'DERMATOLOGICO', 'Sarpiol (elimina piojos y liendres) Locion 60 ml/Frasco (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12911021', 'DERMATOLOGICO', 'Calamina Vitaminada Locion 75 ml/Frasco (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12911031', 'DERMATOLOGICO', 'Sarpiol (elimina piojos y liendres) shampoo 30 ml/Frasco (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12912011', 'ENDOCRINOLOGICO', 'adiabet (Glibenclamida) 5 mg Tableta 30/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12912012', 'ENDOCRINOLOGICO', 'adiabet (Glibenclamida) 5 mg Tableta 100/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12912021', 'ENDOCRINOLOGICO', 'adiabet Plus (Glibenclamida/Metformina) 5 mg/500 mg Tableta 30/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12912031', 'ENDOCRINOLOGICO', 'adiabet Plus (Glibenclamida/Metformina) 5 mg/1000 mg Tableta 30/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12912041', 'ENDOCRINOLOGICO', 'adiamet Plus (Metformina) 850 mg Tableta 30/Caja (Lancasco)', 109);
INSERT INTO `articulos` VALUES ('12912051', 'ENDOCRINOLOGICO', 'adiamyl (Glimepiride) 2 mg Tableta 20/Caja (Lancasco)', 20);
INSERT INTO `articulos` VALUES ('12912061', 'ENDOCRINOLOGICO', 'adiamyl (Glimepiride) 4 mg Tableta 20/Caja (Lancasco)', 124);
INSERT INTO `articulos` VALUES ('12912071', 'ENDOCRINOLOGICO', 'adiamyl Plus (Glimepiride/Metformina) 2 mg/1000 mg Tableta 20/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12912081', 'ENDOCRINOLOGICO', 'adiamyl Plus (Glimepiride/Metformina) 4 mg/1000 mg Tableta 20/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12913011', 'GASTROINTESTINAL', 'Dazel (Bromuro de otilonio) 40 mg Tableta 20/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12913021', 'GASTROINTESTINAL', 'Hulcer (Lansoprazol) 30 mg Capsula 20/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12913041', 'GASTROINTESTINAL', 'Lacteol (Lactobacilo) 160 mg Polvo para Sol. oral Sobres 6/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12913042', 'GASTROINTESTINAL', 'Lacteol (Lactobacilo) 160 mg Polvo para Sol. oral Sobres 30/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12913051', 'GASTROINTESTINAL', 'Lacteol Fort (Lactobacilo) 160 mg Polvo para Sol. oral Sobres 30/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12913061', 'GASTROINTESTINAL', 'Pridac (Levosulpride) 25 mg Tableta 30/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12913071', 'GASTROINTESTINAL', 'upral (esomeprazol) 40 mg Capsulas 14/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12913081', 'GASTROINTESTINAL', 'Lacteol Fort (Lactobacilo) 340 mg Capsulas 6/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12913091', 'GASTROINTESTINAL', 'Lacteol Fort (Lactobacilos) 340 mg Polvo para Susp. oral Sobres 6/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12913092', 'GASTROINTESTINAL', 'Lacteol Fort (Lactobacilos) 340 mg Polvo para Susp. oral Sobres 30/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12917011', 'NEUROLOGICOS', 'Passiflora Compuesta Jarabe 120 ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12917021', 'NEUROLOGICOS', 'Passiflora Compuesta Capletas 30/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12923011', 'VITAMINAS/MULTIVITAM', 'astroton Fem (Multivitaminico y antioxidante) Tableta 30/Caja (Lancasco)', 1);
INSERT INTO `articulos` VALUES ('12923021', 'VITAMINAS/MULTIVITAM', 'astroton H4 (Multivitaminico y Reconstituyente) Capsulas 30/Caja BaNDeaDo (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12923022', 'VITAMINAS/MULTIVITAM', 'astroton H4 (Multivitaminico y Reconstituyente) Capsulas 30/Caja S/B (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12923023', 'VITAMINAS/MULTIVITAM', 'astroton H4 (Multivitaminico y Reconstituyente) Capsulas 60/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12923031', 'VITAMINAS/MULTIVITAM', 'Calciolan D3 (Calcio/Vitamina D3) 315 mg x 200ui Tabletas 60/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12923041', 'VITAMINAS/MULTIVITAM', 'Dolo-Nervilan (Diclofenac/Vit Neurotropas) Tableta 100/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12923051', 'VITAMINAS/MULTIVITAM', 'Dolo-Nervilan (Diclofenac/ Vit Neurotropas) Solucion inyectable Combipack 2 amp/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12923061', 'VITAMINAS/MULTIVITAM', 'Laverina extrafuerte (Multivitaminico) Jarabe 240 ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12923071', 'VITAMINAS/MULTIVITAM', 'Materlan (Vitaminas Prenatales) Tabletas Recubiertas 30/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12923081', 'VITAMINAS/MULTIVITAM', 'Nervilan (Vitaminas Neurotropas) 25,000 Combipack 1 amp/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12923091', 'VITAMINAS/MULTIVITAM', 'Rabano Yodado (Rabano/Yodo/Hierro) Jarabe 240 ml/Frasco 1/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('12966001', 'Medica Yin', 'adiabet (Glibenclamida) 5 mg Tableta 30/Caja (Lancasco)', 0);
INSERT INTO `articulos` VALUES ('13201021', 'ANALGES/ANTIPIRETICO', 'Dolomil Flex (Fenadrina/Naproxeno) 35 mg x 275 mg Tabletas 50/Caja (Quimifar)', 0);
INSERT INTO `articulos` VALUES ('13202011', 'ANESTESICOS', 'amigdocaina(Cetilpiridinio HCl 1.0mg+oxibuprocaina 0.2mg) Tableta 8/Caja (Quimifar)', 2);
INSERT INTO `articulos` VALUES ('13202021', 'ANESTESICOS', 'anestil (Benzocaina, antipirina) Solucion tas de uso Topico 5ml/Frasco 12/Caja (Quimifar)', 978);
INSERT INTO `articulos` VALUES ('13203011', 'ANTIASMAT/RESPIRATOR', 'oxobron Jarabe 120 ml/Frasco 1/Caja (Quimifar)', 0);
INSERT INTO `articulos` VALUES ('13203021', 'ANTIASMAT/RESPIRATOR', 'Viropulmin 125mg/5ml Jarabe 120 ml/Frasco 1/Caja (Quimifar)', 0);
INSERT INTO `articulos` VALUES ('13207011', 'ANTIMICOTICOS', 'Q-Nistatina 100,000 ui/ml Solucion tas 30ml/Frasco 1/Caja (Quimifar)', 132);
INSERT INTO `articulos` VALUES ('13207021', 'ANTIMICOTICOS', 'Boratin (Talco) Polvo Medicado 50g/ Frasco (Quimifar)', 80);
INSERT INTO `articulos` VALUES ('13209011', 'ANTIVIRAL/ANTIRETROV', 'inmunoforce 250mg/5ml Jarabe 120ml/Frasco 1/Caja (Quimifar)', 117);
INSERT INTO `articulos` VALUES ('13211011', 'DERMATOLOGICO', 'Betaderm G.C. Crema Topica 15 g/Tubo 1/Caja (Quimifar)', 0);
INSERT INTO `articulos` VALUES ('13211021', 'DERMATOLOGICO', 'Kemasan (Sulfadiazina de plata) 1% Crema 15 g/Tubo 1/Caja (Quimifar)', 0);
INSERT INTO `articulos` VALUES ('13211031', 'DERMATOLOGICO', 'Cicatriderm (ac. acexamico + Neomicina) Crema 30g/Tubo 1/Caja (Quimifar)', 0);
INSERT INTO `articulos` VALUES ('13211041', 'DERMATOLOGICO', 'Gamesan 5% Crema Topica 60 g/Tubo 1/Caja (Quimifar)', 0);

-- ----------------------------
-- Table structure for cuotasmes
-- ----------------------------
DROP TABLE IF EXISTS `cuotasmes`;
CREATE TABLE `cuotasmes`  (
  `RUTA` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ARTICULO` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `DESCRIPCION` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CANTIDAD` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `VALOR` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cuotasmes
-- ----------------------------
INSERT INTO `cuotasmes` VALUES ('F02', '18801011', 'ergotamina Tartrato 1mg + Cafeina 100mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1133', '193586');
INSERT INTO `cuotasmes` VALUES ('F02', '18801021', 'Ketorolaco Trometamina 10 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '369', '55395');
INSERT INTO `cuotasmes` VALUES ('F02', '18801032', 'ibuprofeno 400 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '774', '26938');
INSERT INTO `cuotasmes` VALUES ('F02', '18803011', 'Teofilina 300 mg Tableta de Liberacion Prolongada 100/Caja (UNIMARK-India)', '2', '691');
INSERT INTO `cuotasmes` VALUES ('F02', '18806011', 'Topiramato 100 mg Tabletas Recubiertas 20/Caja (UNIMARK-India)', '20', '5272');
INSERT INTO `cuotasmes` VALUES ('F02', '18806021', 'Gabapentina 400mg Tableta Recubierta 100/Caja (UNIMARK-India)', '2', '651');
INSERT INTO `cuotasmes` VALUES ('F02', '18810011', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 100/Caja (UNIMARK-India)', '9', '887');
INSERT INTO `cuotasmes` VALUES ('F02', '18810012', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 30/Caja (UNIMARK-India)', '4', '126');
INSERT INTO `cuotasmes` VALUES ('F02', '18810021', 'Clopidogrel 75 mg Tableta Recubierta 20/Caja (UNIMARK-India)', '207', '12495');
INSERT INTO `cuotasmes` VALUES ('F02', '18810022', 'Clopidogrel 75 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '46', '13619');
INSERT INTO `cuotasmes` VALUES ('F02', '18811011', 'Hidroquinona 5% Crema 30g/Tubo 1/Caja (UNIMARK-India)', '44', '3708');
INSERT INTO `cuotasmes` VALUES ('F02', '18813011', 'ondansetron 8 mg Tabletas Recubiertas 10/Caja (UNIMARK-India)', '1', '332');
INSERT INTO `cuotasmes` VALUES ('F02', '18817011', 'Risperidona 1 mg Tabletas 30/Caja (UNIMARK-India)', '9', '997');
INSERT INTO `cuotasmes` VALUES ('F02', '18817021', 'Risperidona 2 mg Tabletas 30/Caja (UNIMARK-India)', '5', '972');
INSERT INTO `cuotasmes` VALUES ('F02', '18817031', 'Risperidona 3 mg Tabletas 30/Caja (UNIMARK-India)', '2', '445');
INSERT INTO `cuotasmes` VALUES ('F02', '18817041', 'acetazolamida 250 mg Tabletas 30/Caja (UNIMARK-India)', '5', '1055');
INSERT INTO `cuotasmes` VALUES ('F02', '18817051', 'Clorpromazina Clorhidrato 100 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '429');
INSERT INTO `cuotasmes` VALUES ('F02', '18822011', 'Furosemida 40 mg Tabletas 100/Caja (UNIMARK-India)', '55', '1598');
INSERT INTO `cuotasmes` VALUES ('F02', '18824011', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '12', '4113');
INSERT INTO `cuotasmes` VALUES ('F02', '18824012', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '41', '48960');
INSERT INTO `cuotasmes` VALUES ('F02', '18824031', 'Trihexifenidilo 5 mg Tabletas 100/Caja (UNIMARK-India)', '32', '4352');
INSERT INTO `cuotasmes` VALUES ('F02', '18825011', 'Finasteride 5 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '173', '14676');
INSERT INTO `cuotasmes` VALUES ('F04', '18801021', 'Ketorolaco Trometamina 10 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '16', '5519');
INSERT INTO `cuotasmes` VALUES ('F04', '18801032', 'ibuprofeno 400 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '851', '34043');
INSERT INTO `cuotasmes` VALUES ('F04', '18803011', 'Teofilina 300 mg Tableta de Liberacion Prolongada 100/Caja (UNIMARK-India)', '3', '1024');
INSERT INTO `cuotasmes` VALUES ('F04', '18806021', 'Gabapentina 400mg Tableta Recubierta 100/Caja (UNIMARK-India)', '2', '1404');
INSERT INTO `cuotasmes` VALUES ('F04', '18810011', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 100/Caja (UNIMARK-India)', '121', '15718');
INSERT INTO `cuotasmes` VALUES ('F04', '18810021', 'Clopidogrel 75 mg Tableta Recubierta 20/Caja (UNIMARK-India)', '21', '2630');
INSERT INTO `cuotasmes` VALUES ('F04', '18810022', 'Clopidogrel 75 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '3', '1586');
INSERT INTO `cuotasmes` VALUES ('F04', '18811011', 'Hidroquinona 5% Crema 30g/Tubo 1/Caja (UNIMARK-India)', '2', '231');
INSERT INTO `cuotasmes` VALUES ('F04', '18815011', 'Simvastatina 40 mg Capletas Recubiertas 100/Caja (UNIMARK-India)', '1', '859');
INSERT INTO `cuotasmes` VALUES ('F04', '18815012', 'Simvastatina 40 mg Capletas Recubiertas 10/Caja (UNIMARK-India)', '47', '3435');
INSERT INTO `cuotasmes` VALUES ('F04', '18817011', 'Risperidona 1 mg Tabletas 30/Caja (UNIMARK-India)', '1', '150');
INSERT INTO `cuotasmes` VALUES ('F04', '18817021', 'Risperidona 2 mg Tabletas 30/Caja (UNIMARK-India)', '2', '480');
INSERT INTO `cuotasmes` VALUES ('F04', '18817031', 'Risperidona 3 mg Tabletas 30/Caja (UNIMARK-India)', '0', '93');
INSERT INTO `cuotasmes` VALUES ('F04', '18822011', 'Furosemida 40 mg Tabletas 100/Caja (UNIMARK-India)', '258', '9790');
INSERT INTO `cuotasmes` VALUES ('F04', '18825011', 'Finasteride 5 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '0', '36');
INSERT INTO `cuotasmes` VALUES ('F15', '18801032', 'ibuprofeno 400 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '681', '28596');
INSERT INTO `cuotasmes` VALUES ('F07', '18801011', 'ergotamina Tartrato 1mg + Cafeina 100mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '928');
INSERT INTO `cuotasmes` VALUES ('F07', '18801021', 'Ketorolaco Trometamina 10 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '613');
INSERT INTO `cuotasmes` VALUES ('F07', '18801032', 'ibuprofeno 400 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '32', '1845');
INSERT INTO `cuotasmes` VALUES ('F07', '18803011', 'Teofilina 300 mg Tableta de Liberacion Prolongada 100/Caja (UNIMARK-India)', '5', '2073');
INSERT INTO `cuotasmes` VALUES ('F07', '18806011', 'Topiramato 100 mg Tabletas Recubiertas 20/Caja (UNIMARK-India)', '4', '2060');
INSERT INTO `cuotasmes` VALUES ('F07', '18806021', 'Gabapentina 400mg Tableta Recubierta 100/Caja (UNIMARK-India)', '22', '15544');
INSERT INTO `cuotasmes` VALUES ('F07', '18806032', 'Fluoxetina 20 mg Capsulas 30/Caja (UNIMARK-India)', '5', '941');
INSERT INTO `cuotasmes` VALUES ('F07', '18806041', 'Paroxetina 20 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '11', '3849');
INSERT INTO `cuotasmes` VALUES ('F07', '18810011', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 100/Caja (UNIMARK-India)', '7', '884');
INSERT INTO `cuotasmes` VALUES ('F07', '18810012', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 30/Caja (UNIMARK-India)', '6', '316');
INSERT INTO `cuotasmes` VALUES ('F07', '18810021', 'Clopidogrel 75 mg Tableta Recubierta 20/Caja (UNIMARK-India)', '43', '5724');
INSERT INTO `cuotasmes` VALUES ('F07', '18810022', 'Clopidogrel 75 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '6', '3117');
INSERT INTO `cuotasmes` VALUES ('F07', '18811011', 'Hidroquinona 5% Crema 30g/Tubo 1/Caja (UNIMARK-India)', '15', '1779');
INSERT INTO `cuotasmes` VALUES ('F07', '18813011', 'ondansetron 8 mg Tabletas Recubiertas 10/Caja (UNIMARK-India)', '5', '1830');
INSERT INTO `cuotasmes` VALUES ('F07', '18815011', 'Simvastatina 40 mg Capletas Recubiertas 100/Caja (UNIMARK-India)', '19', '11111');
INSERT INTO `cuotasmes` VALUES ('F07', '18815012', 'Simvastatina 40 mg Capletas Recubiertas 10/Caja (UNIMARK-India)', '50', '3827');
INSERT INTO `cuotasmes` VALUES ('F07', '18817011', 'Risperidona 1 mg Tabletas 30/Caja (UNIMARK-India)', '35', '4564');
INSERT INTO `cuotasmes` VALUES ('F07', '18817021', 'Risperidona 2 mg Tabletas 30/Caja (UNIMARK-India)', '22', '4370');
INSERT INTO `cuotasmes` VALUES ('F07', '18817031', 'Risperidona 3 mg Tabletas 30/Caja (UNIMARK-India)', '16', '3973');
INSERT INTO `cuotasmes` VALUES ('F07', '18817041', 'acetazolamida 250 mg Tabletas 30/Caja (UNIMARK-India)', '5', '779');
INSERT INTO `cuotasmes` VALUES ('F07', '18817051', 'Clorpromazina Clorhidrato 100 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '3', '917');
INSERT INTO `cuotasmes` VALUES ('F07', '18822011', 'Furosemida 40 mg Tabletas 100/Caja (UNIMARK-India)', '8', '329');
INSERT INTO `cuotasmes` VALUES ('F07', '18824011', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '4', '1592');
INSERT INTO `cuotasmes` VALUES ('F07', '18824012', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '1860');
INSERT INTO `cuotasmes` VALUES ('F07', '18824031', 'Trihexifenidilo 5 mg Tabletas 100/Caja (UNIMARK-India)', '0', '0');
INSERT INTO `cuotasmes` VALUES ('F07', '18825011', 'Finasteride 5 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '11', '1789');
INSERT INTO `cuotasmes` VALUES ('F08', '18801011', 'ergotamina Tartrato 1mg + Cafeina 100mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '1026');
INSERT INTO `cuotasmes` VALUES ('F08', '18801021', 'Ketorolaco Trometamina 10 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '678');
INSERT INTO `cuotasmes` VALUES ('F08', '18801032', 'ibuprofeno 400 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '35', '2040');
INSERT INTO `cuotasmes` VALUES ('F08', '18803011', 'Teofilina 300 mg Tableta de Liberacion Prolongada 100/Caja (UNIMARK-India)', '6', '2291');
INSERT INTO `cuotasmes` VALUES ('F08', '18806011', 'Topiramato 100 mg Tabletas Recubiertas 20/Caja (UNIMARK-India)', '4', '2276');
INSERT INTO `cuotasmes` VALUES ('F08', '18806021', 'Gabapentina 400mg Tableta Recubierta 100/Caja (UNIMARK-India)', '25', '17180');
INSERT INTO `cuotasmes` VALUES ('F08', '18806032', 'Fluoxetina 20 mg Capsulas 30/Caja (UNIMARK-India)', '6', '1040');
INSERT INTO `cuotasmes` VALUES ('F08', '18806041', 'Paroxetina 20 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '12', '4254');
INSERT INTO `cuotasmes` VALUES ('F08', '18810011', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 100/Caja (UNIMARK-India)', '7', '977');
INSERT INTO `cuotasmes` VALUES ('F08', '18810012', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 30/Caja (UNIMARK-India)', '6', '350');
INSERT INTO `cuotasmes` VALUES ('F08', '18810021', 'Clopidogrel 75 mg Tableta Recubierta 20/Caja (UNIMARK-India)', '47', '6326');
INSERT INTO `cuotasmes` VALUES ('F08', '18810022', 'Clopidogrel 75 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '7', '3445');
INSERT INTO `cuotasmes` VALUES ('F08', '18811011', 'Hidroquinona 5% Crema 30g/Tubo 1/Caja (UNIMARK-India)', '16', '1967');
INSERT INTO `cuotasmes` VALUES ('F08', '18813011', 'ondansetron 8 mg Tabletas Recubiertas 10/Caja (UNIMARK-India)', '6', '2023');
INSERT INTO `cuotasmes` VALUES ('F08', '18815011', 'Simvastatina 40 mg Capletas Recubiertas 100/Caja (UNIMARK-India)', '21', '12280');
INSERT INTO `cuotasmes` VALUES ('F08', '18815012', 'Simvastatina 40 mg Capletas Recubiertas 10/Caja (UNIMARK-India)', '56', '4229');
INSERT INTO `cuotasmes` VALUES ('F08', '18817011', 'Risperidona 1 mg Tabletas 30/Caja (UNIMARK-India)', '38', '5045');
INSERT INTO `cuotasmes` VALUES ('F08', '18817021', 'Risperidona 2 mg Tabletas 30/Caja (UNIMARK-India)', '24', '4830');
INSERT INTO `cuotasmes` VALUES ('F08', '18817031', 'Risperidona 3 mg Tabletas 30/Caja (UNIMARK-India)', '18', '4391');
INSERT INTO `cuotasmes` VALUES ('F08', '18817041', 'acetazolamida 250 mg Tabletas 30/Caja (UNIMARK-India)', '6', '861');
INSERT INTO `cuotasmes` VALUES ('F08', '18817051', 'Clorpromazina Clorhidrato 100 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '3', '1013');
INSERT INTO `cuotasmes` VALUES ('F08', '18822011', 'Furosemida 40 mg Tabletas 100/Caja (UNIMARK-India)', '9', '364');
INSERT INTO `cuotasmes` VALUES ('F08', '18824011', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '5', '1759');
INSERT INTO `cuotasmes` VALUES ('F08', '18824012', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '2056');
INSERT INTO `cuotasmes` VALUES ('F08', '18824031', 'Trihexifenidilo 5 mg Tabletas 100/Caja (UNIMARK-India)', '0', '0');
INSERT INTO `cuotasmes` VALUES ('F08', '18825011', 'Finasteride 5 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '12', '1977');
INSERT INTO `cuotasmes` VALUES ('F05', '18801011', 'ergotamina Tartrato 1mg + Cafeina 100mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '733');
INSERT INTO `cuotasmes` VALUES ('F05', '18801021', 'Ketorolaco Trometamina 10 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '484');
INSERT INTO `cuotasmes` VALUES ('F05', '18801032', 'ibuprofeno 400 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '25', '1457');
INSERT INTO `cuotasmes` VALUES ('F05', '18803011', 'Teofilina 300 mg Tableta de Liberacion Prolongada 100/Caja (UNIMARK-India)', '4', '1636');
INSERT INTO `cuotasmes` VALUES ('F05', '18806011', 'Topiramato 100 mg Tabletas Recubiertas 20/Caja (UNIMARK-India)', '3', '1626');
INSERT INTO `cuotasmes` VALUES ('F05', '18806021', 'Gabapentina 400mg Tableta Recubierta 100/Caja (UNIMARK-India)', '18', '12271');
INSERT INTO `cuotasmes` VALUES ('F05', '18806032', 'Fluoxetina 20 mg Capsulas 30/Caja (UNIMARK-India)', '4', '743');
INSERT INTO `cuotasmes` VALUES ('F05', '18806041', 'Paroxetina 20 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '9', '3039');
INSERT INTO `cuotasmes` VALUES ('F05', '18810011', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 100/Caja (UNIMARK-India)', '5', '698');
INSERT INTO `cuotasmes` VALUES ('F05', '18810012', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 30/Caja (UNIMARK-India)', '4', '250');
INSERT INTO `cuotasmes` VALUES ('F05', '18810021', 'Clopidogrel 75 mg Tableta Recubierta 20/Caja (UNIMARK-India)', '34', '4519');
INSERT INTO `cuotasmes` VALUES ('F05', '18810022', 'Clopidogrel 75 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '5', '2461');
INSERT INTO `cuotasmes` VALUES ('F05', '18811011', 'Hidroquinona 5% Crema 30g/Tubo 1/Caja (UNIMARK-India)', '12', '1405');
INSERT INTO `cuotasmes` VALUES ('F05', '18813011', 'ondansetron 8 mg Tabletas Recubiertas 10/Caja (UNIMARK-India)', '4', '1445');
INSERT INTO `cuotasmes` VALUES ('F05', '18815011', 'Simvastatina 40 mg Capletas Recubiertas 100/Caja (UNIMARK-India)', '15', '8772');
INSERT INTO `cuotasmes` VALUES ('F05', '18815012', 'Simvastatina 40 mg Capletas Recubiertas 10/Caja (UNIMARK-India)', '40', '3021');
INSERT INTO `cuotasmes` VALUES ('F05', '18817011', 'Risperidona 1 mg Tabletas 30/Caja (UNIMARK-India)', '27', '3603');
INSERT INTO `cuotasmes` VALUES ('F05', '18817021', 'Risperidona 2 mg Tabletas 30/Caja (UNIMARK-India)', '17', '3450');
INSERT INTO `cuotasmes` VALUES ('F05', '18817031', 'Risperidona 3 mg Tabletas 30/Caja (UNIMARK-India)', '13', '3137');
INSERT INTO `cuotasmes` VALUES ('F05', '18817041', 'acetazolamida 250 mg Tabletas 30/Caja (UNIMARK-India)', '4', '615');
INSERT INTO `cuotasmes` VALUES ('F05', '18817051', 'Clorpromazina Clorhidrato 100 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '724');
INSERT INTO `cuotasmes` VALUES ('F05', '18822011', 'Furosemida 40 mg Tabletas 100/Caja (UNIMARK-India)', '6', '260');
INSERT INTO `cuotasmes` VALUES ('F05', '18824011', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '3', '1257');
INSERT INTO `cuotasmes` VALUES ('F05', '18824012', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '1469');
INSERT INTO `cuotasmes` VALUES ('F05', '18824031', 'Trihexifenidilo 5 mg Tabletas 100/Caja (UNIMARK-India)', '0', '0');
INSERT INTO `cuotasmes` VALUES ('F05', '18825011', 'Finasteride 5 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '9', '1412');
INSERT INTO `cuotasmes` VALUES ('F19', '18801011', 'ergotamina Tartrato 1mg + Cafeina 100mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '586');
INSERT INTO `cuotasmes` VALUES ('F19', '18801021', 'Ketorolaco Trometamina 10 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '387');
INSERT INTO `cuotasmes` VALUES ('F19', '18801032', 'ibuprofeno 400 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '20', '1165');
INSERT INTO `cuotasmes` VALUES ('F19', '18803011', 'Teofilina 300 mg Tableta de Liberacion Prolongada 100/Caja (UNIMARK-India)', '3', '1309');
INSERT INTO `cuotasmes` VALUES ('F19', '18806011', 'Topiramato 100 mg Tabletas Recubiertas 20/Caja (UNIMARK-India)', '2', '1301');
INSERT INTO `cuotasmes` VALUES ('F19', '18806021', 'Gabapentina 400mg Tableta Recubierta 100/Caja (UNIMARK-India)', '14', '9817');
INSERT INTO `cuotasmes` VALUES ('F19', '18806032', 'Fluoxetina 20 mg Capsulas 30/Caja (UNIMARK-India)', '3', '594');
INSERT INTO `cuotasmes` VALUES ('F19', '18806041', 'Paroxetina 20 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '7', '2431');
INSERT INTO `cuotasmes` VALUES ('F19', '18810011', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 100/Caja (UNIMARK-India)', '4', '558');
INSERT INTO `cuotasmes` VALUES ('F19', '18810012', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 30/Caja (UNIMARK-India)', '4', '200');
INSERT INTO `cuotasmes` VALUES ('F19', '18810021', 'Clopidogrel 75 mg Tableta Recubierta 20/Caja (UNIMARK-India)', '27', '3615');
INSERT INTO `cuotasmes` VALUES ('F19', '18810022', 'Clopidogrel 75 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '4', '1969');
INSERT INTO `cuotasmes` VALUES ('F19', '18811011', 'Hidroquinona 5% Crema 30g/Tubo 1/Caja (UNIMARK-India)', '9', '1124');
INSERT INTO `cuotasmes` VALUES ('F19', '18813011', 'ondansetron 8 mg Tabletas Recubiertas 10/Caja (UNIMARK-India)', '3', '1156');
INSERT INTO `cuotasmes` VALUES ('F19', '18815011', 'Simvastatina 40 mg Capletas Recubiertas 100/Caja (UNIMARK-India)', '12', '7017');
INSERT INTO `cuotasmes` VALUES ('F19', '18815012', 'Simvastatina 40 mg Capletas Recubiertas 10/Caja (UNIMARK-India)', '32', '2417');
INSERT INTO `cuotasmes` VALUES ('F19', '18817011', 'Risperidona 1 mg Tabletas 30/Caja (UNIMARK-India)', '22', '2883');
INSERT INTO `cuotasmes` VALUES ('F19', '18817021', 'Risperidona 2 mg Tabletas 30/Caja (UNIMARK-India)', '14', '2760');
INSERT INTO `cuotasmes` VALUES ('F19', '18817031', 'Risperidona 3 mg Tabletas 30/Caja (UNIMARK-India)', '10', '2509');
INSERT INTO `cuotasmes` VALUES ('F19', '18817041', 'acetazolamida 250 mg Tabletas 30/Caja (UNIMARK-India)', '3', '492');
INSERT INTO `cuotasmes` VALUES ('F19', '18817051', 'Clorpromazina Clorhidrato 100 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '579');
INSERT INTO `cuotasmes` VALUES ('F19', '18822011', 'Furosemida 40 mg Tabletas 100/Caja (UNIMARK-India)', '5', '208');
INSERT INTO `cuotasmes` VALUES ('F19', '18824011', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '3', '1005');
INSERT INTO `cuotasmes` VALUES ('F19', '18824012', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '1175');
INSERT INTO `cuotasmes` VALUES ('F19', '18824031', 'Trihexifenidilo 5 mg Tabletas 100/Caja (UNIMARK-India)', '0', '0');
INSERT INTO `cuotasmes` VALUES ('F19', '18825011', 'Finasteride 5 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '7', '1130');
INSERT INTO `cuotasmes` VALUES ('F06', '18801011', 'ergotamina Tartrato 1mg + Cafeina 100mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '733');
INSERT INTO `cuotasmes` VALUES ('F06', '18801021', 'Ketorolaco Trometamina 10 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '484');
INSERT INTO `cuotasmes` VALUES ('F06', '18801032', 'ibuprofeno 400 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '25', '1457');
INSERT INTO `cuotasmes` VALUES ('F06', '18803011', 'Teofilina 300 mg Tableta de Liberacion Prolongada 100/Caja (UNIMARK-India)', '4', '1636');
INSERT INTO `cuotasmes` VALUES ('F06', '18806011', 'Topiramato 100 mg Tabletas Recubiertas 20/Caja (UNIMARK-India)', '3', '1626');
INSERT INTO `cuotasmes` VALUES ('F06', '18806021', 'Gabapentina 400mg Tableta Recubierta 100/Caja (UNIMARK-India)', '18', '12271');
INSERT INTO `cuotasmes` VALUES ('F06', '18806032', 'Fluoxetina 20 mg Capsulas 30/Caja (UNIMARK-India)', '4', '743');
INSERT INTO `cuotasmes` VALUES ('F06', '18806041', 'Paroxetina 20 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '9', '3039');
INSERT INTO `cuotasmes` VALUES ('F06', '18810011', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 100/Caja (UNIMARK-India)', '5', '698');
INSERT INTO `cuotasmes` VALUES ('F06', '18810012', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 30/Caja (UNIMARK-India)', '4', '250');
INSERT INTO `cuotasmes` VALUES ('F06', '18810021', 'Clopidogrel 75 mg Tableta Recubierta 20/Caja (UNIMARK-India)', '34', '4519');
INSERT INTO `cuotasmes` VALUES ('F06', '18810022', 'Clopidogrel 75 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '5', '2461');
INSERT INTO `cuotasmes` VALUES ('F06', '18811011', 'Hidroquinona 5% Crema 30g/Tubo 1/Caja (UNIMARK-India)', '12', '1405');
INSERT INTO `cuotasmes` VALUES ('F06', '18813011', 'ondansetron 8 mg Tabletas Recubiertas 10/Caja (UNIMARK-India)', '4', '1445');
INSERT INTO `cuotasmes` VALUES ('F06', '18815011', 'Simvastatina 40 mg Capletas Recubiertas 100/Caja (UNIMARK-India)', '15', '8772');
INSERT INTO `cuotasmes` VALUES ('F06', '18815012', 'Simvastatina 40 mg Capletas Recubiertas 10/Caja (UNIMARK-India)', '40', '3021');
INSERT INTO `cuotasmes` VALUES ('F06', '18817011', 'Risperidona 1 mg Tabletas 30/Caja (UNIMARK-India)', '27', '3603');
INSERT INTO `cuotasmes` VALUES ('F06', '18817021', 'Risperidona 2 mg Tabletas 30/Caja (UNIMARK-India)', '17', '3450');
INSERT INTO `cuotasmes` VALUES ('F06', '18817031', 'Risperidona 3 mg Tabletas 30/Caja (UNIMARK-India)', '13', '3137');
INSERT INTO `cuotasmes` VALUES ('F06', '18817041', 'acetazolamida 250 mg Tabletas 30/Caja (UNIMARK-India)', '4', '615');
INSERT INTO `cuotasmes` VALUES ('F06', '18817051', 'Clorpromazina Clorhidrato 100 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '724');
INSERT INTO `cuotasmes` VALUES ('F06', '18822011', 'Furosemida 40 mg Tabletas 100/Caja (UNIMARK-India)', '6', '260');
INSERT INTO `cuotasmes` VALUES ('F06', '18824011', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '3', '1257');
INSERT INTO `cuotasmes` VALUES ('F06', '18824012', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '1469');
INSERT INTO `cuotasmes` VALUES ('F06', '18824031', 'Trihexifenidilo 5 mg Tabletas 100/Caja (UNIMARK-India)', '0', '0');
INSERT INTO `cuotasmes` VALUES ('F06', '18825011', 'Finasteride 5 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '9', '1412');
INSERT INTO `cuotasmes` VALUES ('F14', '18801011', 'ergotamina Tartrato 1mg + Cafeina 100mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '928');
INSERT INTO `cuotasmes` VALUES ('F14', '18801021', 'Ketorolaco Trometamina 10 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '613');
INSERT INTO `cuotasmes` VALUES ('F14', '18801032', 'ibuprofeno 400 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '32', '1845');
INSERT INTO `cuotasmes` VALUES ('F14', '18803011', 'Teofilina 300 mg Tableta de Liberacion Prolongada 100/Caja (UNIMARK-India)', '5', '2073');
INSERT INTO `cuotasmes` VALUES ('F14', '18806011', 'Topiramato 100 mg Tabletas Recubiertas 20/Caja (UNIMARK-India)', '4', '2060');
INSERT INTO `cuotasmes` VALUES ('F14', '18806021', 'Gabapentina 400mg Tableta Recubierta 100/Caja (UNIMARK-India)', '22', '15544');
INSERT INTO `cuotasmes` VALUES ('F14', '18806032', 'Fluoxetina 20 mg Capsulas 30/Caja (UNIMARK-India)', '5', '941');
INSERT INTO `cuotasmes` VALUES ('F14', '18806041', 'Paroxetina 20 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '11', '3849');
INSERT INTO `cuotasmes` VALUES ('F14', '18810011', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 100/Caja (UNIMARK-India)', '7', '884');
INSERT INTO `cuotasmes` VALUES ('F14', '18810012', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 30/Caja (UNIMARK-India)', '6', '316');
INSERT INTO `cuotasmes` VALUES ('F14', '18810021', 'Clopidogrel 75 mg Tableta Recubierta 20/Caja (UNIMARK-India)', '43', '5724');
INSERT INTO `cuotasmes` VALUES ('F14', '18810022', 'Clopidogrel 75 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '6', '3117');
INSERT INTO `cuotasmes` VALUES ('F14', '18811011', 'Hidroquinona 5% Crema 30g/Tubo 1/Caja (UNIMARK-India)', '15', '1779');
INSERT INTO `cuotasmes` VALUES ('F14', '18813011', 'ondansetron 8 mg Tabletas Recubiertas 10/Caja (UNIMARK-India)', '5', '1830');
INSERT INTO `cuotasmes` VALUES ('F14', '18815011', 'Simvastatina 40 mg Capletas Recubiertas 100/Caja (UNIMARK-India)', '19', '11111');
INSERT INTO `cuotasmes` VALUES ('F14', '18815012', 'Simvastatina 40 mg Capletas Recubiertas 10/Caja (UNIMARK-India)', '50', '3827');
INSERT INTO `cuotasmes` VALUES ('F14', '18817011', 'Risperidona 1 mg Tabletas 30/Caja (UNIMARK-India)', '35', '4564');
INSERT INTO `cuotasmes` VALUES ('F14', '18817021', 'Risperidona 2 mg Tabletas 30/Caja (UNIMARK-India)', '22', '4370');
INSERT INTO `cuotasmes` VALUES ('F14', '18817031', 'Risperidona 3 mg Tabletas 30/Caja (UNIMARK-India)', '16', '3973');
INSERT INTO `cuotasmes` VALUES ('F14', '18817041', 'acetazolamida 250 mg Tabletas 30/Caja (UNIMARK-India)', '5', '779');
INSERT INTO `cuotasmes` VALUES ('F14', '18817051', 'Clorpromazina Clorhidrato 100 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '3', '917');
INSERT INTO `cuotasmes` VALUES ('F14', '18822011', 'Furosemida 40 mg Tabletas 100/Caja (UNIMARK-India)', '8', '329');
INSERT INTO `cuotasmes` VALUES ('F14', '18824011', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '4', '1592');
INSERT INTO `cuotasmes` VALUES ('F14', '18824012', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '1860');
INSERT INTO `cuotasmes` VALUES ('F14', '18824031', 'Trihexifenidilo 5 mg Tabletas 100/Caja (UNIMARK-India)', '0', '0');
INSERT INTO `cuotasmes` VALUES ('F14', '18825011', 'Finasteride 5 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '11', '1789');
INSERT INTO `cuotasmes` VALUES ('F09', '18801011', 'ergotamina Tartrato 1mg + Cafeina 100mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '1123');
INSERT INTO `cuotasmes` VALUES ('F09', '18801021', 'Ketorolaco Trometamina 10 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '743');
INSERT INTO `cuotasmes` VALUES ('F09', '18801032', 'ibuprofeno 400 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '38', '2234');
INSERT INTO `cuotasmes` VALUES ('F09', '18803011', 'Teofilina 300 mg Tableta de Liberacion Prolongada 100/Caja (UNIMARK-India)', '6', '2509');
INSERT INTO `cuotasmes` VALUES ('F09', '18806011', 'Topiramato 100 mg Tabletas Recubiertas 20/Caja (UNIMARK-India)', '4', '2493');
INSERT INTO `cuotasmes` VALUES ('F09', '18806021', 'Gabapentina 400mg Tableta Recubierta 100/Caja (UNIMARK-India)', '27', '18816');
INSERT INTO `cuotasmes` VALUES ('F09', '18806032', 'Fluoxetina 20 mg Capsulas 30/Caja (UNIMARK-India)', '7', '1139');
INSERT INTO `cuotasmes` VALUES ('F09', '18806041', 'Paroxetina 20 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '13', '4659');
INSERT INTO `cuotasmes` VALUES ('F09', '18810011', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 100/Caja (UNIMARK-India)', '8', '1070');
INSERT INTO `cuotasmes` VALUES ('F09', '18810012', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 30/Caja (UNIMARK-India)', '7', '383');
INSERT INTO `cuotasmes` VALUES ('F09', '18810021', 'Clopidogrel 75 mg Tableta Recubierta 20/Caja (UNIMARK-India)', '52', '6929');
INSERT INTO `cuotasmes` VALUES ('F09', '18810022', 'Clopidogrel 75 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '8', '3773');
INSERT INTO `cuotasmes` VALUES ('F09', '18811011', 'Hidroquinona 5% Crema 30g/Tubo 1/Caja (UNIMARK-India)', '18', '2154');
INSERT INTO `cuotasmes` VALUES ('F09', '18813011', 'ondansetron 8 mg Tabletas Recubiertas 10/Caja (UNIMARK-India)', '7', '2216');
INSERT INTO `cuotasmes` VALUES ('F09', '18815011', 'Simvastatina 40 mg Capletas Recubiertas 100/Caja (UNIMARK-India)', '23', '13450');
INSERT INTO `cuotasmes` VALUES ('F09', '18815012', 'Simvastatina 40 mg Capletas Recubiertas 10/Caja (UNIMARK-India)', '61', '4632');
INSERT INTO `cuotasmes` VALUES ('F09', '18817011', 'Risperidona 1 mg Tabletas 30/Caja (UNIMARK-India)', '42', '5525');
INSERT INTO `cuotasmes` VALUES ('F09', '18817021', 'Risperidona 2 mg Tabletas 30/Caja (UNIMARK-India)', '27', '5290');
INSERT INTO `cuotasmes` VALUES ('F09', '18817031', 'Risperidona 3 mg Tabletas 30/Caja (UNIMARK-India)', '20', '4809');
INSERT INTO `cuotasmes` VALUES ('F09', '18817041', 'acetazolamida 250 mg Tabletas 30/Caja (UNIMARK-India)', '6', '943');
INSERT INTO `cuotasmes` VALUES ('F09', '18817051', 'Clorpromazina Clorhidrato 100 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '3', '1110');
INSERT INTO `cuotasmes` VALUES ('F09', '18822011', 'Furosemida 40 mg Tabletas 100/Caja (UNIMARK-India)', '10', '399');
INSERT INTO `cuotasmes` VALUES ('F09', '18824011', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '5', '1927');
INSERT INTO `cuotasmes` VALUES ('F09', '18824012', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '2252');
INSERT INTO `cuotasmes` VALUES ('F09', '18824031', 'Trihexifenidilo 5 mg Tabletas 100/Caja (UNIMARK-India)', '0', '0');
INSERT INTO `cuotasmes` VALUES ('F09', '18825011', 'Finasteride 5 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '13', '2166');
INSERT INTO `cuotasmes` VALUES ('F10', '18801011', 'ergotamina Tartrato 1mg + Cafeina 100mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '977');
INSERT INTO `cuotasmes` VALUES ('F10', '18801021', 'Ketorolaco Trometamina 10 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '646');
INSERT INTO `cuotasmes` VALUES ('F10', '18801032', 'ibuprofeno 400 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '33', '1942');
INSERT INTO `cuotasmes` VALUES ('F10', '18803011', 'Teofilina 300 mg Tableta de Liberacion Prolongada 100/Caja (UNIMARK-India)', '5', '2182');
INSERT INTO `cuotasmes` VALUES ('F10', '18806011', 'Topiramato 100 mg Tabletas Recubiertas 20/Caja (UNIMARK-India)', '4', '2168');
INSERT INTO `cuotasmes` VALUES ('F10', '18806021', 'Gabapentina 400mg Tableta Recubierta 100/Caja (UNIMARK-India)', '24', '16362');
INSERT INTO `cuotasmes` VALUES ('F10', '18806032', 'Fluoxetina 20 mg Capsulas 30/Caja (UNIMARK-India)', '6', '991');
INSERT INTO `cuotasmes` VALUES ('F10', '18806041', 'Paroxetina 20 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '12', '4052');
INSERT INTO `cuotasmes` VALUES ('F10', '18810011', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 100/Caja (UNIMARK-India)', '7', '930');
INSERT INTO `cuotasmes` VALUES ('F10', '18810012', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 30/Caja (UNIMARK-India)', '6', '333');
INSERT INTO `cuotasmes` VALUES ('F10', '18810021', 'Clopidogrel 75 mg Tableta Recubierta 20/Caja (UNIMARK-India)', '45', '6025');
INSERT INTO `cuotasmes` VALUES ('F10', '18810022', 'Clopidogrel 75 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '7', '3281');
INSERT INTO `cuotasmes` VALUES ('F10', '18811011', 'Hidroquinona 5% Crema 30g/Tubo 1/Caja (UNIMARK-India)', '16', '1873');
INSERT INTO `cuotasmes` VALUES ('F10', '18813011', 'ondansetron 8 mg Tabletas Recubiertas 10/Caja (UNIMARK-India)', '6', '1927');
INSERT INTO `cuotasmes` VALUES ('F10', '18815011', 'Simvastatina 40 mg Capletas Recubiertas 100/Caja (UNIMARK-India)', '20', '11695');
INSERT INTO `cuotasmes` VALUES ('F10', '18815012', 'Simvastatina 40 mg Capletas Recubiertas 10/Caja (UNIMARK-India)', '53', '4028');
INSERT INTO `cuotasmes` VALUES ('F10', '18817011', 'Risperidona 1 mg Tabletas 30/Caja (UNIMARK-India)', '36', '4805');
INSERT INTO `cuotasmes` VALUES ('F10', '18817021', 'Risperidona 2 mg Tabletas 30/Caja (UNIMARK-India)', '23', '4600');
INSERT INTO `cuotasmes` VALUES ('F10', '18817031', 'Risperidona 3 mg Tabletas 30/Caja (UNIMARK-India)', '17', '4182');
INSERT INTO `cuotasmes` VALUES ('F10', '18817041', 'acetazolamida 250 mg Tabletas 30/Caja (UNIMARK-India)', '5', '820');
INSERT INTO `cuotasmes` VALUES ('F10', '18817051', 'Clorpromazina Clorhidrato 100 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '3', '965');
INSERT INTO `cuotasmes` VALUES ('F10', '18822011', 'Furosemida 40 mg Tabletas 100/Caja (UNIMARK-India)', '9', '347');
INSERT INTO `cuotasmes` VALUES ('F10', '18824011', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '5', '1676');
INSERT INTO `cuotasmes` VALUES ('F10', '18824012', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '1958');
INSERT INTO `cuotasmes` VALUES ('F10', '18824031', 'Trihexifenidilo 5 mg Tabletas 100/Caja (UNIMARK-India)', '0', '0');
INSERT INTO `cuotasmes` VALUES ('F10', '18825011', 'Finasteride 5 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '11', '1883');
INSERT INTO `cuotasmes` VALUES ('F11', '18801011', 'ergotamina Tartrato 1mg + Cafeina 100mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '684');
INSERT INTO `cuotasmes` VALUES ('F11', '18801021', 'Ketorolaco Trometamina 10 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '452');
INSERT INTO `cuotasmes` VALUES ('F11', '18801032', 'ibuprofeno 400 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '23', '1360');
INSERT INTO `cuotasmes` VALUES ('F11', '18803011', 'Teofilina 300 mg Tableta de Liberacion Prolongada 100/Caja (UNIMARK-India)', '4', '1527');
INSERT INTO `cuotasmes` VALUES ('F11', '18806011', 'Topiramato 100 mg Tabletas Recubiertas 20/Caja (UNIMARK-India)', '3', '1518');
INSERT INTO `cuotasmes` VALUES ('F11', '18806021', 'Gabapentina 400mg Tableta Recubierta 100/Caja (UNIMARK-India)', '17', '11453');
INSERT INTO `cuotasmes` VALUES ('F11', '18806032', 'Fluoxetina 20 mg Capsulas 30/Caja (UNIMARK-India)', '4', '694');
INSERT INTO `cuotasmes` VALUES ('F11', '18806041', 'Paroxetina 20 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '8', '2836');
INSERT INTO `cuotasmes` VALUES ('F11', '18810011', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 100/Caja (UNIMARK-India)', '5', '651');
INSERT INTO `cuotasmes` VALUES ('F11', '18810012', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 30/Caja (UNIMARK-India)', '4', '233');
INSERT INTO `cuotasmes` VALUES ('F11', '18810021', 'Clopidogrel 75 mg Tableta Recubierta 20/Caja (UNIMARK-India)', '32', '4218');
INSERT INTO `cuotasmes` VALUES ('F11', '18810022', 'Clopidogrel 75 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '5', '2297');
INSERT INTO `cuotasmes` VALUES ('F11', '18811011', 'Hidroquinona 5% Crema 30g/Tubo 1/Caja (UNIMARK-India)', '11', '1311');
INSERT INTO `cuotasmes` VALUES ('F11', '18813011', 'ondansetron 8 mg Tabletas Recubiertas 10/Caja (UNIMARK-India)', '4', '1349');
INSERT INTO `cuotasmes` VALUES ('F11', '18815011', 'Simvastatina 40 mg Capletas Recubiertas 100/Caja (UNIMARK-India)', '14', '8187');
INSERT INTO `cuotasmes` VALUES ('F11', '18815012', 'Simvastatina 40 mg Capletas Recubiertas 10/Caja (UNIMARK-India)', '37', '2820');
INSERT INTO `cuotasmes` VALUES ('F11', '18817011', 'Risperidona 1 mg Tabletas 30/Caja (UNIMARK-India)', '26', '3363');
INSERT INTO `cuotasmes` VALUES ('F11', '18817021', 'Risperidona 2 mg Tabletas 30/Caja (UNIMARK-India)', '16', '3220');
INSERT INTO `cuotasmes` VALUES ('F11', '18817031', 'Risperidona 3 mg Tabletas 30/Caja (UNIMARK-India)', '12', '2927');
INSERT INTO `cuotasmes` VALUES ('F11', '18817041', 'acetazolamida 250 mg Tabletas 30/Caja (UNIMARK-India)', '4', '574');
INSERT INTO `cuotasmes` VALUES ('F11', '18817051', 'Clorpromazina Clorhidrato 100 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '676');
INSERT INTO `cuotasmes` VALUES ('F11', '18822011', 'Furosemida 40 mg Tabletas 100/Caja (UNIMARK-India)', '6', '243');
INSERT INTO `cuotasmes` VALUES ('F11', '18824011', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '3', '1173');
INSERT INTO `cuotasmes` VALUES ('F11', '18824012', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '1371');
INSERT INTO `cuotasmes` VALUES ('F11', '18824031', 'Trihexifenidilo 5 mg Tabletas 100/Caja (UNIMARK-India)', '0', '0');
INSERT INTO `cuotasmes` VALUES ('F11', '18825011', 'Finasteride 5 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '8', '1318');
INSERT INTO `cuotasmes` VALUES ('F20', '18801011', 'ergotamina Tartrato 1mg + Cafeina 100mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '781');
INSERT INTO `cuotasmes` VALUES ('F20', '18801021', 'Ketorolaco Trometamina 10 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '517');
INSERT INTO `cuotasmes` VALUES ('F20', '18801032', 'ibuprofeno 400 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '27', '1554');
INSERT INTO `cuotasmes` VALUES ('F20', '18803011', 'Teofilina 300 mg Tableta de Liberacion Prolongada 100/Caja (UNIMARK-India)', '4', '1746');
INSERT INTO `cuotasmes` VALUES ('F20', '18806011', 'Topiramato 100 mg Tabletas Recubiertas 20/Caja (UNIMARK-India)', '3', '1734');
INSERT INTO `cuotasmes` VALUES ('F20', '18806021', 'Gabapentina 400mg Tableta Recubierta 100/Caja (UNIMARK-India)', '19', '13089');
INSERT INTO `cuotasmes` VALUES ('F20', '18806032', 'Fluoxetina 20 mg Capsulas 30/Caja (UNIMARK-India)', '5', '793');
INSERT INTO `cuotasmes` VALUES ('F20', '18806041', 'Paroxetina 20 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '9', '3241');
INSERT INTO `cuotasmes` VALUES ('F20', '18810011', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 100/Caja (UNIMARK-India)', '6', '744');
INSERT INTO `cuotasmes` VALUES ('F20', '18810012', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 30/Caja (UNIMARK-India)', '5', '266');
INSERT INTO `cuotasmes` VALUES ('F20', '18810021', 'Clopidogrel 75 mg Tableta Recubierta 20/Caja (UNIMARK-India)', '36', '4820');
INSERT INTO `cuotasmes` VALUES ('F20', '18810022', 'Clopidogrel 75 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '5', '2625');
INSERT INTO `cuotasmes` VALUES ('F20', '18811011', 'Hidroquinona 5% Crema 30g/Tubo 1/Caja (UNIMARK-India)', '12', '1499');
INSERT INTO `cuotasmes` VALUES ('F20', '18813011', 'ondansetron 8 mg Tabletas Recubiertas 10/Caja (UNIMARK-India)', '5', '1541');
INSERT INTO `cuotasmes` VALUES ('F20', '18815011', 'Simvastatina 40 mg Capletas Recubiertas 100/Caja (UNIMARK-India)', '16', '9356');
INSERT INTO `cuotasmes` VALUES ('F20', '18815012', 'Simvastatina 40 mg Capletas Recubiertas 10/Caja (UNIMARK-India)', '42', '3222');
INSERT INTO `cuotasmes` VALUES ('F20', '18817011', 'Risperidona 1 mg Tabletas 30/Caja (UNIMARK-India)', '29', '3844');
INSERT INTO `cuotasmes` VALUES ('F20', '18817021', 'Risperidona 2 mg Tabletas 30/Caja (UNIMARK-India)', '19', '3680');
INSERT INTO `cuotasmes` VALUES ('F20', '18817031', 'Risperidona 3 mg Tabletas 30/Caja (UNIMARK-India)', '14', '3346');
INSERT INTO `cuotasmes` VALUES ('F20', '18817041', 'acetazolamida 250 mg Tabletas 30/Caja (UNIMARK-India)', '4', '656');
INSERT INTO `cuotasmes` VALUES ('F20', '18817051', 'Clorpromazina Clorhidrato 100 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '772');
INSERT INTO `cuotasmes` VALUES ('F20', '18822011', 'Furosemida 40 mg Tabletas 100/Caja (UNIMARK-India)', '7', '277');
INSERT INTO `cuotasmes` VALUES ('F20', '18824011', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '4', '1341');
INSERT INTO `cuotasmes` VALUES ('F20', '18824012', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '1567');
INSERT INTO `cuotasmes` VALUES ('F20', '18824031', 'Trihexifenidilo 5 mg Tabletas 100/Caja (UNIMARK-India)', '0', '0');
INSERT INTO `cuotasmes` VALUES ('F20', '18825011', 'Finasteride 5 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '9', '1506');
INSERT INTO `cuotasmes` VALUES ('F03', '18801011', 'ergotamina Tartrato 1mg + Cafeina 100mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '635');
INSERT INTO `cuotasmes` VALUES ('F03', '18801021', 'Ketorolaco Trometamina 10 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '420');
INSERT INTO `cuotasmes` VALUES ('F03', '18801032', 'ibuprofeno 400 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '22', '1263');
INSERT INTO `cuotasmes` VALUES ('F03', '18803011', 'Teofilina 300 mg Tableta de Liberacion Prolongada 100/Caja (UNIMARK-India)', '3', '1418');
INSERT INTO `cuotasmes` VALUES ('F03', '18806011', 'Topiramato 100 mg Tabletas Recubiertas 20/Caja (UNIMARK-India)', '2', '1409');
INSERT INTO `cuotasmes` VALUES ('F03', '18806021', 'Gabapentina 400mg Tableta Recubierta 100/Caja (UNIMARK-India)', '15', '10635');
INSERT INTO `cuotasmes` VALUES ('F03', '18806032', 'Fluoxetina 20 mg Capsulas 30/Caja (UNIMARK-India)', '4', '644');
INSERT INTO `cuotasmes` VALUES ('F03', '18806041', 'Paroxetina 20 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '7', '2634');
INSERT INTO `cuotasmes` VALUES ('F03', '18810011', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 100/Caja (UNIMARK-India)', '5', '605');
INSERT INTO `cuotasmes` VALUES ('F03', '18810012', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 30/Caja (UNIMARK-India)', '4', '217');
INSERT INTO `cuotasmes` VALUES ('F03', '18810021', 'Clopidogrel 75 mg Tableta Recubierta 20/Caja (UNIMARK-India)', '29', '3916');
INSERT INTO `cuotasmes` VALUES ('F03', '18810022', 'Clopidogrel 75 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '4', '2133');
INSERT INTO `cuotasmes` VALUES ('F03', '18811011', 'Hidroquinona 5% Crema 30g/Tubo 1/Caja (UNIMARK-India)', '10', '1218');
INSERT INTO `cuotasmes` VALUES ('F03', '18813011', 'ondansetron 8 mg Tabletas Recubiertas 10/Caja (UNIMARK-India)', '4', '1252');
INSERT INTO `cuotasmes` VALUES ('F03', '18815011', 'Simvastatina 40 mg Capletas Recubiertas 100/Caja (UNIMARK-India)', '13', '7602');
INSERT INTO `cuotasmes` VALUES ('F03', '18815012', 'Simvastatina 40 mg Capletas Recubiertas 10/Caja (UNIMARK-India)', '34', '2618');
INSERT INTO `cuotasmes` VALUES ('F03', '18817011', 'Risperidona 1 mg Tabletas 30/Caja (UNIMARK-India)', '24', '3123');
INSERT INTO `cuotasmes` VALUES ('F03', '18817021', 'Risperidona 2 mg Tabletas 30/Caja (UNIMARK-India)', '15', '2990');
INSERT INTO `cuotasmes` VALUES ('F03', '18817031', 'Risperidona 3 mg Tabletas 30/Caja (UNIMARK-India)', '11', '2718');
INSERT INTO `cuotasmes` VALUES ('F03', '18817041', 'acetazolamida 250 mg Tabletas 30/Caja (UNIMARK-India)', '3', '533');
INSERT INTO `cuotasmes` VALUES ('F03', '18817051', 'Clorpromazina Clorhidrato 100 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '627');
INSERT INTO `cuotasmes` VALUES ('F03', '18822011', 'Furosemida 40 mg Tabletas 100/Caja (UNIMARK-India)', '6', '225');
INSERT INTO `cuotasmes` VALUES ('F03', '18824011', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '3', '1089');
INSERT INTO `cuotasmes` VALUES ('F03', '18824012', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '1273');
INSERT INTO `cuotasmes` VALUES ('F03', '18824031', 'Trihexifenidilo 5 mg Tabletas 100/Caja (UNIMARK-India)', '0', '0');
INSERT INTO `cuotasmes` VALUES ('F03', '18825011', 'Finasteride 5 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '7', '1224');
INSERT INTO `cuotasmes` VALUES ('F13', '18801011', 'ergotamina Tartrato 1mg + Cafeina 100mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '635');
INSERT INTO `cuotasmes` VALUES ('F13', '18801021', 'Ketorolaco Trometamina 10 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '420');
INSERT INTO `cuotasmes` VALUES ('F13', '18801032', 'ibuprofeno 400 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '22', '1263');
INSERT INTO `cuotasmes` VALUES ('F13', '18803011', 'Teofilina 300 mg Tableta de Liberacion Prolongada 100/Caja (UNIMARK-India)', '3', '1418');
INSERT INTO `cuotasmes` VALUES ('F13', '18806011', 'Topiramato 100 mg Tabletas Recubiertas 20/Caja (UNIMARK-India)', '2', '1409');
INSERT INTO `cuotasmes` VALUES ('F13', '18806021', 'Gabapentina 400mg Tableta Recubierta 100/Caja (UNIMARK-India)', '15', '10635');
INSERT INTO `cuotasmes` VALUES ('F13', '18806032', 'Fluoxetina 20 mg Capsulas 30/Caja (UNIMARK-India)', '4', '644');
INSERT INTO `cuotasmes` VALUES ('F13', '18806041', 'Paroxetina 20 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '7', '2634');
INSERT INTO `cuotasmes` VALUES ('F13', '18810011', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 100/Caja (UNIMARK-India)', '5', '605');
INSERT INTO `cuotasmes` VALUES ('F13', '18810012', 'Nifedipina 10 mg Tabletas Recubiertas de Liberacion Sostenida 30/Caja (UNIMARK-India)', '4', '217');
INSERT INTO `cuotasmes` VALUES ('F13', '18810021', 'Clopidogrel 75 mg Tableta Recubierta 20/Caja (UNIMARK-India)', '29', '3916');
INSERT INTO `cuotasmes` VALUES ('F13', '18810022', 'Clopidogrel 75 mg Tableta Recubierta 100/Caja (UNIMARK-India)', '4', '2133');
INSERT INTO `cuotasmes` VALUES ('F13', '18811011', 'Hidroquinona 5% Crema 30g/Tubo 1/Caja (UNIMARK-India)', '10', '1218');
INSERT INTO `cuotasmes` VALUES ('F13', '18813011', 'ondansetron 8 mg Tabletas Recubiertas 10/Caja (UNIMARK-India)', '4', '1252');
INSERT INTO `cuotasmes` VALUES ('F13', '18815011', 'Simvastatina 40 mg Capletas Recubiertas 100/Caja (UNIMARK-India)', '13', '7602');
INSERT INTO `cuotasmes` VALUES ('F13', '18815012', 'Simvastatina 40 mg Capletas Recubiertas 10/Caja (UNIMARK-India)', '34', '2618');
INSERT INTO `cuotasmes` VALUES ('F13', '18817011', 'Risperidona 1 mg Tabletas 30/Caja (UNIMARK-India)', '24', '3123');
INSERT INTO `cuotasmes` VALUES ('F13', '18817021', 'Risperidona 2 mg Tabletas 30/Caja (UNIMARK-India)', '15', '2990');
INSERT INTO `cuotasmes` VALUES ('F13', '18817031', 'Risperidona 3 mg Tabletas 30/Caja (UNIMARK-India)', '11', '2718');
INSERT INTO `cuotasmes` VALUES ('F13', '18817041', 'acetazolamida 250 mg Tabletas 30/Caja (UNIMARK-India)', '3', '533');
INSERT INTO `cuotasmes` VALUES ('F13', '18817051', 'Clorpromazina Clorhidrato 100 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '2', '627');
INSERT INTO `cuotasmes` VALUES ('F13', '18822011', 'Furosemida 40 mg Tabletas 100/Caja (UNIMARK-India)', '6', '225');
INSERT INTO `cuotasmes` VALUES ('F13', '18824011', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '3', '1089');
INSERT INTO `cuotasmes` VALUES ('F13', '18824012', 'Levodopa 250 mg + Carbidopa 25 mg Tabletas Recubiertas 100/Caja (UNIMARK-India)', '1', '1273');
INSERT INTO `cuotasmes` VALUES ('F13', '18824031', 'Trihexifenidilo 5 mg Tabletas 100/Caja (UNIMARK-India)', '0', '0');
INSERT INTO `cuotasmes` VALUES ('F13', '18825011', 'Finasteride 5 mg Tabletas Recubiertas 30/Caja (UNIMARK-India)', '7', '1224');

-- ----------------------------
-- Table structure for detallelog
-- ----------------------------
DROP TABLE IF EXISTS `detallelog`;
CREATE TABLE `detallelog`  (
  `Articulo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Descripcion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Cantidad` int(11) NOT NULL,
  `IdLog` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of detallelog
-- ----------------------------
INSERT INTO `detallelog` VALUES ('18801021', 'KETOROLACO TROMETAMINA 10 MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 1, 'F05-R0421094935');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 5, 'F05-R0421094935');
INSERT INTO `detallelog` VALUES ('18810021', 'CLOPIDOGREL 75 MG TABLETA RECUBIERTA 20/CAJA (UNIMARK-INDIA)', 4, 'F05-R0421094935');
INSERT INTO `detallelog` VALUES ('18803011', 'TEOFILINA 300 MG TABLETA DE LIBERACION PROLONGADA 100/CAJA (UNIMARK-INDIA)', 3, 'F05-R0421094935');
INSERT INTO `detallelog` VALUES ('18801021', 'KETOROLACO TROMETAMINA 10 MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 1, 'F10-R0421094858');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 5, 'F14-R0421094927');
INSERT INTO `detallelog` VALUES ('18810021', 'CLOPIDOGREL 75 MG TABLETA RECUBIERTA 20/CAJA (UNIMARK-INDIA)', 4, 'F05-R0421094935');
INSERT INTO `detallelog` VALUES ('18803011', 'TEOFILINA 300 MG TABLETA DE LIBERACION PROLONGADA 100/CAJA (UNIMARK-INDIA)', 3, 'F08-R0423115048');
INSERT INTO `detallelog` VALUES ('18815012', 'SIMVASTATINA 40 MG CAPLETAS RECUBIERTAS 10/CAJA (UNIMARK-INDIA)', 0, 'F14-R0423094405');
INSERT INTO `detallelog` VALUES ('18815012', 'SIMVASTATINA 40 MG CAPLETAS RECUBIERTAS 10/CAJA (UNIMARK-INDIA)', 10, 'F14-R0423111519');
INSERT INTO `detallelog` VALUES ('18815012', 'SIMVASTATINA 40 MG CAPLETAS RECUBIERTAS 10/CAJA (UNIMARK-INDIA)', 10, 'F14-R0423113723');
INSERT INTO `detallelog` VALUES ('18806021', 'GABAPENTINA 400MG TABLETA RECUBIERTA 100/CAJA (UNIMARK-INDIA)', 5, 'F14-R0423114610');
INSERT INTO `detallelog` VALUES ('18811011', 'HIDROQUINONA 5% CREMA 30G/TUBO 1/CAJA (UNIMARK-INDIA)', 7, 'F14-R0423115948');
INSERT INTO `detallelog` VALUES ('18801032', 'IBUPROFENO 400 MG TABLETA RECUBIERTA 100/CAJA (UNIMARK-INDIA)', 10, 'F14-R0423120252');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 1, 'F14-R0423120558');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 4, 'F14-R0424092037');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 3, 'F14-R0424093300');
INSERT INTO `detallelog` VALUES ('18806041', 'PAROXETINA 20 MG TABLETAS RECUBIERTAS 30/CAJA (UNIMARK-INDIA)', 4, 'F10-R0424093726');
INSERT INTO `detallelog` VALUES ('18811011', 'HIDROQUINONA 5% CREMA 30G/TUBO 1/CAJA (UNIMARK-INDIA)', 7, 'F10-R0424102758');
INSERT INTO `detallelog` VALUES ('18817011', 'RISPERIDONA 1 MG TABLETAS 30/CAJA (UNIMARK-INDIA)', 3, 'F19-R0424104626');
INSERT INTO `detallelog` VALUES ('18811011', 'HIDROQUINONA 5% CREMA 30G/TUBO 1/CAJA (UNIMARK-INDIA)', 0, 'F19-R0424111346');
INSERT INTO `detallelog` VALUES ('18815012', 'SIMVASTATINA 40 MG CAPLETAS RECUBIERTAS 10/CAJA (UNIMARK-INDIA)', 0, 'F19-R0424113039');
INSERT INTO `detallelog` VALUES ('18806021', 'GABAPENTINA 400MG TABLETA RECUBIERTA 100/CAJA (UNIMARK-INDIA)', 1, 'F19-R0424114843');
INSERT INTO `detallelog` VALUES ('18817031', 'RISPERIDONA 3 MG TABLETAS 30/CAJA (UNIMARK-INDIA)', 5, 'F19-R0424121346');
INSERT INTO `detallelog` VALUES ('18825011', 'FINASTERIDE 5 MG TABLETAS RECUBIERTAS 30/CAJA (UNIMARK-INDIA)', 0, 'F19-R0424130225');
INSERT INTO `detallelog` VALUES ('18805011', 'AZITROMICINA 500 MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0424131817');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0424133046');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0424134212');
INSERT INTO `detallelog` VALUES ('18806021', 'GABAPENTINA 400MG TABLETA RECUBIERTA 100/CAJA (UNIMARK-INDIA)', 3, 'F14-R0424101034');
INSERT INTO `detallelog` VALUES ('18806021', 'GABAPENTINA 400MG TABLETA RECUBIERTA 100/CAJA (UNIMARK-INDIA)', 3, 'F14-R0424102351');
INSERT INTO `detallelog` VALUES ('18810021', 'CLOPIDOGREL 75 MG TABLETA RECUBIERTA 20/CAJA (UNIMARK-INDIA)', 7, 'F14-R0424114232');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 4, 'F10-R0425111808');
INSERT INTO `detallelog` VALUES ('18806021', 'GABAPENTINA 400MG TABLETA RECUBIERTA 100/CAJA (UNIMARK-INDIA)', 4, 'F10-R0425111808');
INSERT INTO `detallelog` VALUES ('18815012', 'SIMVASTATINA 40 MG CAPLETAS RECUBIERTAS 10/CAJA (UNIMARK-INDIA)', 7, 'F10-R0425111808');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0424140323');
INSERT INTO `detallelog` VALUES ('18806041', 'PAROXETINA 20 MG TABLETAS RECUBIERTAS 30/CAJA (UNIMARK-INDIA)', 0, 'F19-R0424141611');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0425094340');
INSERT INTO `detallelog` VALUES ('18805011', 'AZITROMICINA 500 MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0425094410');
INSERT INTO `detallelog` VALUES ('18815011', 'SIMVASTATINA 40 MG CAPLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 1, 'F19-R0425102423');
INSERT INTO `detallelog` VALUES ('18805011', 'AZITROMICINA 500 MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 6, 'F19-R0425103524');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0425105528');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0425110616');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0425114133');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0425115636');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0425130233');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0425135052');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0425140826');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0425144154');
INSERT INTO `detallelog` VALUES ('18801021', 'KETOROLACO TROMETAMINA 10 MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 1, 'F14-R0425095203');
INSERT INTO `detallelog` VALUES ('18813011', 'ONDANSETRON 8 MG TABLETAS RECUBIERTAS 10/CAJA (UNIMARK-INDIA)', 1, 'F14-R0425101737');
INSERT INTO `detallelog` VALUES ('18801032', 'IBUPROFENO 400 MG TABLETA RECUBIERTA 100/CAJA (UNIMARK-INDIA)', 1, 'F14-R0425111024');
INSERT INTO `detallelog` VALUES ('18815011', 'SIMVASTATINA 40 MG CAPLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 1, 'F14-R0425112918');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 4, 'F14-R0425114926');
INSERT INTO `detallelog` VALUES ('18801032', 'IBUPROFENO 400 MG TABLETA RECUBIERTA 100/CAJA (UNIMARK-INDIA)', 5, 'F14-R0426084744');
INSERT INTO `detallelog` VALUES ('18811011', 'HIDROQUINONA 5% CREMA 30G/TUBO 1/CAJA (UNIMARK-INDIA)', 7, 'F14-R0426102726');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0426101456');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0426102208');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0426112457');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0426124225');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0426152841');
INSERT INTO `detallelog` VALUES ('18815012', 'SIMVASTATINA 40 MG CAPLETAS RECUBIERTAS 10/CAJA (UNIMARK-INDIA)', 10, 'F10-R0426115056');
INSERT INTO `detallelog` VALUES ('18811011', 'HIDROQUINONA 5% CREMA 30G/TUBO 1/CAJA (UNIMARK-INDIA)', 5, 'F14-R0426153254');
INSERT INTO `detallelog` VALUES ('18806021', 'GABAPENTINA 400MG TABLETA RECUBIERTA 100/CAJA (UNIMARK-INDIA)', 1, 'F14-R0427100149');
INSERT INTO `detallelog` VALUES ('18803011', 'TEOFILINA 300 MG TABLETA DE LIBERACION PROLONGADA 100/CAJA (UNIMARK-INDIA)', 3, 'F14-R0427112854');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0426160931');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0426161248');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0426163903');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0426171650');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0427093320');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0427103306');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0427130202');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0427141228');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0427143919');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0427154209');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0427160941');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0430094254');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0430095001');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0430095759');
INSERT INTO `detallelog` VALUES ('18824031', 'TRIHEXIFENIDILO 5 MG TABLETAS 100/CAJA (UNIMARK-INDIA)', 2, 'F19-R0430101904');
INSERT INTO `detallelog` VALUES ('18824031', 'TRIHEXIFENIDILO 5 MG TABLETAS 100/CAJA (UNIMARK-INDIA)', 2, 'F19-R0430101942');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0430103337');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0430103408');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0430105756');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0430112551');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0430115851');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0502090815');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0502093645');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0502095704');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0502104105');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F19-R0502112526');
INSERT INTO `detallelog` VALUES ('18806021', 'GABAPENTINA 400MG TABLETA RECUBIERTA 100/CAJA (UNIMARK-INDIA)', 3, 'F19-R0502131819');
INSERT INTO `detallelog` VALUES ('18811011', 'HIDROQUINONA 5% CREMA 30G/TUBO 1/CAJA (UNIMARK-INDIA)', 7, 'F06-R0430142522');
INSERT INTO `detallelog` VALUES ('18811011', 'HIDROQUINONA 5% CREMA 30G/TUBO 1/CAJA (UNIMARK-INDIA)', 5, 'F06-R0430143830');
INSERT INTO `detallelog` VALUES ('18817021', 'RISPERIDONA 2 MG TABLETAS 30/CAJA (UNIMARK-INDIA)', 10, 'F05-R0504111321');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0504115432');
INSERT INTO `detallelog` VALUES ('18801011', 'ERGOTAMINA TARTRATO 1MG + CAFEINA 100MG TABLETAS RECUBIERTAS 100/CAJA (UNIMARK-INDIA)', 0, 'F05-R0504124415');

-- ----------------------------
-- Table structure for especialidad
-- ----------------------------
DROP TABLE IF EXISTS `especialidad`;
CREATE TABLE `especialidad`  (
  `IdEspecialidad` int(10) NOT NULL AUTO_INCREMENT,
  `Especialidad` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdEspecialidad`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of especialidad
-- ----------------------------
INSERT INTO `especialidad` VALUES (1, 'MG. Medicina General');
INSERT INTO `especialidad` VALUES (2, 'ORT. Ortopedista');
INSERT INTO `especialidad` VALUES (3, 'M INT. Medicina Interna');
INSERT INTO `especialidad` VALUES (4, 'G O. Ginecoobstetra');
INSERT INTO `especialidad` VALUES (5, 'ORL. Otorrinolaringologo');
INSERT INTO `especialidad` VALUES (6, 'DERM. Dermatologo');
INSERT INTO `especialidad` VALUES (7, 'UROL. Urologo');
INSERT INTO `especialidad` VALUES (8, 'OFT.Oftalmologo');
INSERT INTO `especialidad` VALUES (9, 'CARD. Cardiologo');
INSERT INTO `especialidad` VALUES (10, 'N C. Neurocirujno');
INSERT INTO `especialidad` VALUES (11, 'PED. Pediatra');
INSERT INTO `especialidad` VALUES (12, 'PSIQ. Psquiatra');

-- ----------------------------
-- Table structure for farmacias
-- ----------------------------
DROP TABLE IF EXISTS `farmacias`;
CREATE TABLE `farmacias`  (
  `IdFarmacia` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NombreFarmacia` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NombrePropietario` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Direccion` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FechaAniversario` date NOT NULL,
  `TelfFarmacia` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `TelfPropietario` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `HorarioAtencion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ResponsableCompra` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `TelfRespCompra` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CantDependiente` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PotencialMensualCompra` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `DiasPagoFact` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `RespVencidos` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `RespCanjes` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NumDepMostrador` int(20) NOT NULL,
  `PartProgPuntos` bit(1) NOT NULL,
  `EntregaBenefDepend` bit(1) NOT NULL,
  `PermiteImpulsadoras` bit(1) NOT NULL,
  `CadenaCooperativa` bit(1) NOT NULL,
  `Ruta` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cCommit` varchar(450) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of farmacias
-- ----------------------------
INSERT INTO `farmacias` VALUES ('F19-F0424104930', 'solidaria', 'maria jose Mercado', 'mascota ', '2018-04-02', '22534367', '84933880', '', '', '', '', '', '', '', '', 0, b'1', b'1', b'1', b'1', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0424111548', 'peruano', 'Mara Reyes', 'cristo rey', '1969-12-31', '22781572', '85712890', '', '', '', '', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0424113815', 'HIDALGO', 'Magdalena Dumas', 'de la iglesia redentor 3c arriba 1/2 c al lago', '1969-12-31', '22286201', '75275163', '', '', '', '', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0424120106', 'LYCY', 'Ivania medina Rodriguez', 'colegio cristorey 200 mts al norte', '2018-05-09', '22493246', '86006669', 'mañana 11 ', 'lic. ivania', '', '', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0424122231', 'salud es vida', 'yadira centeno ', 'ciudad jardin ', '2018-08-08', '22492967', '', '', '', '', '', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0424130455', 'DOMINIQUE', 'Fatima Orozco', 'frente hosp solidaridad', '1969-12-31', '22401442', '86708255', '', '', '', '1 sirama peña', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0424133506', 'POTENZA ', 'julia bermudez gonzale', 'armando guido 2c al sur', '1999-11-30', '22496089', '', '', '', '', '2 dep \nedwin rodrigu', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0424134413', 'EL HOGAR', 'jonathan Lopez', 'del puente la reynaga 51/2c abajo', '1999-11-30', '22506754', '', '', 'jonathan', '', 'Lena Meza', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0424140703', 'SANTA ROSA', 'Fanny Guadamuz ', 'pali p del h 2 1/2c arriba ', '1969-12-31', '22497407', '89778840', '', 'fanny', '', 'silvia ', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0424141824', 'GURDIAN', 'felipe antonio Gurdian ', 'frente edificio gurdian', '1969-12-31', '22441331', '', '', '', '', '15 chicos', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0425100024', 'EUREKA', 'blanca argentina calero', 'reparto shick ', '2018-09-02', '22553510', '57099778', '', '', '', '', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0425102719', 'JERUSALEN', 'johana ', 'contiguo farmacia jerusalen', '2018-04-04', '22537292', '82855550', '', '', '', '', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0425103716', 'POPULAR', 'dennis', 'entrada a la fuente', '1999-11-30', '84680549', '84680549', '', '', '', '2 . doribel arci', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0425105834', 'MI BELEN', 'gloria martinez', 'contiguo hotel kelly huembe', '1999-11-30', '85887884', '85887884', '', '', '', '2 ', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0425111330', 'NICARAGUA', 'mirian melendez gonzalez', 'semaforo de la vicky 1c al oeste ', '2018-01-05', '22770025', '', '8-12 pm ', 'mirian ', '', '1', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0425114554', 'BUENA ESPERANZA', 'Karen Levana Medina', 'donde fue el cine rex 1c al lago', '1969-12-31', '22486874', '', '10-12 pm', '', '', '5 ;\n3 dia \n2 noche ', '', '', '', '', 0, b'1', b'1', b'1', b'1', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0425115613', '14 SEPTIEMBRE', 'Nubia Hernandez Saballos', 'del puente del eden 2 1/2 c abajo', '1969-12-31', '22498452', '', '', '', '', '3 \nCristina Flores ', '', '', '', '', 0, b'1', b'1', b'1', b'1', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F19-F0425135816', 'JOAN', 'angelica maria tijerino', 'de donde fue clx santa maria 2c al sur', '1969-12-31', '22485792', '75251983', '', '', '', '3', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F05-F0426105556', 'SAMA', 'CARLOS jose Delgadillo', 'Tipitapa, barrio yuri ordoñez parada del mango solo 100 mts abajo', '1969-12-31', '83847944', '89985953', ' ', 'carlos', '', '', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F05-F0426114557', 'YUBI', 'Roberto Ramirez ', 'tipitapA', '2018-07-12', '82759209', '89840693', '', '', '', '6 \nyahoska carrion ', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F05-F0426124546', 'FARMA VERO', 'Nicolas Ortega', 'frente a los juzgados', '1969-12-31', '22953399', '', '', '', '', 'esleyder osmani bric', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F05-F0426142632', 'MISERICORDIA', 'meyby Gonzalez Sandoval', 'tipitapa', '1969-12-31', '22953027', '83764389', 'am /pm ', '', '', '2', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F05-F0426161719', 'Levi', 'Manuel Marti ez Gaitan ', 'del monumento de tipitapa 1/×c al norte', '1969-12-31', '85743873', '', '', '', '', '', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F05-F0426164314', 'FARMACITA', 'liseth miranda mejia', 'de donde fue gasolinera 5c abajo ', '1999-11-30', '78197291', '', '', '', '', '', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F05-F0426171811', 'FATIMAR', 'Camilo Pantoja', 'tipitapa gallera', '2018-06-09', '82722674', '', '', '', '', '', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F05-F0427094116', 'VILLA FLOR ', 'Carlos Jaime Martinez', 'villa flor ', '1969-12-31', '22894911', '88848802', '', '', '', '', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM07', '');
INSERT INTO `farmacias` VALUES ('F05-F0427103856', 'SANDRA', 'sandra maria mejia perez', 'colonia 1 mayo del col,. 1 c al sur 2 c arriba', '1999-11-30', '22535342', '87277962', '', '', '', '', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F05-F0427130537', 'NUEVA RECONCILIACION ', 'Kathya Ruiz Miranda ', 'villa reconciliacion de donde fue la ferrteria 4 1/2c al sur , mano derecha contiguo a repuestos la estrella ', '1969-12-31', '22521335', '86436163', '', '', '', '', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F05-F0427141436', 'Larry', 'Roberto Lazo', 'frente a hosp aleman', '1969-12-31', '22515492', '83237073', '', '', '', '4 -6', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F05-F0427145725', 'AMANDA', 'xiomara amanda Obando Martinez', '.km 6 carretera norte , de la siemens 4c al lago 1/2c al lago', '1969-12-31', '22490923', '86598434', '', '', '', '2', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F05-F0427155039', 'DON MANUEL ', 'Juan Aristides Rojas Ballester', 'semaforo el madroño , 3 andes al sur', '1999-11-30', '22804728', '76785717', '', '', '', '1 Rosa Orozco', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');
INSERT INTO `farmacias` VALUES ('F05-F0427161531', 'J Y K ', 'Jenny Cruz Rojas\n', 'mercado ivan montenegro modulo 328. ', '2018-01-07', '22533008', '88983620', '', '', '', '5 chicas ', '', '', '', '', 0, b'0', b'0', b'0', b'0', 'VM05', '');

-- ----------------------------
-- Table structure for llaves
-- ----------------------------
DROP TABLE IF EXISTS `llaves`;
CREATE TABLE `llaves`  (
  `Ruta` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FARMACIA` int(10) NULL DEFAULT NULL,
  `MEDICOS` int(10) NULL DEFAULT NULL,
  `REPORTE` int(10) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of llaves
-- ----------------------------
INSERT INTO `llaves` VALUES ('F03', 10, 10, 10);
INSERT INTO `llaves` VALUES ('F05', 10, 10, 10);
INSERT INTO `llaves` VALUES ('F06', 10, 10, 10);
INSERT INTO `llaves` VALUES ('F07', 10, 10, 10);
INSERT INTO `llaves` VALUES ('F08', 10, 10, 10);
INSERT INTO `llaves` VALUES ('F09', 10, 10, 10);
INSERT INTO `llaves` VALUES ('F10', 10, 10, 10);
INSERT INTO `llaves` VALUES ('F11', 10, 10, 10);
INSERT INTO `llaves` VALUES ('F13', 10, 10, 10);
INSERT INTO `llaves` VALUES ('F14', 10, 10, 10);
INSERT INTO `llaves` VALUES ('F19', 10, 10, 10);
INSERT INTO `llaves` VALUES ('F20', 10, 10, 10);
INSERT INTO `llaves` VALUES ('US1', 5, 0, 0);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `IdLog` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Latitud` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Longitud` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Descripcion` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Cliente` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CLNombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Fecha` datetime(0) NOT NULL,
  `Ruta` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Stado` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdLog`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('F05-R0426101456', '12.1678162', '-86.1096743', '', '01322', 'FARMACIA SAN RAFAEL', '2018-04-26 10:14:56', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0426102208', '12.1790484', '-86.1008928', '', '03050', 'FARMACIA BETHEL', '2018-04-26 10:22:08', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0426112457', '12.1899335', '-86.0972962', '', '01327', 'FARMACIA YUBI', '2018-04-26 11:24:57', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0426124225', '12.1980169', '-86.0962818', '', '02419', 'FARMACIA FARMAVERO', '2018-04-26 12:42:25', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0426152841', '12.1976321', '-86.0971592', '', '01213', 'CLINICA DENTAL MONTESION', '2018-04-26 15:28:41', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0426160931', '12.2010107', '-86.0910514', '', '03279', 'FARMACIA ROYA', '2018-04-26 16:09:31', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0426161248', '12.200617', '-86.0887339', '', '03274', 'FARMACIA LEV', '2018-04-26 16:12:48', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0426163903', '12.1987107', '-86.1012014', '', '00139', 'FARMACIA LA FARMACITA', '2018-04-26 16:39:03', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0426171650', '12.1988585', '-86.1011037', '', '03131', 'FARMACIA FAT', '2018-04-26 17:16:50', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0427093320', '12.1207426', '-86.2243037', '', '02001', 'FARMACIA VILLA FLOR', '2018-04-27 09:33:20', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0427103306', '12.1211267', '-86.2222922', '', '03595', 'FARMACIA SANDRA RUC 0011008770091W', '2018-04-27 10:33:06', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0427130202', '12.139225', '-86.1963559', '', '03365', 'FARMACIA NUEVA RECONCILIACIÓN', '2018-04-27 13:02:02', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0427141228', '12.1469612', '-86.2178878', '', '01297', 'FARMACIA LARRY', '2018-04-27 14:12:28', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0427143919', '12.1536397', '-86.2181248', '', '01653', 'FARMACIA AMANDA', '2018-04-27 14:39:19', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0427154209', '12.129697', '-86.2174347', '', '00702', 'FARMACIA DON MANUEL', '2018-04-27 15:42:09', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0427160941', '12.1259514', '-86.2083388', '', '01077', 'FARMACIA J Y K', '2018-04-27 16:09:41', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0504111321', '12.1469676', '-86.2178157', '', '01297', 'FARMACIA LARRY', '2018-05-04 11:13:21', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0504115432', '12.1469496', '-86.2178529', '', '03679', 'FARMACIA FARMA ESTRELLA RU', '2018-05-04 11:54:32', 'VM05', NULL);
INSERT INTO `log` VALUES ('F05-R0504124415', '12.1182744', '-86.2029888', '', '01427', 'FARMACIA MARIEN', '2018-05-04 12:44:15', 'VM05', NULL);
INSERT INTO `log` VALUES ('F06-R0430142522', '12.4319917', '-86.8846449', '', '03173', 'FARMACIA CORAZON DE CRISTO', '2018-04-30 14:25:22', 'VM08', NULL);
INSERT INTO `log` VALUES ('F06-R0430143830', '12.4352775', '-86.890631', '', '03439', 'FARMACIA TRUAL', '2018-04-30 14:38:30', 'VM08', NULL);
INSERT INTO `log` VALUES ('F08-R0423115048', '12.1021566', '-86.2642395', '', '00126', 'FARMACIA PEREZ', '2018-04-23 11:50:48', 'VM04', NULL);
INSERT INTO `log` VALUES ('F10-R0421094858', '12.1021591', '-86.2642379', 'facturar po am', '03564', 'AVIMMCAS (ASOCIACION VIDA PARA MUJERES MASTECTOMIZADAS POR CANCER DE SENO', '2018-04-21 09:48:58', 'VM03', NULL);
INSERT INTO `log` VALUES ('F10-R0424093726', '12.9294423', '-85.915269', 'paroxetina, levodopa mas carvidopa, isotetrinoina. ', '00519', 'FARMACIA SAN BENITO', '2018-04-24 09:37:26', 'VM03', NULL);
INSERT INTO `log` VALUES ('F10-R0424102758', '12.9310323', '-85.9138548', 'hidroquinona., ondasetron', '03359', 'FARMACIA GUANUCA RUC 4412810720008N', '2018-04-24 10:27:58', 'VM03', NULL);
INSERT INTO `log` VALUES ('F10-R0425111808', '12.8508215', '-86.0976976', 'levodopa +carvidopa', '00551', 'FARMACIA MEL', '2018-04-25 11:18:08', 'VM03', NULL);
INSERT INTO `log` VALUES ('F10-R0426115056', '13.0925276', '-85.9995592', 'ondasetron, gabapentina, teofilina', '00446', 'CLINICA DR ALDO MAURICIO ALTAMIRANO', '2018-04-26 11:50:56', 'VM03', NULL);
INSERT INTO `log` VALUES ('F14-R0421094927', '12.102166', '-86.2642421', '', '00971', 'FARMACIA MALU', '2018-04-21 09:49:27', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0423094405', '12.6352889', '-87.1408835', '', '03413', 'FARMACIA PERPETUO SOCORRO', '2018-04-23 09:44:05', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0423111519', '12.633257', '-87.1406098', '', '03175', 'FARMACIA JAM', '2018-04-23 11:15:19', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0423113723', '12.6209789', '-87.1383175', 'simvastatina 40mg x 10... para la proxima semana', '03301', 'FARMACIA ROSA MISTICA', '2018-04-23 11:37:23', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0423114610', '12.6240415', '-87.1359827', '', '02186', 'FARMACIA MI FARMACIA', '2018-04-23 11:46:10', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0423115948', '12.6228283', '-87.1270245', '', '01349', 'FARMACIA CLAUDIA', '2018-04-23 11:59:48', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0423120252', '12.6227424', '-87.1270788', 'para el otro mes', '01357', 'FARMACIA LA FUENTE', '2018-04-23 12:02:52', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0423120558', '12.6227013', '-87.1270771', '', '01372', 'FARMACIA SAN ANTONIO', '2018-04-23 12:05:58', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0424092037', '12.4857671', '-87.1754653', '', '01604', 'FARMACIA SANTA ROSA', '2018-04-24 09:20:37', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0424093300', '12.4834673', '-87.1725204', '', '01600', 'FARMACIA D DESCUENTO', '2018-04-24 09:33:00', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0424101034', '12.481701', '-87.1720318', '', '01601', 'FARMACIA LA PRINCIPAL', '2018-04-24 10:10:34', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0424102351', '12.4879505', '-87.178709', '', '02597', 'FARMACIA LA CORINTEÑA', '2018-04-24 10:23:51', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0424114232', '12.5348152', '-87.1992722', '', '02470', 'FARMACIA EL SOCORRO (CORINTO)', '2018-04-24 11:42:32', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0425095203', '12.6683103', '-87.167641', '', '03628', 'FARMACIA FARMA SALUD RU', '2018-04-25 09:52:03', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0425101737', '12.6649694', '-87.1725258', '', '03540', 'FARMACIA LA BENDICION  RU', '2018-04-25 10:17:37', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0425111024', '12.6632023', '-87.1680768', '', '02596', 'FARMACIA LA CONCEPCION', '2018-04-25 11:10:24', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0425112918', '12.656169', '-87.1691855', '', '02484', 'FARMACIA CAMILA', '2018-04-25 11:29:18', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0425114926', '12.635214', '-87.1376027', '', '01359', 'FARMACIA LA PROFESIONAL', '2018-04-25 11:49:26', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0426084744', '12.584513', '-87.0270319', '', '01606', 'FARMACIA ANGIE', '2018-04-26 08:47:44', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0426102726', '12.5750889', '-87.0256857', '', '01608', 'FARMACIA FATIMA', '2018-04-26 10:27:26', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0426153254', '12.6211426', '-87.1308713', '', '03007', 'FARMACIA MEDIC', '2018-04-26 15:32:54', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0427100149', '12.6275547', '-87.1454032', '', '03220', 'FARMACIA ABRIGO DEL ALTISIMO', '2018-04-27 10:01:49', 'VM07', NULL);
INSERT INTO `log` VALUES ('F14-R0427112854', '12.6317396', '-87.1320404', '', '01351', 'FARMACIA EMERGENCIA', '2018-04-27 11:28:54', 'VM07', NULL);
INSERT INTO `log` VALUES ('F19-R0424104626', '12.1237903', '-86.237825', 'risperidona de 2 mg 1 mg tiene el cliente ', '03631', 'FARMACIA SOLIDARIA RUC 0011207850023C', '2018-04-24 10:46:26', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0424111346', '12.1348061', '-86.2580898', 'pendiente!', '00816', 'FARMACIA EL PERUANO', '2018-04-24 11:13:46', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0424113039', '12.1444297', '-86.2656723', '', '01066', 'FARMACIA HIDALGO', '2018-04-24 11:30:39', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0424114843', '12.1395659', '-86.2593819', 'tiene 1 caja ', '01307', 'FARMACIA LISSY', '2018-04-24 11:48:43', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0424121346', '12.1423524', '-86.2525219', 'tiene 5 cajas pegadas', '01681', 'FARMACIA SALUD ES VIDA', '2018-04-24 12:13:46', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0424130225', '12.145024', '-86.3352994', '', '00698', 'FARMACIA DOMINIQUE', '2018-04-24 13:02:25', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0424131817', '12.145024', '-86.3352994', 'se le cerro codigo cliente de contado. ', '02482', 'FARMACIA MAJESTAD', '2018-04-24 13:18:17', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0424133046', '12.1505757', '-86.2438645', '', '01667', 'FARMACIA POTENZA', '2018-04-24 13:30:46', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0424134212', '12.149746', '-86.2441814', '', '00809', 'FARMACIA EL HOGAR', '2018-04-24 13:42:12', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0424140323', '12.1463907', '-86.2458138', '', '01796', 'FARMACIA SANTA ROSA', '2018-04-24 14:03:23', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0424141611', '12.1409375', '-86.2532927', 'llamar a juanita', '01062', 'FARMACIA GURDIAN', '2018-04-24 14:16:11', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0425094340', '12.1090628', '-86.2278175', '', '00831', 'FARMACIA EUREKA', '2018-04-25 09:43:40', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0425094410', '12.1090626', '-86.2278212', '', '01788', 'FARMACIA SANTA ANA', '2018-04-25 09:44:10', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0425102423', '12.1184407', '-86.2394992', '', '01168', 'FARMACIA JERUSALEN', '2018-04-25 10:24:23', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0425103524', '12.1219951', '-86.2437385', 'tiene 6 cajas', '02332', 'FARMACIA LA POPULAR', '2018-04-25 10:35:24', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0425105528', '12.1192501', '-86.247773', 'azitromicina\ngabapentina', '03557', 'FARMACIA MI BELEN RU', '2018-04-25 10:55:28', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0425110616', '12.1195696', '-86.253284', '', '00719', 'FARMACIA NICARAGUA', '2018-04-25 11:06:16', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0425114133', '12.1415811', '-86.2397375', '', '01771', 'FARMACIA BUENA ESPERANZA', '2018-04-25 11:41:33', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0425115636', '12.1439363', '-86.2377187', '', '01630', 'FARMACIA 14 DE SEPTIEMBRE', '2018-04-25 11:56:36', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0425130233', '12.1408437', '-86.2531664', '', '01062', 'FARMACIA GURDIAN', '2018-04-25 13:02:33', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0425135052', '12.1407422', '-86.2524744', '', '03331', 'FARMACIA JOAN', '2018-04-25 13:50:52', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0425140826', '12.1406329', '-86.2513873', '', '01667', 'FARMACIA POTENZA', '2018-04-25 14:08:26', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0425144154', '12.1407603', '-86.2513761', '', '00940', 'FARMACIA FARMA ROBLETO', '2018-04-25 14:41:54', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0430094254', '12.1261214', '-86.2443119', '', '00036', 'FARMACIA CENTRAL', '2018-04-30 09:42:54', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0430095001', '12.1242905', '-86.2435272', '', '01069', 'FARMACIA HUEMBES', '2018-04-30 09:50:01', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0430095759', '12.1244269', '-86.2433632', '', '01421', 'FARMACIA MARIA JOSE', '2018-04-30 09:57:59', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0430101904', '12.1237885', '-86.2378912', '', '03631', 'FARMACIA SOLIDARIA RUC 0011207850023C', '2018-04-30 10:19:04', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0430101942', '12.1237455', '-86.2379757', '', '03631', 'FARMACIA SOLIDARIA RUC 0011207850023C', '2018-04-30 10:19:42', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0430103337', '12.1242055', '-86.2385399', '', '00057', 'FARMACIA CUADRA', '2018-04-30 10:33:37', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0430103408', '12.1242083', '-86.2385457', '', '00057', 'FARMACIA CUADRA', '2018-04-30 10:34:08', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0430105756', '12.1295044', '-86.2397569', '', '01292', 'FARMACIA LA UNIÓN RU', '2018-04-30 10:57:56', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0430112551', '12.1406242', '-86.2387095', '', '00809', 'FARMACIA EL HOGAR', '2018-04-30 11:25:51', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0430115851', '12.13921', '-86.2550549', '', '00816', 'FARMACIA EL PERUANO', '2018-04-30 11:58:51', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0502090815', '12.1077004', '-86.2235175', '', '01753', 'FARMACIA BALGAR #2', '2018-05-02 09:08:15', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0502093645', '12.0764532', '-86.194634', '', '03032', 'FARMACIA PINITA', '2018-05-02 09:36:45', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0502095704', '12.0902985', '-86.2006314', '', '00255', 'FARMACIA EVELYN', '2018-05-02 09:57:04', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0502104105', '12.118579', '-86.2486997', '', '03557', 'FARMACIA MI BELEN RU', '2018-05-02 10:41:05', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0502112526', '12.142401', '-86.2524329', '', '01681', 'FARMACIA SALUD ES VIDA', '2018-05-02 11:25:26', 'VM05', NULL);
INSERT INTO `log` VALUES ('F19-R0502131819', '12.1408213', '-86.2531279', '', '01062', 'FARMACIA GURDIAN', '2018-05-02 13:18:19', 'VM05', NULL);
INSERT INTO `log` VALUES ('VM05-R1', '12.1975111', '-86.0957378', '', '02419', 'FARMACIA FARMAVERO', '2018-05-07 11:34:20', 'VM05', NULL);

-- ----------------------------
-- Table structure for medicos
-- ----------------------------
DROP TABLE IF EXISTS `medicos`;
CREATE TABLE `medicos`  (
  `IdMedico` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NombreMedico` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FNacimiento` date NOT NULL,
  `Especialidad` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `SubEspecialidad` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Direccion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `TelfClinica` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Celular` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `AUGraduacion` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NEPSPrivado` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `MCMFrecuente` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CConsulta` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PFarmacia` bit(1) NOT NULL,
  `SocioClinica` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `MCelular` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `MVehiculo` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `MReloj` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `MComputadora` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NombreAsis` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `TExtensionAsis` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CelularAsis` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `EmailAsis` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FNacimientoAsis` date NOT NULL,
  `ComputadoraAsis` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `OLBAMedica` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `DeportePractica` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Pasatiempo` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `SMParticipa` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Facebook` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Twitter` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Linkedin` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Instagram` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Ruta` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cCommit` varchar(450) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdMedico`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of medicos
-- ----------------------------
INSERT INTO `medicos` VALUES ('F09-M0503110907', 'Dr. Evelio Casco Castellon.', '1975-05-05', '1', '0', 'contiguo a repuestos san cristobal, esteli', '87238689', '87238689', '', '', '', '', '', b'0', '', '', '', '', '', '', '', '', '', '1969-12-31', '', '', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('F09-M0503115742', 'Dra. yerlin Patricia Rosales Arce', '1985-11-07', '1', '0', 'caritas Diocenanas. esteli. ', '57506376', '57506376', '', '', '', '', '', b'0', '', '', '', '', '', '', '', '', '', '1969-12-31', '', '', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('F09-M0503133703', 'oscar CornejonArevalo', '1989-02-27', '1', '0', 'parque infantil 60 vrs. norte. esteli', '27132175', '84214644', '', '', '', '', '', b'0', '', '', '', '', '', '', '', '', '', '1969-12-31', '', '', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('F10-M0423115155', 'Dra. Flavia Soza', '1969-12-31', '4', '0', 'clinica fara, matagalpa. ', '27727080', '88510070', '', '', '', '', '', b'0', '', '', '', '', '', '', '', '', '', '1969-12-31', '', '', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('F10-M0424094156', 'Dr. Benito Rojas', '2018-04-11', '3', '0', 'respuestos Brenes, 3/2 c. sur', '27727070', '', '', '', '', '', '', b'1', '', '', '', '', '', '', '', '', '', '1969-12-31', '', '', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('F10-M0424140529', 'Dra. Flor de Maria Blandon ', '2018-05-29', '4', '0', 'parque Dario 10 vrs norte, matagalpa. ', '27722830', '', '', '', '', '', '', b'1', '', '', '', '', '', '', '', '', '', '1969-12-31', '', '', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('F10-M0425100053', 'Dra. Yahoska Patricia Pichardo', '1984-04-07', '4', '0', 'Frente a hospitalito, Sebaco', '89244118', '89244118', '', '', '', '', '', b'1', '', '', '', '', '', 'Arlen Lucia Machado Rivera', '', '86595367', '', '1991-10-17', '', '', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('F10-M0425140111', 'Dra . Ines Picado', '1972-01-28', '1', '0', 'policia 2c este. ciudad Dario, Matagalpa', '27762065', '85148880', '', '', '', '', '', b'1', '', '', '', '', '', '', '', '', '', '1969-12-31', '', '', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('F10-M0425145902', 'Dra. Sayda Burgos Flores.', '1984-03-26', '1', '0', 'Casa cuna Ruben Dario 4 c. este, Ciudad Dario. ', '27762291', '', '', '', '', '', '', b'1', '', '', '', '', '', '', '', '', '', '1969-12-31', '', '', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('F10-M0425151323', 'Dra. Ana Raquel Obando Torrez', '1970-11-07', '1', '0', 'Gasolinera 1, 1 Cuadra Este, 75VRS norte', '27763073', '', '', '', '', '', '', b'1', '', '', '', '', '', 'Karla Patricia Navarrete Torres', '27763073', '86530783', '', '1991-03-18', '', '', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('F10-M0426093120', 'Dr. Mauricio Antonio Altamirano Blandon', '1955-09-22', '9', '0', 'frente Acodep Jinotega', '27824103', '27824103', '', '', '', '', '', b'1', '', '', '', '', '', '', '', '', '', '1969-12-31', '', '', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('F10-M0426095155', 'Dra . Elisa Garcia Blandon.', '1961-02-03', '1', '0', 'gasolinera Gas. 75 vrs. oeste, jinotega.', '27826970', '57886944', '', '', '', '', '', b'1', '', '', '', '', '', '', '', '', '', '1969-12-31', '', '', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('F10-M0426102055', 'Dra. Candida Eligia Zelaya Noguera', '1965-12-01', '1', '0', 'silais, 1c. este, 1 c. norte, jinotega', '89151675', '89151675', '', '', '', '', '', b'0', '', '', '', '', '', '', '', '', '', '1969-12-31', '', '', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('F10-M0426111455', 'Dr. Jorge Daniel Blandon. ', '1959-07-12', '1', '0', 'contiguo a minisuper pio pio , jinotega.', '87453624', '87453624', '', '', '', '', '', b'0', '', '', '', '', '', '', '', '', '', '1969-12-31', '', '', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('F10-M0427102228', 'Rafael Antonio Bello Gutierrez', '1955-10-23', '1', '0', 'Bancentro media c. oeste, La Dalia, matagalpa', '57684665', '57684665', '', '', '', '', '', b'1', '', '', '', '', '', '', '', '', '', '1969-12-31', '', '', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('F10-M0430113544', 'Dra. Jeannine Maria Quintana Pineda', '1969-12-31', '4', '0', 'cetro Comercial Catalina, modulo A-4, matagalpa. ', '27723941', '83332831', '', '', '', '', '', b'0', '', '', '', '', '', '', '', '', '', '1969-12-31', '', 'AMMSCAV', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('F10-M0502101545', 'Dra. Geovania Orozco. Cruz.', '1976-06-28', '4', '0', 'calle santa Ana, Dra. Rizo 2c. Norte, 1/2c. oeste, matagalpa. ', '27725670', '89285098', '', '', '', '', '', b'0', '', '', '', '', '', '', '', '', '', '1969-12-31', '', '', '', '', '', '', '', '', '', 'VM03', NULL);
INSERT INTO `medicos` VALUES ('VM03-M1', 'Dr. Francisco Arauz Molina', '1963-05-25', '1', '0', 'semaforos parque dario 75 vrs. oeste, matagalpa. ', '27724447', '87035618', '', '', '', '', '', b'1', '', '', '', '', '', '', '', '', '', '1969-12-31', '', '', '', '', '', '', '', '', '', 'VM05', '');

-- ----------------------------
-- Table structure for mpoint
-- ----------------------------
DROP TABLE IF EXISTS `mpoint`;
CREATE TABLE `mpoint`  (
  `mFecha` date NULL DEFAULT NULL,
  `mCliente` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mNombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mFactura` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mPuntos` int(10) NULL DEFAULT NULL,
  `mRemanente` int(10) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mpoint
-- ----------------------------
INSERT INTO `mpoint` VALUES ('2015-05-20', '00991', NULL, '00066605', 160, 160);
INSERT INTO `mpoint` VALUES ('2015-05-23', '01947', NULL, '00066674', 60, 60);
INSERT INTO `mpoint` VALUES ('2015-05-27', '01020', NULL, '00066787', 90, 90);
INSERT INTO `mpoint` VALUES ('2015-06-01', '02010', NULL, '00066900', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2015-06-03', '00765', NULL, '00066973', 100, 100);
INSERT INTO `mpoint` VALUES ('2015-06-03', '01003', NULL, '00067007', 1000, 14);
INSERT INTO `mpoint` VALUES ('2015-06-12', '02598', NULL, '00067309', 100, 100);
INSERT INTO `mpoint` VALUES ('2015-06-13', '00892', NULL, '00067315', 60, 60);
INSERT INTO `mpoint` VALUES ('2015-06-18', '00634', NULL, '00067490', 250, 250);
INSERT INTO `mpoint` VALUES ('2015-06-22', '02010', NULL, '00067663', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2015-06-22', '01003', NULL, '00067664', 300, 300);
INSERT INTO `mpoint` VALUES ('2015-06-22', '02319', NULL, '00067665', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2015-06-23', '00752', NULL, '00067706', 100, 100);
INSERT INTO `mpoint` VALUES ('2015-06-23', '00894', NULL, '00067716', 2000, 2000);
INSERT INTO `mpoint` VALUES ('2015-06-23', '00764', NULL, '00067729', 300, 300);
INSERT INTO `mpoint` VALUES ('2015-06-26', '00634', NULL, '00067902', 100, 100);
INSERT INTO `mpoint` VALUES ('2015-07-07', '00536', NULL, '00068263', 300, 300);
INSERT INTO `mpoint` VALUES ('2015-07-07', '02598', NULL, '00068288', 80, 80);
INSERT INTO `mpoint` VALUES ('2015-07-10', '00991', NULL, '00068429', 10, 10);
INSERT INTO `mpoint` VALUES ('2015-07-11', '01011', NULL, '00068455', 5700, 5700);
INSERT INTO `mpoint` VALUES ('2015-07-14', '00892', NULL, '00068511', 180, 180);
INSERT INTO `mpoint` VALUES ('2015-07-15', '00630', NULL, '00068567', 60, 60);
INSERT INTO `mpoint` VALUES ('2015-07-15', '00634', NULL, '00068569', 150, 150);
INSERT INTO `mpoint` VALUES ('2015-07-15', '00755', NULL, '00068590', 120, 120);
INSERT INTO `mpoint` VALUES ('2015-07-22', '00641', NULL, '00068773', 600, 600);
INSERT INTO `mpoint` VALUES ('2015-07-22', '02010', NULL, '00068780', 150, 150);
INSERT INTO `mpoint` VALUES ('2015-08-12', '00764', NULL, '00069304', 200, 200);
INSERT INTO `mpoint` VALUES ('2015-08-12', '00767', NULL, '00069306', 40, 40);
INSERT INTO `mpoint` VALUES ('2015-08-13', '01125', NULL, '00069388', 60, 60);
INSERT INTO `mpoint` VALUES ('2015-08-25', '00752', NULL, '00069707', 120, 120);
INSERT INTO `mpoint` VALUES ('2015-08-25', '02598', NULL, '00069720', 12, 12);
INSERT INTO `mpoint` VALUES ('2015-08-25', '00761', NULL, '00069734', 250, 250);
INSERT INTO `mpoint` VALUES ('2015-09-04', '02518', NULL, '00070019', 132, 132);
INSERT INTO `mpoint` VALUES ('2015-09-08', '00755', NULL, '00070118', 150, 150);
INSERT INTO `mpoint` VALUES ('2015-09-08', '01019', NULL, '00070125', 276, 276);
INSERT INTO `mpoint` VALUES ('2015-09-17', '01020', NULL, '00070308', 240, 240);
INSERT INTO `mpoint` VALUES ('2015-09-23', '00634', NULL, '00070442', 170, 170);
INSERT INTO `mpoint` VALUES ('2015-09-24', '00536', NULL, '00070480', 350, 350);
INSERT INTO `mpoint` VALUES ('2015-10-06', '00622', NULL, '00070865', 700, 100);
INSERT INTO `mpoint` VALUES ('2015-10-07', '01020', NULL, '00070912', 82, 82);
INSERT INTO `mpoint` VALUES ('2015-10-12', '00752', NULL, '00071044', 300, 300);
INSERT INTO `mpoint` VALUES ('2015-10-13', '01020', NULL, '00071091', 660, 660);
INSERT INTO `mpoint` VALUES ('2015-10-13', '02598', NULL, '00071132', 200, 200);
INSERT INTO `mpoint` VALUES ('2015-10-13', '00765', NULL, '00071133', 100, 100);
INSERT INTO `mpoint` VALUES ('2015-10-14', '01019', NULL, '00071162', 80, 80);
INSERT INTO `mpoint` VALUES ('2015-10-15', '00536', NULL, '00071176', 240, 240);
INSERT INTO `mpoint` VALUES ('2015-10-15', '00633', NULL, '00071181', 64, 64);
INSERT INTO `mpoint` VALUES ('2015-10-26', '00752', NULL, '00071557', 120, 120);
INSERT INTO `mpoint` VALUES ('2015-10-26', '00752', NULL, '00071568', 160, 160);
INSERT INTO `mpoint` VALUES ('2015-11-03', '00761', NULL, '00071881', 60, 60);
INSERT INTO `mpoint` VALUES ('2015-11-03', '00765', NULL, '00071886', 132, 132);
INSERT INTO `mpoint` VALUES ('2015-11-04', '00536', NULL, '00071941', 320, 320);
INSERT INTO `mpoint` VALUES ('2015-11-05', '01020', NULL, '00071988', 130, 130);
INSERT INTO `mpoint` VALUES ('2015-11-09', '00991', NULL, '00072062', 210, 210);
INSERT INTO `mpoint` VALUES ('2015-11-17', '00991', NULL, '00072366', 250, 250);
INSERT INTO `mpoint` VALUES ('2015-11-20', '02059', NULL, '00072566', 40, 40);
INSERT INTO `mpoint` VALUES ('2015-11-20', '00632', NULL, '00072569', 430, 430);
INSERT INTO `mpoint` VALUES ('2015-11-25', '00752', NULL, '00072701', 300, 300);
INSERT INTO `mpoint` VALUES ('2015-11-26', '02319', NULL, '00072785', 100, 100);
INSERT INTO `mpoint` VALUES ('2015-11-26', '00993', NULL, '00072792', 138, 138);
INSERT INTO `mpoint` VALUES ('2015-11-26', '01020', NULL, '00072802', 300, 300);
INSERT INTO `mpoint` VALUES ('2015-11-27', '00536', NULL, '00072828', 300, 300);
INSERT INTO `mpoint` VALUES ('2015-12-04', '00752', NULL, '00073095', 450, 450);
INSERT INTO `mpoint` VALUES ('2015-12-07', '02010', NULL, '00073136', 2000, 2000);
INSERT INTO `mpoint` VALUES ('2015-12-15', '00757', NULL, '00073409', 500, 500);
INSERT INTO `mpoint` VALUES ('2015-12-15', '00767', NULL, '00073411', 200, 200);
INSERT INTO `mpoint` VALUES ('2015-12-15', '00634', NULL, '00073413', 140, 140);
INSERT INTO `mpoint` VALUES ('2015-12-17', '01119', NULL, '00073510', 600, 600);
INSERT INTO `mpoint` VALUES ('2015-12-18', '00536', NULL, '00073552', 210, 210);
INSERT INTO `mpoint` VALUES ('2015-12-18', '01020', NULL, '00073566', 200, 200);
INSERT INTO `mpoint` VALUES ('2015-12-18', '00752', NULL, '00073580', 240, 240);
INSERT INTO `mpoint` VALUES ('2015-12-21', '01947', NULL, '00073604', 110, 110);
INSERT INTO `mpoint` VALUES ('2015-12-23', '00752', NULL, '00073719', 20, 20);
INSERT INTO `mpoint` VALUES ('2016-01-04', '00991', NULL, '00073937', 30, 30);
INSERT INTO `mpoint` VALUES ('2016-01-12', '01020', NULL, '00074126', 42, 42);
INSERT INTO `mpoint` VALUES ('2016-01-19', '00630', NULL, '00074373', 60, 60);
INSERT INTO `mpoint` VALUES ('2016-01-25', '00991', NULL, '00074550', 240, 240);
INSERT INTO `mpoint` VALUES ('2016-01-25', '00752', NULL, '00074554', 120, 120);
INSERT INTO `mpoint` VALUES ('2016-01-27', '00759', NULL, '00074656', 90, 90);
INSERT INTO `mpoint` VALUES ('2016-01-27', '02598', NULL, '00074664', 100, 100);
INSERT INTO `mpoint` VALUES ('2016-02-02', '00752', NULL, '00074855', 50, 50);
INSERT INTO `mpoint` VALUES ('2016-02-03', '01008', NULL, '00074885', 250, 250);
INSERT INTO `mpoint` VALUES ('2016-02-03', '01118', NULL, '00074907', 42, 42);
INSERT INTO `mpoint` VALUES ('2016-02-06', '00630', NULL, '00074986', 20, 20);
INSERT INTO `mpoint` VALUES ('2016-02-08', '01319', NULL, '00075039', 372, 58);
INSERT INTO `mpoint` VALUES ('2016-02-11', '02531', NULL, '00075154', 150, 150);
INSERT INTO `mpoint` VALUES ('2016-02-16', '02598', NULL, '00075276', 100, 100);
INSERT INTO `mpoint` VALUES ('2016-02-19', '01004', NULL, '00075376', 10, 10);
INSERT INTO `mpoint` VALUES ('2016-02-22', '00752', NULL, '00075422', 150, 150);
INSERT INTO `mpoint` VALUES ('2016-02-23', '00753', NULL, '00075452', 45, 45);
INSERT INTO `mpoint` VALUES ('2016-02-23', '00759', NULL, '00075454', 180, 180);
INSERT INTO `mpoint` VALUES ('2016-02-23', '00764', NULL, '00075455', 200, 200);
INSERT INTO `mpoint` VALUES ('2016-02-23', '01319', NULL, '00075476', 250, 250);
INSERT INTO `mpoint` VALUES ('2016-02-26', '01947', NULL, '00075550', 200, 200);
INSERT INTO `mpoint` VALUES ('2016-02-26', '01947', NULL, '00075551', 30, 30);
INSERT INTO `mpoint` VALUES ('2016-02-26', '03278', NULL, '00075552', 250, 250);
INSERT INTO `mpoint` VALUES ('2016-02-27', '03278', NULL, '00075568', 60, 60);
INSERT INTO `mpoint` VALUES ('2016-03-01', '00633', NULL, '00075648', 30, 30);
INSERT INTO `mpoint` VALUES ('2016-03-02', '02319', NULL, '00075687', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2016-03-04', '00991', NULL, '00075757', 40, 40);
INSERT INTO `mpoint` VALUES ('2016-03-05', '03281', NULL, '00075767', 370, 370);
INSERT INTO `mpoint` VALUES ('2016-03-08', '00767', NULL, '00075857', 190, 190);
INSERT INTO `mpoint` VALUES ('2016-03-10', '00757', NULL, '00075916', 14, 14);
INSERT INTO `mpoint` VALUES ('2016-03-15', '00634', NULL, '00076063', 150, 150);
INSERT INTO `mpoint` VALUES ('2016-03-16', '02295', NULL, '00076093', 142, 142);
INSERT INTO `mpoint` VALUES ('2016-03-21', '01004', NULL, '00076154', 80, 80);
INSERT INTO `mpoint` VALUES ('2016-03-22', '00759', NULL, '00076223', 105, 105);
INSERT INTO `mpoint` VALUES ('2016-03-28', '00988', NULL, '00076251', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2016-03-30', '01011', NULL, '00076394', 350, 350);
INSERT INTO `mpoint` VALUES ('2016-03-31', '01123', NULL, '00076405', 140, 140);
INSERT INTO `mpoint` VALUES ('2016-03-31', '02010', NULL, '00076406', 84, 84);
INSERT INTO `mpoint` VALUES ('2016-03-31', '01020', NULL, '00076407', 238, 238);
INSERT INTO `mpoint` VALUES ('2016-03-31', '02531', NULL, '00076424', 140, 140);
INSERT INTO `mpoint` VALUES ('2016-04-01', '02034', NULL, '00076453', 350, 123);
INSERT INTO `mpoint` VALUES ('2016-04-05', '00622', NULL, '00076573', 150, 150);
INSERT INTO `mpoint` VALUES ('2016-04-05', '03281', NULL, '00076574', 100, 100);
INSERT INTO `mpoint` VALUES ('2016-04-08', '02010', NULL, '00076703', 70, 70);
INSERT INTO `mpoint` VALUES ('2016-04-12', '00764', NULL, '00076830', 608, 608);
INSERT INTO `mpoint` VALUES ('2016-04-12', '00761', NULL, '00076832', 180, 180);
INSERT INTO `mpoint` VALUES ('2016-04-13', '03281', NULL, '00076878', 60, 60);
INSERT INTO `mpoint` VALUES ('2016-04-14', '00536', NULL, '00076909', 540, 540);
INSERT INTO `mpoint` VALUES ('2016-04-15', '01947', NULL, '00076954', 330, 330);
INSERT INTO `mpoint` VALUES ('2016-04-15', '01762', NULL, '00076957', 176, 176);
INSERT INTO `mpoint` VALUES ('2016-04-19', '03281', NULL, '00077054', 40, 40);
INSERT INTO `mpoint` VALUES ('2016-04-20', '01020', NULL, '00077089', 150, 150);
INSERT INTO `mpoint` VALUES ('2016-04-25', '01019', NULL, '00077213', 240, 240);
INSERT INTO `mpoint` VALUES ('2016-04-26', '00759', NULL, '00077247', 140, 140);
INSERT INTO `mpoint` VALUES ('2016-04-27', '00639', NULL, '00077299', 98, 98);
INSERT INTO `mpoint` VALUES ('2016-04-27', '02295', NULL, '00077304', 112, 112);
INSERT INTO `mpoint` VALUES ('2016-04-29', '01003', NULL, '00077359', 70, 70);
INSERT INTO `mpoint` VALUES ('2016-05-03', '03306', NULL, '00077395', 75, 75);
INSERT INTO `mpoint` VALUES ('2016-05-03', '00627', NULL, '00077411', 135, 135);
INSERT INTO `mpoint` VALUES ('2016-05-03', '00633', NULL, '00077414', 90, 90);
INSERT INTO `mpoint` VALUES ('2016-05-03', '00633', NULL, '00077415', 134, 134);
INSERT INTO `mpoint` VALUES ('2016-05-04', '00630', NULL, '00077443', 200, 200);
INSERT INTO `mpoint` VALUES ('2016-05-04', '01004', NULL, '00077444', 210, 210);
INSERT INTO `mpoint` VALUES ('2016-05-06', '00765', NULL, '00077522', 160, 160);
INSERT INTO `mpoint` VALUES ('2016-05-09', '00630', NULL, '00077560', 230, 230);
INSERT INTO `mpoint` VALUES ('2016-05-10', '00627', NULL, '00077630', 210, 210);
INSERT INTO `mpoint` VALUES ('2016-05-10', '00536', NULL, '00077631', 200, 200);
INSERT INTO `mpoint` VALUES ('2016-05-10', '02010', NULL, '00077639', 540, 540);
INSERT INTO `mpoint` VALUES ('2016-05-11', '01319', NULL, '00077670', 70, 70);
INSERT INTO `mpoint` VALUES ('2016-05-11', '01319', NULL, '00077671', 54, 54);
INSERT INTO `mpoint` VALUES ('2016-05-11', '01020', NULL, '00077692', 60, 60);
INSERT INTO `mpoint` VALUES ('2016-05-11', '03309', NULL, '00077700', 40, 40);
INSERT INTO `mpoint` VALUES ('2016-05-12', '03312', NULL, '00077734', 188, 188);
INSERT INTO `mpoint` VALUES ('2016-05-16', '00753', NULL, '00077828', 200, 200);
INSERT INTO `mpoint` VALUES ('2016-05-16', '03316', NULL, '00077846', 550, 550);
INSERT INTO `mpoint` VALUES ('2016-05-16', '01004', NULL, '00077847', 140, 140);
INSERT INTO `mpoint` VALUES ('2016-05-16', '02010', NULL, '00077848', 600, 600);
INSERT INTO `mpoint` VALUES ('2016-05-17', '00622', NULL, '00077877', 240, 240);
INSERT INTO `mpoint` VALUES ('2016-05-18', '01337', NULL, '00077909', 68, 68);
INSERT INTO `mpoint` VALUES ('2016-05-18', '03306', NULL, '00077922', 112, 112);
INSERT INTO `mpoint` VALUES ('2016-05-25', '00641', NULL, '00078131', 400, 14);
INSERT INTO `mpoint` VALUES ('2016-05-25', '00759', NULL, '00078136', 140, 140);
INSERT INTO `mpoint` VALUES ('2016-05-25', '03312', NULL, '00078151', 75, 75);
INSERT INTO `mpoint` VALUES ('2016-05-26', '01125', NULL, '00078214', 150, 150);
INSERT INTO `mpoint` VALUES ('2016-05-31', '00894', NULL, '00078301', 210, 210);
INSERT INTO `mpoint` VALUES ('2016-06-16', '01120', NULL, '00078413', 120, 120);
INSERT INTO `mpoint` VALUES ('2016-06-21', '00761', NULL, '00078594', 250, 250);
INSERT INTO `mpoint` VALUES ('2016-06-22', '02080', NULL, '00078649', 1000, 102);
INSERT INTO `mpoint` VALUES ('2016-06-22', '01020', NULL, '00078651', 120, 120);
INSERT INTO `mpoint` VALUES ('2016-06-22', '02080', NULL, '00078652', 112, 112);
INSERT INTO `mpoint` VALUES ('2016-06-24', '01118', NULL, '00078771', 180, 180);
INSERT INTO `mpoint` VALUES ('2016-07-05', '00764', NULL, '00079169', 240, 240);
INSERT INTO `mpoint` VALUES ('2016-07-06', '01020', NULL, '00079252', 146, 146);
INSERT INTO `mpoint` VALUES ('2016-07-07', '03306', NULL, '00079324', 250, 250);
INSERT INTO `mpoint` VALUES ('2016-07-08', '02010', NULL, '00079349', 210, 210);
INSERT INTO `mpoint` VALUES ('2016-07-09', '01947', NULL, '00079387', 146, 146);
INSERT INTO `mpoint` VALUES ('2016-07-09', '00765', NULL, '00079389', 70, 70);
INSERT INTO `mpoint` VALUES ('2016-07-09', '03309', NULL, '00079393', 88, 88);
INSERT INTO `mpoint` VALUES ('2016-07-12', '03349', NULL, '00079508', 30, 30);
INSERT INTO `mpoint` VALUES ('2016-07-14', '00536', NULL, '00079594', 142, 142);
INSERT INTO `mpoint` VALUES ('2016-07-14', '03305', NULL, '00079604', 250, 250);
INSERT INTO `mpoint` VALUES ('2016-07-15', '03356', NULL, '00079641', 80, 80);
INSERT INTO `mpoint` VALUES ('2016-07-15', '03356', NULL, '00079643', 442, 442);
INSERT INTO `mpoint` VALUES ('2016-07-18', '00757', NULL, '00079705', 200, 200);
INSERT INTO `mpoint` VALUES ('2016-07-18', '00759', NULL, '00079706', 200, 200);
INSERT INTO `mpoint` VALUES ('2016-07-18', '03309', NULL, '00079707', 250, 250);
INSERT INTO `mpoint` VALUES ('2016-07-20', '03303', NULL, '00079752', 1210, 1210);
INSERT INTO `mpoint` VALUES ('2016-07-21', '00639', NULL, '00079766', 60, 60);
INSERT INTO `mpoint` VALUES ('2016-07-21', '02059', NULL, '00079795', 110, 110);
INSERT INTO `mpoint` VALUES ('2016-07-21', '02059', NULL, '00079796', 30, 30);
INSERT INTO `mpoint` VALUES ('2016-07-21', '00753', NULL, '00079821', 110, 110);
INSERT INTO `mpoint` VALUES ('2016-07-22', '03278', NULL, '00079866', 70, 70);
INSERT INTO `mpoint` VALUES ('2016-07-26', '00627', NULL, '00080001', 200, 200);
INSERT INTO `mpoint` VALUES ('2016-07-27', '00752', NULL, '00080055', 500, 500);
INSERT INTO `mpoint` VALUES ('2016-07-27', '00752', NULL, '00080067', 420, 420);
INSERT INTO `mpoint` VALUES ('2016-07-27', '00633', NULL, '00080072', 84, 84);
INSERT INTO `mpoint` VALUES ('2016-07-29', '01020', NULL, '00080160', 500, 500);
INSERT INTO `mpoint` VALUES ('2016-07-29', '00001', NULL, '00080173', 200, 200);
INSERT INTO `mpoint` VALUES ('2016-07-29', '01004', NULL, '00080187', 100, 100);
INSERT INTO `mpoint` VALUES ('2016-08-02', '03309', NULL, '00080292', 360, 360);
INSERT INTO `mpoint` VALUES ('2016-08-05', '01003', NULL, '00080472', 100, 100);
INSERT INTO `mpoint` VALUES ('2016-08-05', '03356', NULL, '00080474', 190, 190);
INSERT INTO `mpoint` VALUES ('2016-08-08', '01004', NULL, '00080515', 160, 160);
INSERT INTO `mpoint` VALUES ('2016-08-08', '02010', NULL, '00080524', 270, 270);
INSERT INTO `mpoint` VALUES ('2016-08-16', '02598', NULL, '00080867', 110, 110);
INSERT INTO `mpoint` VALUES ('2016-08-17', '03303', NULL, '00080933', 170, 170);
INSERT INTO `mpoint` VALUES ('2016-08-18', '02531', NULL, '00080976', 60, 60);
INSERT INTO `mpoint` VALUES ('2016-08-18', '02531', NULL, '00080977', 100, 100);
INSERT INTO `mpoint` VALUES ('2016-08-18', '01319', NULL, '00080986', 180, 180);
INSERT INTO `mpoint` VALUES ('2016-08-18', '01319', NULL, '00080987', 100, 100);
INSERT INTO `mpoint` VALUES ('2016-08-19', '00639', NULL, '00081063', 280, 280);
INSERT INTO `mpoint` VALUES ('2016-08-19', '01019', NULL, '00081074', 50, 50);
INSERT INTO `mpoint` VALUES ('2016-08-22', '00889', NULL, '00081135', 140, 6);
INSERT INTO `mpoint` VALUES ('2016-08-22', '00889', NULL, '00081136', 80, 80);
INSERT INTO `mpoint` VALUES ('2016-08-22', '02010', NULL, '00081141', 320, 320);
INSERT INTO `mpoint` VALUES ('2016-08-22', '01947', NULL, '00081143', 160, 160);
INSERT INTO `mpoint` VALUES ('2016-08-23', '00753', NULL, '00081181', 100, 100);
INSERT INTO `mpoint` VALUES ('2016-08-23', '01020', NULL, '00081200', 140, 140);
INSERT INTO `mpoint` VALUES ('2016-08-23', '00761', NULL, '00081208', 200, 200);
INSERT INTO `mpoint` VALUES ('2016-08-24', '01120', NULL, '00081281', 240, 240);
INSERT INTO `mpoint` VALUES ('2016-08-24', '00536', NULL, '00081284', 140, 140);
INSERT INTO `mpoint` VALUES ('2016-08-29', '02319', NULL, '00081456', 562, 562);
INSERT INTO `mpoint` VALUES ('2016-08-30', '00765', NULL, '00081496', 140, 140);
INSERT INTO `mpoint` VALUES ('2016-08-30', '00764', NULL, '00081501', 210, 210);
INSERT INTO `mpoint` VALUES ('2016-09-05', '00991', NULL, '00081734', 250, 250);
INSERT INTO `mpoint` VALUES ('2016-09-06', '02197', NULL, '00081801', 102, 97);
INSERT INTO `mpoint` VALUES ('2016-09-08', '03305', NULL, '00081923', 100, 100);
INSERT INTO `mpoint` VALUES ('2016-09-09', '02319', NULL, '00081944', 310, 310);
INSERT INTO `mpoint` VALUES ('2016-09-13', '03395', NULL, '00082072', 142, 142);
INSERT INTO `mpoint` VALUES ('2016-09-19', '01004', NULL, '00082232', 280, 280);
INSERT INTO `mpoint` VALUES ('2016-09-19', '01020', NULL, '00082250', 10, 10);
INSERT INTO `mpoint` VALUES ('2016-09-20', '03316', NULL, '00082289', 400, 400);
INSERT INTO `mpoint` VALUES ('2016-09-20', '00622', NULL, '00082323', 1180, 180);
INSERT INTO `mpoint` VALUES ('2016-09-21', '00627', NULL, '00082382', 120, 120);
INSERT INTO `mpoint` VALUES ('2016-09-21', '00630', NULL, '00082395', 120, 120);
INSERT INTO `mpoint` VALUES ('2016-09-22', '02531', NULL, '00082453', 310, 310);
INSERT INTO `mpoint` VALUES ('2016-09-22', '01020', NULL, '00082458', 140, 140);
INSERT INTO `mpoint` VALUES ('2016-09-22', '00752', NULL, '00082468', 700, 700);
INSERT INTO `mpoint` VALUES ('2016-09-27', '00753', NULL, '00082658', 100, 100);
INSERT INTO `mpoint` VALUES ('2016-09-27', '00764', NULL, '00082665', 138, 138);
INSERT INTO `mpoint` VALUES ('2016-09-28', '03395', NULL, '00082708', 60, 60);
INSERT INTO `mpoint` VALUES ('2016-09-28', '01018', NULL, '00082711', 140, 140);
INSERT INTO `mpoint` VALUES ('2016-09-28', '01019', NULL, '00082713', 202, 202);
INSERT INTO `mpoint` VALUES ('2016-09-28', '03303', NULL, '00082739', 700, 700);
INSERT INTO `mpoint` VALUES ('2016-09-28', '01020', NULL, '00082759', 120, 120);
INSERT INTO `mpoint` VALUES ('2016-09-29', '01004', NULL, '00082792', 190, 190);
INSERT INTO `mpoint` VALUES ('2016-09-30', '03281', NULL, '00082841', 280, 280);
INSERT INTO `mpoint` VALUES ('2016-10-03', '03306', NULL, '00082905', 180, 180);
INSERT INTO `mpoint` VALUES ('2016-10-05', '02319', NULL, '00082989', 282, 282);
INSERT INTO `mpoint` VALUES ('2016-10-11', '03309', NULL, '00083214', 102, 102);
INSERT INTO `mpoint` VALUES ('2016-10-12', '00752', NULL, '00083245', 60, 60);
INSERT INTO `mpoint` VALUES ('2016-10-12', '01120', NULL, '00083263', 200, 200);
INSERT INTO `mpoint` VALUES ('2016-10-13', '00763', NULL, '00083327', 174, 174);
INSERT INTO `mpoint` VALUES ('2016-10-17', '02319', NULL, '00083417', 1262, 1262);
INSERT INTO `mpoint` VALUES ('2016-10-17', '01004', NULL, '00083426', 120, 120);
INSERT INTO `mpoint` VALUES ('2016-10-18', '00633', NULL, '00083460', 130, 130);
INSERT INTO `mpoint` VALUES ('2016-10-18', '02123', NULL, '00083486', 120, 120);
INSERT INTO `mpoint` VALUES ('2016-10-20', '00752', NULL, '00083616', 100, 100);
INSERT INTO `mpoint` VALUES ('2016-10-26', '00641', NULL, '00083881', 90, 90);
INSERT INTO `mpoint` VALUES ('2016-10-26', '02598', NULL, '00083887', 80, 80);
INSERT INTO `mpoint` VALUES ('2016-10-27', '02531', NULL, '00083942', 160, 160);
INSERT INTO `mpoint` VALUES ('2016-11-01', '03305', NULL, '00084065', 184, 184);
INSERT INTO `mpoint` VALUES ('2016-11-03', '00623', NULL, '00084157', 290, 61);
INSERT INTO `mpoint` VALUES ('2016-11-04', '01020', NULL, '00084191', 45, 45);
INSERT INTO `mpoint` VALUES ('2016-11-09', '00765', NULL, '00084408', 45, 45);
INSERT INTO `mpoint` VALUES ('2016-11-09', '00771', NULL, '00084441', 120, 52);
INSERT INTO `mpoint` VALUES ('2016-11-10', '03309', NULL, '00084476', 30, 30);
INSERT INTO `mpoint` VALUES ('2016-11-10', '00001', NULL, '00084492', 147, 147);
INSERT INTO `mpoint` VALUES ('2016-11-10', '01319', NULL, '00084505', 609, 609);
INSERT INTO `mpoint` VALUES ('2016-11-10', '01319', NULL, '00084506', 40, 40);
INSERT INTO `mpoint` VALUES ('2016-11-10', '01005', NULL, '00084508', 440, 72);
INSERT INTO `mpoint` VALUES ('2016-11-10', '03408', NULL, '00084511', 270, 270);
INSERT INTO `mpoint` VALUES ('2016-11-11', '03425', NULL, '00084531', 145, 145);
INSERT INTO `mpoint` VALUES ('2016-11-14', '02319', NULL, '00084621', 45, 45);
INSERT INTO `mpoint` VALUES ('2016-11-14', '02319', NULL, '00084625', 360, 360);
INSERT INTO `mpoint` VALUES ('2016-11-15', '03281', NULL, '00084726', 250, 250);
INSERT INTO `mpoint` VALUES ('2016-11-16', '00639', NULL, '00084795', 90, 90);
INSERT INTO `mpoint` VALUES ('2016-11-16', '02531', NULL, '00084799', 150, 150);
INSERT INTO `mpoint` VALUES ('2016-11-17', '02531', NULL, '00084815', 90, 90);
INSERT INTO `mpoint` VALUES ('2016-11-17', '00536', NULL, '00084847', 390, 390);
INSERT INTO `mpoint` VALUES ('2016-11-17', '03403', NULL, '00084848', 140, 140);
INSERT INTO `mpoint` VALUES ('2016-11-18', '02197', NULL, '00084877', 325, 325);
INSERT INTO `mpoint` VALUES ('2016-11-21', '00988', NULL, '00084951', 500, 500);
INSERT INTO `mpoint` VALUES ('2016-11-21', '03425', NULL, '00084955', 120, 120);
INSERT INTO `mpoint` VALUES ('2016-11-21', '03425', NULL, '00084956', 200, 200);
INSERT INTO `mpoint` VALUES ('2016-11-22', '02058', NULL, '00084987', 500, 190);
INSERT INTO `mpoint` VALUES ('2016-11-22', '00764', NULL, '00085024', 150, 150);
INSERT INTO `mpoint` VALUES ('2016-11-22', '00759', NULL, '00085028', 150, 150);
INSERT INTO `mpoint` VALUES ('2016-11-22', '00759', NULL, '00085029', 270, 270);
INSERT INTO `mpoint` VALUES ('2016-11-23', '00771', NULL, '00085083', 90, 90);
INSERT INTO `mpoint` VALUES ('2016-11-23', '01020', NULL, '00085100', 1000, 308);
INSERT INTO `mpoint` VALUES ('2016-11-24', '00756', NULL, '00085111', 150, 88);
INSERT INTO `mpoint` VALUES ('2016-11-25', '02010', NULL, '00085173', 90, 90);
INSERT INTO `mpoint` VALUES ('2016-11-25', '03434', NULL, '00085179', 550, 550);
INSERT INTO `mpoint` VALUES ('2016-11-28', '02319', NULL, '00085234', 250, 250);
INSERT INTO `mpoint` VALUES ('2016-11-28', '00991', NULL, '00085260', 45, 45);
INSERT INTO `mpoint` VALUES ('2016-11-29', '00622', NULL, '00085325', 500, 500);
INSERT INTO `mpoint` VALUES ('2016-11-29', '03435', NULL, '00085374', 80, 80);
INSERT INTO `mpoint` VALUES ('2016-11-29', '03435', NULL, '00085375', 460, 460);
INSERT INTO `mpoint` VALUES ('2016-11-30', '00536', NULL, '00085434', 150, 150);
INSERT INTO `mpoint` VALUES ('2016-12-05', '03425', NULL, '00085565', 84, 84);
INSERT INTO `mpoint` VALUES ('2016-12-07', '00752', NULL, '00085678', 300, 300);
INSERT INTO `mpoint` VALUES ('2016-12-09', '01020', NULL, '00085688', 30, 30);
INSERT INTO `mpoint` VALUES ('2016-12-09', '03395', NULL, '00085691', 120, 120);
INSERT INTO `mpoint` VALUES ('2016-12-09', '02499', NULL, '00085717', 300, 6);
INSERT INTO `mpoint` VALUES ('2016-12-10', '00894', NULL, '00085735', 700, 130);
INSERT INTO `mpoint` VALUES ('2016-12-13', '03434', NULL, '00085830', 240, 240);
INSERT INTO `mpoint` VALUES ('2016-12-15', '03303', NULL, '00085907', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2016-12-15', '03403', NULL, '00085917', 250, 250);
INSERT INTO `mpoint` VALUES ('2016-12-16', '00753', NULL, '00085939', 90, 90);
INSERT INTO `mpoint` VALUES ('2016-12-19', '01004', NULL, '00086005', 140, 140);
INSERT INTO `mpoint` VALUES ('2016-12-20', '01020', NULL, '00086034', 120, 120);
INSERT INTO `mpoint` VALUES ('2016-12-20', '03309', NULL, '00086053', 210, 210);
INSERT INTO `mpoint` VALUES ('2016-12-23', '03269', NULL, '00086198', 200, 200);
INSERT INTO `mpoint` VALUES ('2016-12-23', '03432', NULL, '00086201', 90, 90);
INSERT INTO `mpoint` VALUES ('2016-12-27', '00752', NULL, '00086237', 500, 500);
INSERT INTO `mpoint` VALUES ('2016-12-27', '00627', NULL, '00086281', 110, 110);
INSERT INTO `mpoint` VALUES ('2016-12-27', '03434', NULL, '00086292', 94, 94);
INSERT INTO `mpoint` VALUES ('2016-12-29', '00752', NULL, '00086371', 150, 150);
INSERT INTO `mpoint` VALUES ('2016-12-29', '02256', NULL, '00086418', 42, 42);
INSERT INTO `mpoint` VALUES ('2016-12-30', '03425', NULL, '00086427', 90, 90);
INSERT INTO `mpoint` VALUES ('2016-12-30', '00752', NULL, '00086431', 1000, 41);
INSERT INTO `mpoint` VALUES ('2017-01-04', '01020', NULL, '00086557', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-01-04', '01019', NULL, '00086566', 60, 60);
INSERT INTO `mpoint` VALUES ('2017-01-05', '01004', NULL, '00086602', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-01-05', '00756', NULL, '00086623', 74, 74);
INSERT INTO `mpoint` VALUES ('2017-01-06', '02319', NULL, '00086694', 500, 500);
INSERT INTO `mpoint` VALUES ('2017-01-10', '02010', NULL, '00086731', 300, 300);
INSERT INTO `mpoint` VALUES ('2017-01-10', '00622', NULL, '00086792', 1500, 1500);
INSERT INTO `mpoint` VALUES ('2017-01-10', '00634', NULL, '00086796', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-01-10', '00623', NULL, '00086822', 40, 40);
INSERT INTO `mpoint` VALUES ('2017-01-11', '00759', NULL, '00086860', 180, 180);
INSERT INTO `mpoint` VALUES ('2017-01-11', '00641', NULL, '00086861', 390, 390);
INSERT INTO `mpoint` VALUES ('2017-01-11', '00988', NULL, '00086889', 40, 40);
INSERT INTO `mpoint` VALUES ('2017-01-12', '02531', NULL, '00086938', 250, 250);
INSERT INTO `mpoint` VALUES ('2017-01-13', '03278', NULL, '00086995', 250, 250);
INSERT INTO `mpoint` VALUES ('2017-01-16', '03447', NULL, '00087036', 1950, 1950);
INSERT INTO `mpoint` VALUES ('2017-01-16', '00991', NULL, '00087057', 82, 82);
INSERT INTO `mpoint` VALUES ('2017-01-16', '02319', NULL, '00087059', 1450, 1450);
INSERT INTO `mpoint` VALUES ('2017-01-16', '03447', NULL, '00087062', 1150, 1150);
INSERT INTO `mpoint` VALUES ('2017-01-17', '03309', NULL, '00087135', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-01-17', '03395', NULL, '00087141', 250, 250);
INSERT INTO `mpoint` VALUES ('2017-01-18', '00763', NULL, '00087168', 40, 12);
INSERT INTO `mpoint` VALUES ('2017-01-23', '02010', NULL, '00087344', 350, 350);
INSERT INTO `mpoint` VALUES ('2017-01-23', '03425', NULL, '00087346', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-01-24', '00752', NULL, '00087363', 350, 350);
INSERT INTO `mpoint` VALUES ('2017-01-24', '03303', NULL, '00087369', 210, 210);
INSERT INTO `mpoint` VALUES ('2017-01-24', '03435', NULL, '00087408', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-01-24', '00622', NULL, '00087411', 775, 775);
INSERT INTO `mpoint` VALUES ('2017-01-24', '00633', NULL, '00087417', 290, 290);
INSERT INTO `mpoint` VALUES ('2017-01-24', '02598', NULL, '00087435', 100, 100);
INSERT INTO `mpoint` VALUES ('2017-01-24', '01011', NULL, '00087444', 6400, 6400);
INSERT INTO `mpoint` VALUES ('2017-01-27', '00536', NULL, '00087616', 350, 350);
INSERT INTO `mpoint` VALUES ('2017-01-27', '01003', NULL, '00087668', 112, 112);
INSERT INTO `mpoint` VALUES ('2017-01-30', '00893', NULL, '00087730', 140, 14);
INSERT INTO `mpoint` VALUES ('2017-01-31', '00623', NULL, '00087785', 24, 24);
INSERT INTO `mpoint` VALUES ('2017-02-01', '03278', NULL, '00087876', 24, 24);
INSERT INTO `mpoint` VALUES ('2017-02-01', '03434', NULL, '00087877', 64, 64);
INSERT INTO `mpoint` VALUES ('2017-02-01', '02080', NULL, '00087903', 300, 300);
INSERT INTO `mpoint` VALUES ('2017-02-01', '02316', NULL, '00087914', 474, 34);
INSERT INTO `mpoint` VALUES ('2017-02-02', '00622', NULL, '00087932', 1300, 1300);
INSERT INTO `mpoint` VALUES ('2017-02-02', '00896', NULL, '00087966', 74, 74);
INSERT INTO `mpoint` VALUES ('2017-02-02', '01020', NULL, '00087983', 180, 180);
INSERT INTO `mpoint` VALUES ('2017-02-03', '00752', NULL, '00088035', 750, 750);
INSERT INTO `mpoint` VALUES ('2017-02-06', '01005', NULL, '00088104', 84, 84);
INSERT INTO `mpoint` VALUES ('2017-02-06', '02319', NULL, '00088106', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-02-07', '00624', NULL, '00088149', 112, 2);
INSERT INTO `mpoint` VALUES ('2017-02-07', '03395', NULL, '00088187', 210, 210);
INSERT INTO `mpoint` VALUES ('2017-02-07', '00763', NULL, '00088204', 88, 88);
INSERT INTO `mpoint` VALUES ('2017-02-08', '01906', NULL, '00088244', 744, 104);
INSERT INTO `mpoint` VALUES ('2017-02-08', '01906', NULL, '00088245', 56, 56);
INSERT INTO `mpoint` VALUES ('2017-02-08', '00641', NULL, '00088261', 400, 400);
INSERT INTO `mpoint` VALUES ('2017-02-08', '03403', NULL, '00088268', 250, 250);
INSERT INTO `mpoint` VALUES ('2017-02-08', '02531', NULL, '00088284', 590, 590);
INSERT INTO `mpoint` VALUES ('2017-02-09', '00894', NULL, '00088322', 278, 278);
INSERT INTO `mpoint` VALUES ('2017-02-09', '00894', NULL, '00088323', 56, 56);
INSERT INTO `mpoint` VALUES ('2017-02-11', '03181', NULL, '00088417', 2500, 402);
INSERT INTO `mpoint` VALUES ('2017-02-11', '00752', NULL, '00088423', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-02-13', '03278', NULL, '00088459', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-02-13', '03408', NULL, '00088469', 224, 224);
INSERT INTO `mpoint` VALUES ('2017-02-14', '00634', NULL, '00088491', 430, 430);
INSERT INTO `mpoint` VALUES ('2017-02-14', '02531', NULL, '00088497', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-02-15', '00766', NULL, '00088552', 170, 170);
INSERT INTO `mpoint` VALUES ('2017-02-16', '01020', NULL, '00088595', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-02-17', '00622', NULL, '00088665', 250, 250);
INSERT INTO `mpoint` VALUES ('2017-02-20', '00998', NULL, '00088711', 1000, 540);
INSERT INTO `mpoint` VALUES ('2017-02-20', '03181', NULL, '00088716', 600, 600);
INSERT INTO `mpoint` VALUES ('2017-02-20', '02034', NULL, '00088731', 1000, 44);
INSERT INTO `mpoint` VALUES ('2017-02-20', '03356', NULL, '00088744', 162, 162);
INSERT INTO `mpoint` VALUES ('2017-02-20', '03356', NULL, '00088745', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-02-20', '03356', NULL, '00088746', 50, 50);
INSERT INTO `mpoint` VALUES ('2017-02-20', '00889', NULL, '00088752', 42, 42);
INSERT INTO `mpoint` VALUES ('2017-02-20', '00889', NULL, '00088753', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-02-21', '00622', NULL, '00088803', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-02-21', '00628', NULL, '00088806', 40, 40);
INSERT INTO `mpoint` VALUES ('2017-02-21', '00763', NULL, '00088822', 130, 130);
INSERT INTO `mpoint` VALUES ('2017-02-22', '01020', NULL, '00088850', 500, 500);
INSERT INTO `mpoint` VALUES ('2017-02-22', '01018', NULL, '00088854', 64, 64);
INSERT INTO `mpoint` VALUES ('2017-02-22', '02197', NULL, '00088876', 280, 280);
INSERT INTO `mpoint` VALUES ('2017-02-22', '02197', NULL, '00088877', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-02-22', '02197', NULL, '00088878', 65, 65);
INSERT INTO `mpoint` VALUES ('2017-02-22', '00536', NULL, '00088883', 270, 270);
INSERT INTO `mpoint` VALUES ('2017-02-22', '00536', NULL, '00088884', 80, 80);
INSERT INTO `mpoint` VALUES ('2017-02-23', '03475', NULL, '00088908', 362, 362);
INSERT INTO `mpoint` VALUES ('2017-02-23', '03309', NULL, '00088947', 190, 190);
INSERT INTO `mpoint` VALUES ('2017-02-24', '03303', NULL, '00088996', 524, 524);
INSERT INTO `mpoint` VALUES ('2017-02-24', '03303', NULL, '00088997', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-02-25', '01007', NULL, '00089015', 5000, 275);
INSERT INTO `mpoint` VALUES ('2017-03-01', '02080', NULL, '00089111', 260, 260);
INSERT INTO `mpoint` VALUES ('2017-03-01', '02080', NULL, '00089112', 500, 500);
INSERT INTO `mpoint` VALUES ('2017-03-01', '02058', NULL, '00089114', 300, 300);
INSERT INTO `mpoint` VALUES ('2017-03-01', '03475', NULL, '00089119', 50, 50);
INSERT INTO `mpoint` VALUES ('2017-03-01', '03408', NULL, '00089122', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-03-01', '01762', NULL, '00089145', 72, 72);
INSERT INTO `mpoint` VALUES ('2017-03-01', '03480', NULL, '00089148', 112, 112);
INSERT INTO `mpoint` VALUES ('2017-03-02', '00752', NULL, '00089183', 500, 500);
INSERT INTO `mpoint` VALUES ('2017-03-02', '00766', NULL, '00089225', 80, 80);
INSERT INTO `mpoint` VALUES ('2017-03-06', '02319', NULL, '00089310', 288, 288);
INSERT INTO `mpoint` VALUES ('2017-03-06', '03425', NULL, '00089324', 100, 100);
INSERT INTO `mpoint` VALUES ('2017-03-07', '00623', NULL, '00089363', 80, 80);
INSERT INTO `mpoint` VALUES ('2017-03-07', '00752', NULL, '00089370', 440, 440);
INSERT INTO `mpoint` VALUES ('2017-03-07', '00633', NULL, '00089371', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-03-07', '00622', NULL, '00089376', 640, 640);
INSERT INTO `mpoint` VALUES ('2017-03-08', '01123', NULL, '00089416', 292, 292);
INSERT INTO `mpoint` VALUES ('2017-03-08', '00627', NULL, '00089426', 138, 138);
INSERT INTO `mpoint` VALUES ('2017-03-13', '03447', NULL, '00089601', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-03-14', '03395', NULL, '00089668', 338, 258);
INSERT INTO `mpoint` VALUES ('2017-03-14', '00761', NULL, '00089669', 250, 250);
INSERT INTO `mpoint` VALUES ('2017-03-14', '00760', NULL, '00089670', 564, 564);
INSERT INTO `mpoint` VALUES ('2017-03-14', '00764', NULL, '00089671', 180, 180);
INSERT INTO `mpoint` VALUES ('2017-03-16', '00894', NULL, '00089760', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-03-16', '02256', NULL, '00089761', 100, 100);
INSERT INTO `mpoint` VALUES ('2017-03-16', '00639', NULL, '00089833', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-03-18', '01762', NULL, '00089883', 170, 170);
INSERT INTO `mpoint` VALUES ('2017-03-20', '00988', NULL, '00089909', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-03-21', '02010', NULL, '00089947', 130, 130);
INSERT INTO `mpoint` VALUES ('2017-03-21', '00991', NULL, '00089953', 50, 50);
INSERT INTO `mpoint` VALUES ('2017-03-21', '00641', NULL, '00089959', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-03-21', '00622', NULL, '00089985', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-03-21', '00628', NULL, '00090005', 286, 163);
INSERT INTO `mpoint` VALUES ('2017-03-22', '01120', NULL, '00090063', 26, 26);
INSERT INTO `mpoint` VALUES ('2017-03-22', '01003', NULL, '00090069', 112, 112);
INSERT INTO `mpoint` VALUES ('2017-03-23', '00896', NULL, '00090115', 50, 50);
INSERT INTO `mpoint` VALUES ('2017-03-23', '02197', NULL, '00090120', 80, 80);
INSERT INTO `mpoint` VALUES ('2017-03-24', '02034', NULL, '00090202', 112, 112);
INSERT INTO `mpoint` VALUES ('2017-03-27', '02319', NULL, '00090227', 162, 162);
INSERT INTO `mpoint` VALUES ('2017-03-31', '03432', NULL, '00090495', 130, 130);
INSERT INTO `mpoint` VALUES ('2017-04-03', '00752', NULL, '00090506', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-04-03', '03309', NULL, '00090515', 108, 108);
INSERT INTO `mpoint` VALUES ('2017-04-03', '03349', NULL, '00090516', 84, 84);
INSERT INTO `mpoint` VALUES ('2017-04-03', '01762', NULL, '00090524', 166, 166);
INSERT INTO `mpoint` VALUES ('2017-04-03', '02316', NULL, '00090554', 336, 336);
INSERT INTO `mpoint` VALUES ('2017-04-03', '03181', NULL, '00090572', 1850, 1850);
INSERT INTO `mpoint` VALUES ('2017-04-04', '00759', NULL, '00090599', 26, 26);
INSERT INTO `mpoint` VALUES ('2017-04-04', '00765', NULL, '00090602', 52, 52);
INSERT INTO `mpoint` VALUES ('2017-04-05', '00628', NULL, '00090653', 146, 146);
INSERT INTO `mpoint` VALUES ('2017-04-07', '02247', NULL, '00090788', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-04-07', '02197', NULL, '00090838', 70, 70);
INSERT INTO `mpoint` VALUES ('2017-04-10', '01337', NULL, '00090856', 30, 30);
INSERT INTO `mpoint` VALUES ('2017-04-10', '00988', NULL, '00090869', 500, 500);
INSERT INTO `mpoint` VALUES ('2017-04-10', '02058', NULL, '00090878', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-04-11', '03356', NULL, '00090928', 240, 240);
INSERT INTO `mpoint` VALUES ('2017-04-11', '03356', NULL, '00090929', 70, 70);
INSERT INTO `mpoint` VALUES ('2017-04-11', '00761', NULL, '00090965', 20, 20);
INSERT INTO `mpoint` VALUES ('2017-04-17', '03349', NULL, '00090993', 116, 116);
INSERT INTO `mpoint` VALUES ('2017-04-17', '01019', NULL, '00090995', 326, 326);
INSERT INTO `mpoint` VALUES ('2017-04-17', '03181', NULL, '00091003', 2000, 2000);
INSERT INTO `mpoint` VALUES ('2017-04-17', '01004', NULL, '00091041', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-04-18', '02010', NULL, '00091064', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-04-18', '00623', NULL, '00091123', 24, 24);
INSERT INTO `mpoint` VALUES ('2017-04-18', '00622', NULL, '00091131', 800, 800);
INSERT INTO `mpoint` VALUES ('2017-04-18', '00624', NULL, '00091137', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-04-19', '03435', NULL, '00091149', 20, 20);
INSERT INTO `mpoint` VALUES ('2017-04-19', '00894', NULL, '00091150', 560, 560);
INSERT INTO `mpoint` VALUES ('2017-04-19', '00641', NULL, '00091180', 26, 26);
INSERT INTO `mpoint` VALUES ('2017-04-19', '02010', NULL, '00091205', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-04-19', '01109', NULL, '00091212', 1000, 289);
INSERT INTO `mpoint` VALUES ('2017-04-24', '00998', NULL, '00091428', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-04-24', '01020', NULL, '00091460', 156, 156);
INSERT INTO `mpoint` VALUES ('2017-04-24', '01003', NULL, '00091467', 98, 98);
INSERT INTO `mpoint` VALUES ('2017-04-24', '00991', NULL, '00091476', 210, 210);
INSERT INTO `mpoint` VALUES ('2017-04-24', '03434', NULL, '00091486', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-04-25', '00753', NULL, '00091572', 100, 100);
INSERT INTO `mpoint` VALUES ('2017-04-25', '00763', NULL, '00091574', 68, 68);
INSERT INTO `mpoint` VALUES ('2017-04-25', '02256', NULL, '00091580', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-04-26', '02598', NULL, '00091588', 12, 12);
INSERT INTO `mpoint` VALUES ('2017-04-26', '03410', NULL, '00091618', 14, 8);
INSERT INTO `mpoint` VALUES ('2017-04-26', '03432', NULL, '00091668', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-04-27', '01338', NULL, '00091672', 500, 47);
INSERT INTO `mpoint` VALUES ('2017-04-27', '00536', NULL, '00091714', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-04-27', '00987', NULL, '00091729', 250, 18);
INSERT INTO `mpoint` VALUES ('2017-04-28', '01011', NULL, '00091764', 700, 700);
INSERT INTO `mpoint` VALUES ('2017-04-29', '03395', NULL, '00091797', 180, 180);
INSERT INTO `mpoint` VALUES ('2017-05-02', '00759', NULL, '00091871', 20, 20);
INSERT INTO `mpoint` VALUES ('2017-05-03', '01020', NULL, '00091913', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-05-03', '03425', NULL, '00091947', 80, 80);
INSERT INTO `mpoint` VALUES ('2017-05-04', '00629', NULL, '00091956', 278, 47);
INSERT INTO `mpoint` VALUES ('2017-05-04', '02319', NULL, '00091970', 300, 300);
INSERT INTO `mpoint` VALUES ('2017-05-05', '00996', NULL, '00092024', 1000, 95);
INSERT INTO `mpoint` VALUES ('2017-05-06', '03356', NULL, '00092095', 670, 670);
INSERT INTO `mpoint` VALUES ('2017-05-08', '02319', NULL, '00092112', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-05-08', '03181', NULL, '00092117', 400, 400);
INSERT INTO `mpoint` VALUES ('2017-05-08', '02295', NULL, '00092147', 280, 280);
INSERT INTO `mpoint` VALUES ('2017-05-10', '02197', NULL, '00092251', 80, 80);
INSERT INTO `mpoint` VALUES ('2017-05-10', '00538', NULL, '00092253', 470, 19);
INSERT INTO `mpoint` VALUES ('2017-05-10', '01120', NULL, '00092254', 162, 162);
INSERT INTO `mpoint` VALUES ('2017-05-10', '03316', NULL, '00092272', 310, 310);
INSERT INTO `mpoint` VALUES ('2017-05-10', '01119', NULL, '00092298', 98, 98);
INSERT INTO `mpoint` VALUES ('2017-05-11', '00752', NULL, '00092337', 240, 240);
INSERT INTO `mpoint` VALUES ('2017-05-11', '03303', NULL, '00092358', 1120, 1120);
INSERT INTO `mpoint` VALUES ('2017-05-11', '00998', NULL, '00092360', 320, 320);
INSERT INTO `mpoint` VALUES ('2017-05-11', '00896', NULL, '00092363', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-05-11', '00988', NULL, '00092383', 260, 260);
INSERT INTO `mpoint` VALUES ('2017-05-11', '02256', NULL, '00092387', 132, 132);
INSERT INTO `mpoint` VALUES ('2017-05-11', '03447', NULL, '00092389', 350, 350);
INSERT INTO `mpoint` VALUES ('2017-05-12', '00001', NULL, '00092469', 98, 98);
INSERT INTO `mpoint` VALUES ('2017-05-13', '00889', NULL, '00092482', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-05-15', '00894', NULL, '00092524', 400, 400);
INSERT INTO `mpoint` VALUES ('2017-05-16', '00991', NULL, '00092586', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-05-16', '00629', NULL, '00092602', 460, 460);
INSERT INTO `mpoint` VALUES ('2017-05-16', '00634', NULL, '00092607', 250, 250);
INSERT INTO `mpoint` VALUES ('2017-05-16', '00628', NULL, '00092608', 370, 370);
INSERT INTO `mpoint` VALUES ('2017-05-16', '00628', NULL, '00092609', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-05-16', '01020', NULL, '00092618', 220, 220);
INSERT INTO `mpoint` VALUES ('2017-05-16', '03349', NULL, '00092620', 232, 232);
INSERT INTO `mpoint` VALUES ('2017-05-16', '01109', NULL, '00092621', 520, 520);
INSERT INTO `mpoint` VALUES ('2017-05-16', '00756', NULL, '00092625', 124, 124);
INSERT INTO `mpoint` VALUES ('2017-05-18', '02010', NULL, '00092737', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-05-22', '02319', NULL, '00092885', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-05-23', '00536', NULL, '00092938', 250, 250);
INSERT INTO `mpoint` VALUES ('2017-05-23', '00765', NULL, '00092944', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-05-23', '03395', NULL, '00092979', 262, 262);
INSERT INTO `mpoint` VALUES ('2017-05-23', '03432', NULL, '00092981', 160, 160);
INSERT INTO `mpoint` VALUES ('2017-05-23', '03349', NULL, '00092985', 280, 280);
INSERT INTO `mpoint` VALUES ('2017-05-24', '00645', NULL, '00093033', 810, 400);
INSERT INTO `mpoint` VALUES ('2017-05-24', '01906', NULL, '00093035', 360, 360);
INSERT INTO `mpoint` VALUES ('2017-05-25', '03447', NULL, '00093122', 5000, 5000);
INSERT INTO `mpoint` VALUES ('2017-05-26', '01020', NULL, '00093134', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-05-26', '02316', NULL, '00093141', 370, 370);
INSERT INTO `mpoint` VALUES ('2017-05-26', '00536', NULL, '00093156', 240, 240);
INSERT INTO `mpoint` VALUES ('2017-05-29', '03181', NULL, '00093203', 520, 520);
INSERT INTO `mpoint` VALUES ('2017-05-29', '03410', NULL, '00093209', 410, 410);
INSERT INTO `mpoint` VALUES ('2017-05-29', '00752', NULL, '00093233', 250, 250);
INSERT INTO `mpoint` VALUES ('2017-06-01', '01003', NULL, '00093347', 160, 160);
INSERT INTO `mpoint` VALUES ('2017-06-01', '00894', NULL, '00093380', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-06-01', '00894', NULL, '00093381', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-06-02', '00752', NULL, '00093431', 500, 500);
INSERT INTO `mpoint` VALUES ('2017-06-05', '00988', NULL, '00093499', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-06-05', '03475', NULL, '00093503', 42, 42);
INSERT INTO `mpoint` VALUES ('2017-06-05', '01007', NULL, '00093521', 2600, 2600);
INSERT INTO `mpoint` VALUES ('2017-06-05', '03309', NULL, '00093531', 250, 250);
INSERT INTO `mpoint` VALUES ('2017-06-06', '01762', NULL, '00093591', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-06-06', '00761', NULL, '00093619', 160, 160);
INSERT INTO `mpoint` VALUES ('2017-06-07', '03356', NULL, '00093626', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-06-07', '03356', NULL, '00093639', 452, 452);
INSERT INTO `mpoint` VALUES ('2017-06-07', '00753', NULL, '00093666', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-06-07', '00756', NULL, '00093676', 160, 160);
INSERT INTO `mpoint` VALUES ('2017-06-07', '03425', NULL, '00093715', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-06-08', '00641', NULL, '00093722', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-06-08', '02010', NULL, '00093762', 100, 100);
INSERT INTO `mpoint` VALUES ('2017-06-09', '00996', NULL, '00093843', 168, 168);
INSERT INTO `mpoint` VALUES ('2017-06-13', '01004', NULL, '00093960', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-06-13', '00629', NULL, '00093994', 60, 60);
INSERT INTO `mpoint` VALUES ('2017-06-13', '03281', NULL, '00093996', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-06-13', '00622', NULL, '00093999', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-06-13', '03435', NULL, '00094000', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-06-13', '02531', NULL, '00094004', 370, 370);
INSERT INTO `mpoint` VALUES ('2017-06-14', '03303', NULL, '00094074', 280, 280);
INSERT INTO `mpoint` VALUES ('2017-06-14', '00759', NULL, '00094115', 184, 184);
INSERT INTO `mpoint` VALUES ('2017-06-15', '00752', NULL, '00094148', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-06-15', '01008', NULL, '00094149', 250, 10);
INSERT INTO `mpoint` VALUES ('2017-06-15', '00639', NULL, '00094151', 60, 60);
INSERT INTO `mpoint` VALUES ('2017-06-15', '00772', NULL, '00094170', 940, 125);
INSERT INTO `mpoint` VALUES ('2017-06-16', '01011', NULL, '00094219', 900, 900);
INSERT INTO `mpoint` VALUES ('2017-06-16', '02256', NULL, '00094252', 600, 600);
INSERT INTO `mpoint` VALUES ('2017-06-16', '00628', NULL, '00094259', 130, 130);
INSERT INTO `mpoint` VALUES ('2017-06-19', '03181', NULL, '00094276', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-06-19', '01004', NULL, '00094283', 280, 280);
INSERT INTO `mpoint` VALUES ('2017-06-19', '02319', NULL, '00094285', 240, 240);
INSERT INTO `mpoint` VALUES ('2017-06-19', '02197', NULL, '00094320', 80, 80);
INSERT INTO `mpoint` VALUES ('2017-06-19', '00894', NULL, '00094332', 500, 500);
INSERT INTO `mpoint` VALUES ('2017-06-20', '01762', NULL, '00094356', 80, 80);
INSERT INTO `mpoint` VALUES ('2017-06-20', '00764', NULL, '00094391', 300, 300);
INSERT INTO `mpoint` VALUES ('2017-06-21', '01020', NULL, '00094498', 240, 240);
INSERT INTO `mpoint` VALUES ('2017-06-22', '03303', NULL, '00094518', 414, 414);
INSERT INTO `mpoint` VALUES ('2017-06-22', '00763', NULL, '00094536', 296, 296);
INSERT INTO `mpoint` VALUES ('2017-06-22', '00752', NULL, '00094564', 1500, 1500);
INSERT INTO `mpoint` VALUES ('2017-06-23', '03408', NULL, '00094610', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-06-27', '03447', NULL, '00094731', 2000, 2000);
INSERT INTO `mpoint` VALUES ('2017-06-27', '03447', NULL, '00094775', 1212, 1212);
INSERT INTO `mpoint` VALUES ('2017-06-27', '03447', NULL, '00094776', 1310, 1310);
INSERT INTO `mpoint` VALUES ('2017-06-27', '00624', NULL, '00094779', 400, 400);
INSERT INTO `mpoint` VALUES ('2017-06-27', '00752', NULL, '00094791', 250, 250);
INSERT INTO `mpoint` VALUES ('2017-06-28', '01018', NULL, '00094817', 180, 180);
INSERT INTO `mpoint` VALUES ('2017-06-28', '00772', NULL, '00094837', 450, 450);
INSERT INTO `mpoint` VALUES ('2017-06-29', '02316', NULL, '00094908', 460, 460);
INSERT INTO `mpoint` VALUES ('2017-06-30', '01003', NULL, '00094991', 168, 168);
INSERT INTO `mpoint` VALUES ('2017-06-30', '00752', NULL, '00095015', 450, 450);
INSERT INTO `mpoint` VALUES ('2017-07-03', '02319', NULL, '00095053', 250, 250);
INSERT INTO `mpoint` VALUES ('2017-07-03', '01109', NULL, '00095059', 240, 240);
INSERT INTO `mpoint` VALUES ('2017-07-03', '03181', NULL, '00095074', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-07-04', '03356', NULL, '00095132', 650, 650);
INSERT INTO `mpoint` VALUES ('2017-07-04', '00759', NULL, '00095148', 70, 70);
INSERT INTO `mpoint` VALUES ('2017-07-04', '01020', NULL, '00095167', 30, 30);
INSERT INTO `mpoint` VALUES ('2017-07-05', '01120', NULL, '00095246', 210, 210);
INSERT INTO `mpoint` VALUES ('2017-07-06', '01338', NULL, '00095286', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-07-06', '02034', NULL, '00095304', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-07-06', '00987', NULL, '00095323', 240, 240);
INSERT INTO `mpoint` VALUES ('2017-07-10', '00998', NULL, '00095435', 26, 26);
INSERT INTO `mpoint` VALUES ('2017-07-10', '00894', NULL, '00095454', 240, 240);
INSERT INTO `mpoint` VALUES ('2017-07-10', '02197', NULL, '00095463', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-07-10', '01007', NULL, '00095473', 750, 750);
INSERT INTO `mpoint` VALUES ('2017-07-11', '00991', NULL, '00095498', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-07-11', '00627', NULL, '00095548', 230, 230);
INSERT INTO `mpoint` VALUES ('2017-07-11', '01109', NULL, '00095556', 210, 210);
INSERT INTO `mpoint` VALUES ('2017-07-11', '00757', NULL, '00095573', 26, 26);
INSERT INTO `mpoint` VALUES ('2017-07-12', '01906', NULL, '00095618', 280, 280);
INSERT INTO `mpoint` VALUES ('2017-07-12', '01906', NULL, '00095619', 202, 202);
INSERT INTO `mpoint` VALUES ('2017-07-12', '00641', NULL, '00095622', 210, 210);
INSERT INTO `mpoint` VALUES ('2017-07-17', '01004', NULL, '00095777', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-07-17', '03181', NULL, '00095781', 500, 500);
INSERT INTO `mpoint` VALUES ('2017-07-17', '00752', NULL, '00095782', 600, 600);
INSERT INTO `mpoint` VALUES ('2017-07-17', '00991', NULL, '00095834', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-07-18', '00893', NULL, '00095861', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-07-18', '00641', NULL, '00095902', 206, 206);
INSERT INTO `mpoint` VALUES ('2017-07-18', '00763', NULL, '00095907', 148, 148);
INSERT INTO `mpoint` VALUES ('2017-07-18', '00536', NULL, '00095930', 60, 60);
INSERT INTO `mpoint` VALUES ('2017-07-18', '00629', NULL, '00095931', 125, 125);
INSERT INTO `mpoint` VALUES ('2017-07-18', '00752', NULL, '00095940', 350, 350);
INSERT INTO `mpoint` VALUES ('2017-07-20', '01337', NULL, '00095969', 30, 30);
INSERT INTO `mpoint` VALUES ('2017-07-20', '01119', NULL, '00095971', 600, 600);
INSERT INTO `mpoint` VALUES ('2017-07-20', '02197', NULL, '00096003', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-07-21', '03475', NULL, '00096027', 100, 100);
INSERT INTO `mpoint` VALUES ('2017-07-21', '00894', NULL, '00096062', 130, 130);
INSERT INTO `mpoint` VALUES ('2017-07-21', '01020', NULL, '00096106', 60, 60);
INSERT INTO `mpoint` VALUES ('2017-07-24', '02319', NULL, '00096146', 500, 500);
INSERT INTO `mpoint` VALUES ('2017-07-24', '00622', NULL, '00096148', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-07-24', '00894', NULL, '00096166', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-07-24', '00764', NULL, '00096189', 380, 80);
INSERT INTO `mpoint` VALUES ('2017-07-25', '00622', NULL, '00096249', 340, 340);
INSERT INTO `mpoint` VALUES ('2017-07-25', '00628', NULL, '00096271', 394, 394);
INSERT INTO `mpoint` VALUES ('2017-07-26', '01020', NULL, '00096374', 30, 30);
INSERT INTO `mpoint` VALUES ('2017-07-26', '01123', NULL, '00096404', 260, 260);
INSERT INTO `mpoint` VALUES ('2017-07-27', '00771', NULL, '00096436', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-07-27', '03410', NULL, '00096443', 70, 70);
INSERT INTO `mpoint` VALUES ('2017-07-27', '03432', NULL, '00096445', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-07-31', '00991', NULL, '00096604', 320, 320);
INSERT INTO `mpoint` VALUES ('2017-07-31', '03434', NULL, '00096622', 276, 276);
INSERT INTO `mpoint` VALUES ('2017-08-02', '00765', NULL, '00096665', 136, 136);
INSERT INTO `mpoint` VALUES ('2017-08-02', '03395', NULL, '00096719', 218, 218);
INSERT INTO `mpoint` VALUES ('2017-08-02', '03447', NULL, '00096732', 400, 400);
INSERT INTO `mpoint` VALUES ('2017-08-03', '03447', NULL, '00096825', 500, 500);
INSERT INTO `mpoint` VALUES ('2017-08-04', '00752', NULL, '00096839', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-08-04', '00988', NULL, '00096855', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-08-04', '03181', NULL, '00096863', 1440, 240);
INSERT INTO `mpoint` VALUES ('2017-08-04', '00536', NULL, '00096870', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-08-04', '03181', NULL, '00096871', 210, 210);
INSERT INTO `mpoint` VALUES ('2017-08-07', '03356', NULL, '00096937', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-08-08', '00629', NULL, '00097008', 40, 40);
INSERT INTO `mpoint` VALUES ('2017-08-08', '00623', NULL, '00097009', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-08-08', '03303', NULL, '00097020', 300, 300);
INSERT INTO `mpoint` VALUES ('2017-08-08', '00893', NULL, '00097030', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-08-08', '00629', NULL, '00097058', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-08-08', '00622', NULL, '00097060', 800, 800);
INSERT INTO `mpoint` VALUES ('2017-08-08', '03447', NULL, '00097094', 3000, 3000);
INSERT INTO `mpoint` VALUES ('2017-08-09', '01018', NULL, '00097114', 136, 136);
INSERT INTO `mpoint` VALUES ('2017-08-11', '01011', NULL, '00097170', 280, 280);
INSERT INTO `mpoint` VALUES ('2017-08-11', '01011', NULL, '00097171', 280, 280);
INSERT INTO `mpoint` VALUES ('2017-08-11', '01011', NULL, '00097172', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-08-11', '03181', NULL, '00097203', 700, 700);
INSERT INTO `mpoint` VALUES ('2017-08-11', '03303', NULL, '00097210', 300, 300);
INSERT INTO `mpoint` VALUES ('2017-08-11', '03475', NULL, '00097232', 266, 266);
INSERT INTO `mpoint` VALUES ('2017-08-15', '00766', NULL, '00097377', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-08-15', '01020', NULL, '00097419', 70, 70);
INSERT INTO `mpoint` VALUES ('2017-08-15', '00752', NULL, '00097438', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-08-16', '03181', NULL, '00097518', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-08-16', '03281', NULL, '00097522', 40, 40);
INSERT INTO `mpoint` VALUES ('2017-08-17', '01906', NULL, '00097577', 210, 210);
INSERT INTO `mpoint` VALUES ('2017-08-17', '02319', NULL, '00097589', 890, 890);
INSERT INTO `mpoint` VALUES ('2017-08-18', '01003', NULL, '00097631', 160, 160);
INSERT INTO `mpoint` VALUES ('2017-08-18', '03181', NULL, '00097632', 400, 400);
INSERT INTO `mpoint` VALUES ('2017-08-18', '01020', NULL, '00097636', 100, 100);
INSERT INTO `mpoint` VALUES ('2017-08-18', '03181', NULL, '00097654', 300, 300);
INSERT INTO `mpoint` VALUES ('2017-08-21', '00752', NULL, '00097696', 1250, 1250);
INSERT INTO `mpoint` VALUES ('2017-08-21', '01007', NULL, '00097723', 2900, 2900);
INSERT INTO `mpoint` VALUES ('2017-08-22', '00629', NULL, '00097781', 20, 20);
INSERT INTO `mpoint` VALUES ('2017-08-22', '00629', NULL, '00097788', 112, 112);
INSERT INTO `mpoint` VALUES ('2017-08-22', '00623', NULL, '00097819', 226, 50);
INSERT INTO `mpoint` VALUES ('2017-08-22', '00627', NULL, '00097822', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-08-22', '00623', NULL, '00097843', 40, 40);
INSERT INTO `mpoint` VALUES ('2017-08-24', '02316', NULL, '00097984', 190, 190);
INSERT INTO `mpoint` VALUES ('2017-08-24', '02197', NULL, '00098031', 210, 210);
INSERT INTO `mpoint` VALUES ('2017-08-24', '03316', NULL, '00098043', 370, 370);
INSERT INTO `mpoint` VALUES ('2017-08-25', '00990', NULL, '00098103', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-08-28', '03181', NULL, '00098138', 500, 500);
INSERT INTO `mpoint` VALUES ('2017-08-29', '01762', NULL, '00098191', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-08-29', '03309', NULL, '00098203', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-08-29', '00987', NULL, '00098205', 26, 26);
INSERT INTO `mpoint` VALUES ('2017-08-29', '00988', NULL, '00098231', 290, 290);
INSERT INTO `mpoint` VALUES ('2017-08-30', '03316', NULL, '00098264', 500, 500);
INSERT INTO `mpoint` VALUES ('2017-08-31', '02034', NULL, '00098357', 210, 210);
INSERT INTO `mpoint` VALUES ('2017-08-31', '00752', NULL, '00098358', 40, 40);
INSERT INTO `mpoint` VALUES ('2017-08-31', '01020', NULL, '00098417', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-09-04', '01020', NULL, '00098540', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-09-04', '03356', NULL, '00098564', 222, 222);
INSERT INTO `mpoint` VALUES ('2017-09-04', '03181', NULL, '00098578', 345, 345);
INSERT INTO `mpoint` VALUES ('2017-09-05', '03181', NULL, '00098595', 2050, 2050);
INSERT INTO `mpoint` VALUES ('2017-09-05', '00622', NULL, '00098637', 600, 600);
INSERT INTO `mpoint` VALUES ('2017-09-05', '03303', NULL, '00098638', 350, 350);
INSERT INTO `mpoint` VALUES ('2017-09-06', '00628', NULL, '00098730', 180, 180);
INSERT INTO `mpoint` VALUES ('2017-09-06', '01019', NULL, '00098731', 286, 286);
INSERT INTO `mpoint` VALUES ('2017-09-06', '03349', NULL, '00098732', 130, 130);
INSERT INTO `mpoint` VALUES ('2017-09-07', '00645', NULL, '00098830', 210, 210);
INSERT INTO `mpoint` VALUES ('2017-09-08', '02256', NULL, '00098890', 100, 100);
INSERT INTO `mpoint` VALUES ('2017-09-08', '03303', NULL, '00098891', 160, 160);
INSERT INTO `mpoint` VALUES ('2017-09-08', '00641', NULL, '00098937', 100, 100);
INSERT INTO `mpoint` VALUES ('2017-09-08', '03447', NULL, '00098939', 750, 750);
INSERT INTO `mpoint` VALUES ('2017-09-11', '01011', NULL, '00098978', 900, 900);
INSERT INTO `mpoint` VALUES ('2017-09-11', '01338', NULL, '00099021', 154, 154);
INSERT INTO `mpoint` VALUES ('2017-09-11', '02319', NULL, '00099027', 320, 320);
INSERT INTO `mpoint` VALUES ('2017-09-11', '00987', NULL, '00099040', 420, 420);
INSERT INTO `mpoint` VALUES ('2017-09-12', '00764', NULL, '00099079', 100, 100);
INSERT INTO `mpoint` VALUES ('2017-09-12', '00765', NULL, '00099086', 380, 380);
INSERT INTO `mpoint` VALUES ('2017-09-12', '03447', NULL, '00099128', 450, 450);
INSERT INTO `mpoint` VALUES ('2017-09-12', '00753', NULL, '00099131', 230, 230);
INSERT INTO `mpoint` VALUES ('2017-09-18', '01004', NULL, '00099203', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-09-18', '00752', NULL, '00099242', 720, 720);
INSERT INTO `mpoint` VALUES ('2017-09-19', '01338', NULL, '00099263', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-09-19', '00628', NULL, '00099264', 230, 230);
INSERT INTO `mpoint` VALUES ('2017-09-19', '03435', NULL, '00099306', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-09-20', '01109', NULL, '00099411', 100, 100);
INSERT INTO `mpoint` VALUES ('2017-09-20', '00752', NULL, '00099417', 250, 250);
INSERT INTO `mpoint` VALUES ('2017-09-20', '03349', NULL, '00099434', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-09-20', '03447', NULL, '00099512', 1400, 1400);
INSERT INTO `mpoint` VALUES ('2017-09-20', '03447', NULL, '00099514', 1800, 1800);
INSERT INTO `mpoint` VALUES ('2017-09-22', '01119', NULL, '00099603', 600, 600);
INSERT INTO `mpoint` VALUES ('2017-09-22', '00996', NULL, '00099604', 120, 58);
INSERT INTO `mpoint` VALUES ('2017-09-22', '00536', NULL, '00099656', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-09-22', '01906', NULL, '00099661', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-09-25', '02319', NULL, '00099724', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-09-25', '00987', NULL, '00099763', 235, 235);
INSERT INTO `mpoint` VALUES ('2017-09-25', '00894', NULL, '00099767', 600, 600);
INSERT INTO `mpoint` VALUES ('2017-09-26', '00763', NULL, '00099835', 300, 300);
INSERT INTO `mpoint` VALUES ('2017-09-26', '03395', NULL, '00099846', 266, 266);
INSERT INTO `mpoint` VALUES ('2017-09-26', '01011', NULL, '00099852', 900, 900);
INSERT INTO `mpoint` VALUES ('2017-09-28', '00896', NULL, '00099978', 54, 54);
INSERT INTO `mpoint` VALUES ('2017-09-29', '02197', NULL, '00100086', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-09-29', '01338', NULL, '00100117', 20, 20);
INSERT INTO `mpoint` VALUES ('2017-10-02', '02034', NULL, '00100164', 70, 70);
INSERT INTO `mpoint` VALUES ('2017-10-03', '00628', NULL, '00100256', 46, 46);
INSERT INTO `mpoint` VALUES ('2017-10-03', '00629', NULL, '00100274', 75, 75);
INSERT INTO `mpoint` VALUES ('2017-10-03', '00623', NULL, '00100279', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-10-04', '00772', NULL, '00100341', 60, 60);
INSERT INTO `mpoint` VALUES ('2017-10-04', '00773', NULL, '00100348', 200, 93);
INSERT INTO `mpoint` VALUES ('2017-10-04', '01020', NULL, '00100352', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-10-04', '02316', NULL, '00100386', 414, 414);
INSERT INTO `mpoint` VALUES ('2017-10-05', '00889', NULL, '00100410', 60, 60);
INSERT INTO `mpoint` VALUES ('2017-10-09', '03408', NULL, '00100533', 56, 56);
INSERT INTO `mpoint` VALUES ('2017-10-09', '00894', NULL, '00100535', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-10-09', '00894', NULL, '00100542', 280, 280);
INSERT INTO `mpoint` VALUES ('2017-10-09', '01011', NULL, '00100553', 700, 700);
INSERT INTO `mpoint` VALUES ('2017-10-09', '00752', NULL, '00100598', 26, 26);
INSERT INTO `mpoint` VALUES ('2017-10-10', '00889', NULL, '00100618', 42, 42);
INSERT INTO `mpoint` VALUES ('2017-10-10', '03309', NULL, '00100621', 130, 130);
INSERT INTO `mpoint` VALUES ('2017-10-10', '01762', NULL, '00100622', 80, 80);
INSERT INTO `mpoint` VALUES ('2017-10-10', '00764', NULL, '00100624', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-10-10', '00759', NULL, '00100627', 170, 170);
INSERT INTO `mpoint` VALUES ('2017-10-10', '00759', NULL, '00100628', 60, 60);
INSERT INTO `mpoint` VALUES ('2017-10-11', '02010', NULL, '00100747', 50, 50);
INSERT INTO `mpoint` VALUES ('2017-10-11', '03303', NULL, '00100767', 610, 610);
INSERT INTO `mpoint` VALUES ('2017-10-11', '01109', NULL, '00100775', 300, 300);
INSERT INTO `mpoint` VALUES ('2017-10-11', '00641', NULL, '00100788', 694, 694);
INSERT INTO `mpoint` VALUES ('2017-10-16', '02010', NULL, '00100973', 350, 350);
INSERT INTO `mpoint` VALUES ('2017-10-16', '01004', NULL, '00100975', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-10-16', '03181', NULL, '00100980', 600, 600);
INSERT INTO `mpoint` VALUES ('2017-10-16', '00991', NULL, '00101007', 50, 50);
INSERT INTO `mpoint` VALUES ('2017-10-16', '03278', NULL, '00101011', 206, 206);
INSERT INTO `mpoint` VALUES ('2017-10-17', '00622', NULL, '00101062', 750, 750);
INSERT INTO `mpoint` VALUES ('2017-10-18', '00771', NULL, '00101157', 80, 80);
INSERT INTO `mpoint` VALUES ('2017-10-18', '00773', NULL, '00101174', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-10-18', '03349', NULL, '00101188', 190, 190);
INSERT INTO `mpoint` VALUES ('2017-10-18', '02197', NULL, '00101198', 225, 225);
INSERT INTO `mpoint` VALUES ('2017-10-19', '01020', NULL, '00101265', 320, 320);
INSERT INTO `mpoint` VALUES ('2017-10-19', '00752', NULL, '00101266', 212, 212);
INSERT INTO `mpoint` VALUES ('2017-10-20', '00889', NULL, '00101301', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-10-20', '00752', NULL, '00101330', 210, 210);
INSERT INTO `mpoint` VALUES ('2017-10-23', '01004', NULL, '00101369', 250, 250);
INSERT INTO `mpoint` VALUES ('2017-10-23', '03447', NULL, '00101408', 1100, 1100);
INSERT INTO `mpoint` VALUES ('2017-10-23', '03447', NULL, '00101409', 1700, 1700);
INSERT INTO `mpoint` VALUES ('2017-10-23', '03447', NULL, '00101411', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-10-24', '00889', NULL, '00101438', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-10-24', '01762', NULL, '00101452', 218, 218);
INSERT INTO `mpoint` VALUES ('2017-10-25', '01018', NULL, '00101509', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-10-25', '01020', NULL, '00101528', 110, 110);
INSERT INTO `mpoint` VALUES ('2017-10-25', '00771', NULL, '00101543', 430, 80);
INSERT INTO `mpoint` VALUES ('2017-10-26', '01003', NULL, '00101578', 98, 98);
INSERT INTO `mpoint` VALUES ('2017-10-26', '00752', NULL, '00101631', 100, 100);
INSERT INTO `mpoint` VALUES ('2017-10-31', '00623', NULL, '00101832', 82, 82);
INSERT INTO `mpoint` VALUES ('2017-10-31', '03447', NULL, '00101848', 2564, 2564);
INSERT INTO `mpoint` VALUES ('2017-10-31', '00752', NULL, '00101872', 300, 300);
INSERT INTO `mpoint` VALUES ('2017-11-01', '01123', NULL, '00101878', 180, 180);
INSERT INTO `mpoint` VALUES ('2017-11-01', '01020', NULL, '00101905', 60, 60);
INSERT INTO `mpoint` VALUES ('2017-11-01', '02197', NULL, '00101918', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-11-02', '03395', NULL, '00101961', 162, 162);
INSERT INTO `mpoint` VALUES ('2017-11-03', '00893', NULL, '00102006', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-11-06', '03475', NULL, '00102041', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-11-06', '03181', NULL, '00102051', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-11-06', '03181', NULL, '00102077', 645, 645);
INSERT INTO `mpoint` VALUES ('2017-11-06', '01109', NULL, '00102095', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-11-07', '01020', NULL, '00102130', 112, 112);
INSERT INTO `mpoint` VALUES ('2017-11-07', '01762', NULL, '00102134', 180, 180);
INSERT INTO `mpoint` VALUES ('2017-11-07', '00536', NULL, '00102191', 280, 280);
INSERT INTO `mpoint` VALUES ('2017-11-08', '03303', NULL, '00102205', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-11-09', '01338', NULL, '00102275', 20, 20);
INSERT INTO `mpoint` VALUES ('2017-11-09', '00896', NULL, '00102282', 62, 62);
INSERT INTO `mpoint` VALUES ('2017-11-13', '00752', NULL, '00102452', 100, 100);
INSERT INTO `mpoint` VALUES ('2017-11-13', '03303', NULL, '00102466', 280, 280);
INSERT INTO `mpoint` VALUES ('2017-11-13', '03303', NULL, '00102467', 168, 168);
INSERT INTO `mpoint` VALUES ('2017-11-14', '00629', NULL, '00102510', 115, 115);
INSERT INTO `mpoint` VALUES ('2017-11-14', '00622', NULL, '00102516', 800, 800);
INSERT INTO `mpoint` VALUES ('2017-11-14', '01011', NULL, '00102537', 400, 400);
INSERT INTO `mpoint` VALUES ('2017-11-14', '00627', NULL, '00102545', 102, 102);
INSERT INTO `mpoint` VALUES ('2017-11-14', '00627', NULL, '00102546', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-11-14', '03281', NULL, '00102547', 54, 54);
INSERT INTO `mpoint` VALUES ('2017-11-15', '03432', NULL, '00102599', 200, 34);
INSERT INTO `mpoint` VALUES ('2017-11-15', '00773', NULL, '00102601', 300, 300);
INSERT INTO `mpoint` VALUES ('2017-11-15', '00752', NULL, '00102637', 100, 100);
INSERT INTO `mpoint` VALUES ('2017-11-15', '00996', NULL, '00102639', 300, 300);
INSERT INTO `mpoint` VALUES ('2017-11-15', '03432', NULL, '00102645', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-11-22', '03395', NULL, '00103010', 80, 80);
INSERT INTO `mpoint` VALUES ('2017-11-22', '00765', NULL, '00103025', 194, 194);
INSERT INTO `mpoint` VALUES ('2017-11-23', '00896', NULL, '00103043', 44, 44);
INSERT INTO `mpoint` VALUES ('2017-11-23', '00996', NULL, '00103058', 1300, 1300);
INSERT INTO `mpoint` VALUES ('2017-11-24', '00893', NULL, '00103106', 100, 100);
INSERT INTO `mpoint` VALUES ('2017-11-27', '03356', NULL, '00103191', 84, 84);
INSERT INTO `mpoint` VALUES ('2017-11-27', '03395', NULL, '00103218', 180, 180);
INSERT INTO `mpoint` VALUES ('2017-11-27', '02499', NULL, '00103226', 75, 28);
INSERT INTO `mpoint` VALUES ('2017-11-28', '00752', NULL, '00103314', 422, 422);
INSERT INTO `mpoint` VALUES ('2017-11-29', '03181', NULL, '00103388', 2200, 2200);
INSERT INTO `mpoint` VALUES ('2017-11-29', '02316', NULL, '00103389', 342, 342);
INSERT INTO `mpoint` VALUES ('2017-12-04', '02319', NULL, '00103516', 520, 520);
INSERT INTO `mpoint` VALUES ('2017-12-05', '00766', NULL, '00103619', 30, 30);
INSERT INTO `mpoint` VALUES ('2017-12-06', '01120', NULL, '00103682', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-12-06', '00536', NULL, '00103701', 550, 550);
INSERT INTO `mpoint` VALUES ('2017-12-11', '03181', NULL, '00103788', 150, 150);
INSERT INTO `mpoint` VALUES ('2017-12-12', '00622', NULL, '00103883', 700, 700);
INSERT INTO `mpoint` VALUES ('2017-12-12', '00752', NULL, '00103904', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-12-12', '02197', NULL, '00103908', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-12-12', '03447', NULL, '00103915', 4650, 4650);
INSERT INTO `mpoint` VALUES ('2017-12-12', '03447', NULL, '00103916', 2400, 2400);
INSERT INTO `mpoint` VALUES ('2017-12-13', '00772', NULL, '00103967', 84, 84);
INSERT INTO `mpoint` VALUES ('2017-12-13', '00772', NULL, '00103968', 90, 90);
INSERT INTO `mpoint` VALUES ('2017-12-13', '00752', NULL, '00103973', 620, 620);
INSERT INTO `mpoint` VALUES ('2017-12-13', '00987', NULL, '00103989', 200, 200);
INSERT INTO `mpoint` VALUES ('2017-12-14', '01019', NULL, '00104017', 286, 286);
INSERT INTO `mpoint` VALUES ('2017-12-14', '01338', NULL, '00104026', 42, 42);
INSERT INTO `mpoint` VALUES ('2017-12-14', '01011', NULL, '00104051', 280, 280);
INSERT INTO `mpoint` VALUES ('2017-12-14', '01011', NULL, '00104052', 280, 280);
INSERT INTO `mpoint` VALUES ('2017-12-14', '01011', NULL, '00104053', 140, 140);
INSERT INTO `mpoint` VALUES ('2017-12-18', '02010', NULL, '00104141', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-12-18', '02010', NULL, '00104142', 350, 350);
INSERT INTO `mpoint` VALUES ('2017-12-19', '00759', NULL, '00104222', 110, 110);
INSERT INTO `mpoint` VALUES ('2017-12-19', '00759', NULL, '00104223', 120, 120);
INSERT INTO `mpoint` VALUES ('2017-12-19', '00757', NULL, '00104257', 204, 204);
INSERT INTO `mpoint` VALUES ('2017-12-19', '00536', NULL, '00104263', 500, 500);
INSERT INTO `mpoint` VALUES ('2017-12-21', '02197', NULL, '00104380', 300, 300);
INSERT INTO `mpoint` VALUES ('2017-12-22', '03181', NULL, '00104449', 300, 300);
INSERT INTO `mpoint` VALUES ('2017-12-27', '03181', NULL, '00104548', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2017-12-28', '02316', NULL, '00104609', 90, 90);
INSERT INTO `mpoint` VALUES ('2018-01-02', '00759', NULL, '00104683', 70, 70);
INSERT INTO `mpoint` VALUES ('2018-01-02', '01004', NULL, '00104710', 40, 40);
INSERT INTO `mpoint` VALUES ('2018-01-02', '00628', NULL, '00104731', 270, 270);
INSERT INTO `mpoint` VALUES ('2018-01-02', '01011', NULL, '00104738', 1300, 1300);
INSERT INTO `mpoint` VALUES ('2018-01-02', '03447', NULL, '00104739', 2270, 2270);
INSERT INTO `mpoint` VALUES ('2018-01-04', '02319', NULL, '00104816', 382, 382);
INSERT INTO `mpoint` VALUES ('2018-01-04', '00996', NULL, '00104835', 190, 190);
INSERT INTO `mpoint` VALUES ('2018-01-04', '01020', NULL, '00104837', 200, 200);
INSERT INTO `mpoint` VALUES ('2018-01-05', '03278', NULL, '00104902', 172, 172);
INSERT INTO `mpoint` VALUES ('2018-01-05', '02319', NULL, '00104934', 210, 180);
INSERT INTO `mpoint` VALUES ('2018-01-08', '02010', NULL, '00104956', 390, 390);
INSERT INTO `mpoint` VALUES ('2018-01-08', '01020', NULL, '00105010', 150, 150);
INSERT INTO `mpoint` VALUES ('2018-01-09', '00629', NULL, '00105049', 210, 210);
INSERT INTO `mpoint` VALUES ('2018-01-09', '00622', NULL, '00105058', 2000, 2000);
INSERT INTO `mpoint` VALUES ('2018-01-10', '02319', NULL, '00105119', 250, 250);
INSERT INTO `mpoint` VALUES ('2018-01-10', '01018', NULL, '00105123', 590, 19);
INSERT INTO `mpoint` VALUES ('2018-01-10', '03316', NULL, '00105133', 870, 870);
INSERT INTO `mpoint` VALUES ('2018-01-10', '00752', NULL, '00105146', 1040, 1040);
INSERT INTO `mpoint` VALUES ('2018-01-10', '00752', NULL, '00105147', 750, 750);
INSERT INTO `mpoint` VALUES ('2018-01-10', '01109', NULL, '00105151', 300, 300);
INSERT INTO `mpoint` VALUES ('2018-01-11', '03447', NULL, '00105253', 600, 600);
INSERT INTO `mpoint` VALUES ('2018-01-11', '03447', NULL, '00105265', 3750, 3750);
INSERT INTO `mpoint` VALUES ('2018-01-11', '03447', NULL, '00105266', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2018-01-12', '00987', NULL, '00105301', 145, 145);
INSERT INTO `mpoint` VALUES ('2018-01-15', '02197', NULL, '00105337', 120, 120);
INSERT INTO `mpoint` VALUES ('2018-01-15', '00894', NULL, '00105354', 200, 200);
INSERT INTO `mpoint` VALUES ('2018-01-15', '01020', NULL, '00105381', 90, 90);
INSERT INTO `mpoint` VALUES ('2018-01-16', '00754', NULL, '00105424', 540, 206);
INSERT INTO `mpoint` VALUES ('2018-01-16', '03395', NULL, '00105478', 12, 12);
INSERT INTO `mpoint` VALUES ('2018-01-16', '03395', NULL, '00105479', 80, 80);
INSERT INTO `mpoint` VALUES ('2018-01-16', '03309', NULL, '00105480', 120, 120);
INSERT INTO `mpoint` VALUES ('2018-01-17', '01906', NULL, '00105542', 240, 240);
INSERT INTO `mpoint` VALUES ('2018-01-18', '03432', NULL, '00105640', 150, 150);
INSERT INTO `mpoint` VALUES ('2018-01-18', '00987', NULL, '00105649', 56, 56);
INSERT INTO `mpoint` VALUES ('2018-01-19', '03610', NULL, '00105687', 600, 600);
INSERT INTO `mpoint` VALUES ('2018-01-22', '00996', NULL, '00105739', 450, 450);
INSERT INTO `mpoint` VALUES ('2018-01-22', '00996', NULL, '00105761', 300, 300);
INSERT INTO `mpoint` VALUES ('2018-01-22', '01006', NULL, '00105778', 1900, 10);
INSERT INTO `mpoint` VALUES ('2018-01-22', '00752', NULL, '00105795', 90, 90);
INSERT INTO `mpoint` VALUES ('2018-01-23', '00623', NULL, '00105813', 150, 150);
INSERT INTO `mpoint` VALUES ('2018-01-23', '00623', NULL, '00105814', 140, 140);
INSERT INTO `mpoint` VALUES ('2018-01-24', '03447', NULL, '00105896', 2270, 2270);
INSERT INTO `mpoint` VALUES ('2018-01-24', '00624', NULL, '00105903', 300, 300);
INSERT INTO `mpoint` VALUES ('2018-01-24', '03349', NULL, '00105918', 400, 400);
INSERT INTO `mpoint` VALUES ('2018-01-24', '01018', NULL, '00105919', 112, 112);
INSERT INTO `mpoint` VALUES ('2018-01-24', '01019', NULL, '00105948', 242, 242);
INSERT INTO `mpoint` VALUES ('2018-01-24', '02316', NULL, '00105951', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2018-01-25', '00896', NULL, '00105996', 20, 20);
INSERT INTO `mpoint` VALUES ('2018-01-25', '02499', NULL, '00106004', 90, 90);
INSERT INTO `mpoint` VALUES ('2018-01-25', '01003', NULL, '00106006', 160, 160);
INSERT INTO `mpoint` VALUES ('2018-01-25', '03447', NULL, '00106017', 575, 575);
INSERT INTO `mpoint` VALUES ('2018-01-30', '00764', NULL, '00106186', 200, 200);
INSERT INTO `mpoint` VALUES ('2018-01-30', '03181', NULL, '00106220', 1050, 1050);
INSERT INTO `mpoint` VALUES ('2018-02-01', '00896', NULL, '00106365', 56, 56);
INSERT INTO `mpoint` VALUES ('2018-02-01', '01123', NULL, '00106369', 90, 90);
INSERT INTO `mpoint` VALUES ('2018-02-01', '03447', NULL, '00106386', 600, 600);
INSERT INTO `mpoint` VALUES ('2018-02-01', '00752', NULL, '00106392', 1250, 1250);
INSERT INTO `mpoint` VALUES ('2018-02-01', '03447', NULL, '00106408', 3500, 3500);
INSERT INTO `mpoint` VALUES ('2018-02-01', '03447', NULL, '00106409', 750, 750);
INSERT INTO `mpoint` VALUES ('2018-02-01', '03356', NULL, '00106412', 60, 60);
INSERT INTO `mpoint` VALUES ('2018-02-01', '03356', NULL, '00106413', 165, 165);
INSERT INTO `mpoint` VALUES ('2018-02-02', '02319', NULL, '00106443', 42, 42);
INSERT INTO `mpoint` VALUES ('2018-02-02', '02319', NULL, '00106444', 45, 45);
INSERT INTO `mpoint` VALUES ('2018-02-02', '03475', NULL, '00106445', 190, 190);
INSERT INTO `mpoint` VALUES ('2018-02-05', '00645', NULL, '00106503', 300, 300);
INSERT INTO `mpoint` VALUES ('2018-02-05', '03281', NULL, '00106507', 150, 150);
INSERT INTO `mpoint` VALUES ('2018-02-06', '00622', NULL, '00106655', 420, 420);
INSERT INTO `mpoint` VALUES ('2018-02-07', '00771', NULL, '00106704', 45, 45);
INSERT INTO `mpoint` VALUES ('2018-02-07', '00773', NULL, '00106706', 300, 300);
INSERT INTO `mpoint` VALUES ('2018-02-08', '03349', NULL, '00106747', 600, 600);
INSERT INTO `mpoint` VALUES ('2018-02-08', '01338', NULL, '00106751', 135, 135);
INSERT INTO `mpoint` VALUES ('2018-02-08', '00987', NULL, '00106777', 270, 270);
INSERT INTO `mpoint` VALUES ('2018-02-08', '03447', NULL, '00106794', 1920, 1920);
INSERT INTO `mpoint` VALUES ('2018-02-08', '01006', NULL, '00106798', 2000, 100);
INSERT INTO `mpoint` VALUES ('2018-02-09', '02319', NULL, '00106833', 172, 172);
INSERT INTO `mpoint` VALUES ('2018-02-09', '03410', NULL, '00106840', 90, 90);
INSERT INTO `mpoint` VALUES ('2018-02-09', '00752', NULL, '00106853', 350, 350);
INSERT INTO `mpoint` VALUES ('2018-02-09', '00622', NULL, '00106871', 1200, 1200);
INSERT INTO `mpoint` VALUES ('2018-02-13', '00766', NULL, '00107017', 200, 18);
INSERT INTO `mpoint` VALUES ('2018-02-13', '00766', NULL, '00107024', 10, 10);
INSERT INTO `mpoint` VALUES ('2018-02-13', '00754', NULL, '00107035', 448, 448);
INSERT INTO `mpoint` VALUES ('2018-02-15', '00896', NULL, '00107094', 45, 45);
INSERT INTO `mpoint` VALUES ('2018-02-16', '01003', NULL, '00107159', 200, 200);
INSERT INTO `mpoint` VALUES ('2018-02-16', '03447', NULL, '00107160', 600, 600);
INSERT INTO `mpoint` VALUES ('2018-02-16', '03447', NULL, '00107161', 2900, 2900);
INSERT INTO `mpoint` VALUES ('2018-02-16', '03432', NULL, '00107162', 300, 300);
INSERT INTO `mpoint` VALUES ('2018-02-16', '03447', NULL, '00107165', 1550, 1550);
INSERT INTO `mpoint` VALUES ('2018-02-19', '02319', NULL, '00107205', 180, 180);
INSERT INTO `mpoint` VALUES ('2018-02-19', '03425', NULL, '00107249', 60, 60);
INSERT INTO `mpoint` VALUES ('2018-02-19', '03425', NULL, '00107254', 165, 165);
INSERT INTO `mpoint` VALUES ('2018-02-20', '00628', NULL, '00107320', 312, 312);
INSERT INTO `mpoint` VALUES ('2018-02-20', '02197', NULL, '00107346', 200, 200);
INSERT INTO `mpoint` VALUES ('2018-02-20', '03447', NULL, '00107369', 1580, 1580);
INSERT INTO `mpoint` VALUES ('2018-02-21', '01018', NULL, '00107392', 300, 300);
INSERT INTO `mpoint` VALUES ('2018-02-21', '00623', NULL, '00107395', 90, 90);
INSERT INTO `mpoint` VALUES ('2018-02-21', '01109', NULL, '00107420', 120, 120);
INSERT INTO `mpoint` VALUES ('2018-02-21', '03432', NULL, '00107425', 140, 140);
INSERT INTO `mpoint` VALUES ('2018-02-21', '00773', NULL, '00107435', 60, 60);
INSERT INTO `mpoint` VALUES ('2018-02-22', '00996', NULL, '00107479', 990, 990);
INSERT INTO `mpoint` VALUES ('2018-02-22', '00752', NULL, '00107512', 315, 315);
INSERT INTO `mpoint` VALUES ('2018-02-22', '00752', NULL, '00107516', 250, 250);
INSERT INTO `mpoint` VALUES ('2018-02-23', '00893', NULL, '00107577', 80, 80);
INSERT INTO `mpoint` VALUES ('2018-02-23', '00893', NULL, '00107578', 84, 84);
INSERT INTO `mpoint` VALUES ('2018-02-23', '03408', NULL, '00107582', 80, 80);
INSERT INTO `mpoint` VALUES ('2018-02-23', '00996', NULL, '00107584', 450, 450);
INSERT INTO `mpoint` VALUES ('2018-02-26', '00894', NULL, '00107670', 105, 105);
INSERT INTO `mpoint` VALUES ('2018-02-27', '00759', NULL, '00107716', 95, 95);
INSERT INTO `mpoint` VALUES ('2018-02-27', '03395', NULL, '00107724', 125, 125);
INSERT INTO `mpoint` VALUES ('2018-02-27', '00757', NULL, '00107736', 120, 120);
INSERT INTO `mpoint` VALUES ('2018-02-27', '00757', NULL, '00107737', 30, 30);
INSERT INTO `mpoint` VALUES ('2018-02-27', '00634', NULL, '00107763', 90, 90);
INSERT INTO `mpoint` VALUES ('2018-02-27', '00766', NULL, '00107773', 195, 195);
INSERT INTO `mpoint` VALUES ('2018-02-27', '01011', NULL, '00107776', 500, 500);
INSERT INTO `mpoint` VALUES ('2018-03-01', '03447', NULL, '00107920', 1250, 1250);
INSERT INTO `mpoint` VALUES ('2018-03-02', '02319', NULL, '00107987', 90, 90);
INSERT INTO `mpoint` VALUES ('2018-03-02', '03181', NULL, '00107992', 570, 570);
INSERT INTO `mpoint` VALUES ('2018-03-05', '03356', NULL, '00108040', 260, 260);
INSERT INTO `mpoint` VALUES ('2018-03-05', '01004', NULL, '00108091', 90, 90);
INSERT INTO `mpoint` VALUES ('2018-03-06', '00627', NULL, '00108202', 120, 120);
INSERT INTO `mpoint` VALUES ('2018-03-07', '01011', NULL, '00108240', 750, 750);
INSERT INTO `mpoint` VALUES ('2018-03-08', '00893', NULL, '00108326', 100, 100);
INSERT INTO `mpoint` VALUES ('2018-03-08', '03447', NULL, '00108358', 4000, 4000);
INSERT INTO `mpoint` VALUES ('2018-03-08', '03269', NULL, '00108366', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2018-03-09', '01006', NULL, '00108384', 850, 850);
INSERT INTO `mpoint` VALUES ('2018-03-09', '02499', NULL, '00108450', 230, 230);
INSERT INTO `mpoint` VALUES ('2018-03-12', '00894', NULL, '00108468', 200, 200);
INSERT INTO `mpoint` VALUES ('2018-03-12', '01020', NULL, '00108474', 130, 130);
INSERT INTO `mpoint` VALUES ('2018-03-12', '03181', NULL, '00108501', 1400, 1400);
INSERT INTO `mpoint` VALUES ('2018-03-12', '03181', NULL, '00108526', 1322, 1322);
INSERT INTO `mpoint` VALUES ('2018-03-12', '03181', NULL, '00108527', 370, 370);
INSERT INTO `mpoint` VALUES ('2018-03-12', '01006', NULL, '00108535', 400, 400);
INSERT INTO `mpoint` VALUES ('2018-03-13', '03395', NULL, '00108553', 40, 40);
INSERT INTO `mpoint` VALUES ('2018-03-13', '00766', NULL, '00108557', 120, 120);
INSERT INTO `mpoint` VALUES ('2018-03-13', '00764', NULL, '00108558', 120, 120);
INSERT INTO `mpoint` VALUES ('2015-12-01', '00759', NULL, 'FC000636', 200, 200);
INSERT INTO `mpoint` VALUES ('2015-12-01', '00761', NULL, 'FC000643', 170, 170);
INSERT INTO `mpoint` VALUES ('2015-12-01', '00757', NULL, 'FC000646', 500, 500);
INSERT INTO `mpoint` VALUES ('2015-12-01', '00753', NULL, 'FC000647', 300, 300);
INSERT INTO `mpoint` VALUES ('2015-12-17', '00536', NULL, 'FC000727', 150, 150);
INSERT INTO `mpoint` VALUES ('2016-01-12', '00645', NULL, 'FC001012', 500, 500);
INSERT INTO `mpoint` VALUES ('2016-01-12', '00761', NULL, 'FC001016', 250, 250);
INSERT INTO `mpoint` VALUES ('2016-01-13', '02319', NULL, 'FC001059', 120, 120);
INSERT INTO `mpoint` VALUES ('2016-02-26', '03278', NULL, 'FC001399', 42, 42);
INSERT INTO `mpoint` VALUES ('2016-03-01', '00633', NULL, 'FC001428', 24, 24);
INSERT INTO `mpoint` VALUES ('2016-03-05', '00991', NULL, 'FC001485', 100, 100);
INSERT INTO `mpoint` VALUES ('2016-03-05', '01004', NULL, 'FC001488', 220, 220);
INSERT INTO `mpoint` VALUES ('2016-03-30', '01011', NULL, 'FC001750', 350, 350);
INSERT INTO `mpoint` VALUES ('2016-03-31', '02010', NULL, 'FC001787', 300, 300);
INSERT INTO `mpoint` VALUES ('2016-04-13', '01337', NULL, 'FC002001', 80, 80);
INSERT INTO `mpoint` VALUES ('2016-04-26', '02319', NULL, 'FC002169', 42, 42);
INSERT INTO `mpoint` VALUES ('2016-04-29', '01018', NULL, 'FC002212', 42, 30);
INSERT INTO `mpoint` VALUES ('2016-05-11', '01319', NULL, 'FC002385', 42, 42);
INSERT INTO `mpoint` VALUES ('2016-05-17', '02010', NULL, 'FC002464', 1000, 1000);
INSERT INTO `mpoint` VALUES ('2016-05-18', '03305', NULL, 'FC002508', 150, 150);
INSERT INTO `mpoint` VALUES ('2016-05-19', '02295', NULL, 'FC002521', 150, 150);
INSERT INTO `mpoint` VALUES ('2016-05-19', '01119', NULL, 'FC002523', 12, 12);
INSERT INTO `mpoint` VALUES ('2016-06-02', '00001', NULL, 'FC002747', 167, 167);
INSERT INTO `mpoint` VALUES ('2016-06-06', '00988', NULL, 'FC002818', 280, 280);
INSERT INTO `mpoint` VALUES ('2016-06-07', '01319', NULL, 'FC002869', 250, 250);
INSERT INTO `mpoint` VALUES ('2016-06-07', '03309', NULL, 'FC002899', 310, 310);
INSERT INTO `mpoint` VALUES ('2016-06-07', '01762', NULL, 'FC002912', 60, 60);
INSERT INTO `mpoint` VALUES ('2016-06-07', '00757', NULL, 'FC002914', 190, 190);
INSERT INTO `mpoint` VALUES ('2016-06-08', '01020', NULL, 'FC002949', 500, 500);
INSERT INTO `mpoint` VALUES ('2016-06-08', '01019', NULL, 'FC002983', 292, 292);
INSERT INTO `mpoint` VALUES ('2016-06-08', '03312', NULL, 'FC002984', 10, 10);
INSERT INTO `mpoint` VALUES ('2016-06-10', '02010', NULL, 'FC003051', 300, 300);
INSERT INTO `mpoint` VALUES ('2016-06-10', '02319', NULL, 'FC003064', 506, 182);
INSERT INTO `mpoint` VALUES ('2016-06-13', '00894', NULL, 'FC003093', 150, 150);

-- ----------------------------
-- Table structure for plantrabajo
-- ----------------------------
DROP TABLE IF EXISTS `plantrabajo`;
CREATE TABLE `plantrabajo`  (
  `idPlanT` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fStart` date NOT NULL,
  `fEnd` date NOT NULL,
  `numSemana` int(11) NULL DEFAULT NULL,
  `cliente` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`idPlanT`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of plantrabajo
-- ----------------------------
INSERT INTO `plantrabajo` VALUES (1, '2019-05-01', '2019-05-01', 18, 'oscar CornejonArevalo', 'VM03');
INSERT INTO `plantrabajo` VALUES (2, '2019-05-02', '2019-05-02', 18, 'oscar CornejonArevalo', 'VM03');
INSERT INTO `plantrabajo` VALUES (3, '2019-05-02', '2019-05-02', 18, 'Dra. yerlin Patricia Rosales Arce', 'VM03');
INSERT INTO `plantrabajo` VALUES (4, '2019-05-02', '2019-05-02', 18, 'Dra . Ines Picado', 'VM03');
INSERT INTO `plantrabajo` VALUES (5, '2019-08-29', '2019-08-29', 35, 'Dra . Ines Picado', 'VM03');
INSERT INTO `plantrabajo` VALUES (6, '2019-08-29', '2019-08-29', 35, 'Dr. Jorge Daniel Blandon.', 'VM03');

-- ----------------------------
-- Table structure for temporal
-- ----------------------------
DROP TABLE IF EXISTS `temporal`;
CREATE TABLE `temporal`  (
  `CANT` decimal(10, 0) NULL DEFAULT NULL,
  `ARTICULO` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `DESCRIPCION` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `RUTA` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `IdUser` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Nombre_visitador` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Rutas` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Password` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Rol` int(1) NULL DEFAULT NULL COMMENT '1- VENDEDOR\r\n2- SAC \r\n3- ADMIN SAC \r\n4- SUPERVISOR \r\n5- ADMINISTRADOR',
  `Activo` bit(1) NULL DEFAULT NULL,
  `idNombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdUser`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 70 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (3, 'VM02', 'VENDEDOR 2', '\'F13\',\'F08\',\'F14\',\'F06\'', '123456', 2, b'1', NULL);
INSERT INTO `usuarios` VALUES (4, 'VM03', 'VENDEDOR 3', '\'F05\',\'F07\',\'F08\'', 'KD6917', 2, b'1', NULL);
INSERT INTO `usuarios` VALUES (5, 'VM05', 'KATHERINE ESTRADA', '\'F05\',\'F19\'', '123456', 2, b'1', NULL);
INSERT INTO `usuarios` VALUES (6, 'rlacayo', 'rlacayo', '', 'ggumk', 1, b'1', NULL);
INSERT INTO `usuarios` VALUES (2, 'VM01', 'VENDEDOR 1', '\'F09\',\'F10\',\'F11\',\'F20\'', 'AQ4769', 2, b'1', NULL);
INSERT INTO `usuarios` VALUES (1, 'admin', 'admin', '', '123456', 1, b'1', NULL);
INSERT INTO `usuarios` VALUES (11, 'DR01', 'DR Jose Benito Rojas', 'asd', '123456', 3, b'1', '121');
INSERT INTO `usuarios` VALUES (9, 'FR01', 'Famacia El Enfermo', NULL, '123456', 3, b'1', NULL);
INSERT INTO `usuarios` VALUES (10, 'VM09', 'OTRO', '\'F12\',\'F12\'', 'DDDDD', 1, b'1', NULL);
INSERT INTO `usuarios` VALUES (8, 'VM08', 'YESICA PARRALES', '\'F14\',\'F06\'', 'YP4552', 2, b'1', NULL);
INSERT INTO `usuarios` VALUES (7, 'VM07', 'VLADIMIR NAVARRETE', '\'F13\',\'F03\'', 'VN1406', 2, b'1', NULL);
INSERT INTO `usuarios` VALUES (69, 'US15', 'Dra . Elisa Garcia Blandon.', NULL, 'zPpH2K', 3, b'1', 'F10-M0426095155');
INSERT INTO `usuarios` VALUES (68, 'US14', 'Dr. Evelio Casco Castellon.', NULL, 'VPP9kz', 3, b'1', 'F09-M0503110907');
INSERT INTO `usuarios` VALUES (67, 'US13', 'LYCY', NULL, 'Wx8cvW', 3, b'1', 'F19-F0424120106');
INSERT INTO `usuarios` VALUES (65, 'US11', 'solidaria', NULL, 'QfHTkD', 3, b'0', 'F19-F0424104930');
INSERT INTO `usuarios` VALUES (66, 'US12', 'peruano', NULL, 'yf4Gqc', 3, b'1', 'F19-F0424111548');

-- ----------------------------
-- Table structure for ventas_detalles_terceros
-- ----------------------------
DROP TABLE IF EXISTS `ventas_detalles_terceros`;
CREATE TABLE `ventas_detalles_terceros`  (
  `idDetVnts` int(10) NOT NULL AUTO_INCREMENT,
  `idVnts` int(8) NULL DEFAULT NULL,
  `idArt` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `descDetArtVnts` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `cantDetVnts` int(7) NULL DEFAULT NULL,
  PRIMARY KEY (`idDetVnts`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ventas_detalles_terceros
-- ----------------------------
INSERT INTO `ventas_detalles_terceros` VALUES (21, 43, '10118531', 'abiraterona acetato 250 mg Tabletas 60/Frasco 1/Caja (Naprod)', 2);
INSERT INTO `ventas_detalles_terceros` VALUES (22, 43, '10301051', 'acetaminofen 300 mg Supositorios unidad (Ramos)', 32);
INSERT INTO `ventas_detalles_terceros` VALUES (23, 43, '10311012', 'acido Salicilico 5% unguento 30 g/Pomo (Ramos)', 21);
INSERT INTO `ventas_detalles_terceros` VALUES (24, 43, '12901011', 'acetaminofen 120 mg/5ml Jarabe 120 ml/Frasco 1/Caja (Lancasco)', 4);
INSERT INTO `ventas_detalles_terceros` VALUES (25, 44, '10311012', 'acido Salicilico 5% unguento 30 g/Pomo (Ramos)', 43);
INSERT INTO `ventas_detalles_terceros` VALUES (26, 44, '11410014', 'acido acetilsalicilico 100 mg Tabletas 1,000/Caja (Huazhong)', 12);
INSERT INTO `ventas_detalles_terceros` VALUES (27, 44, '12403020', 'Beclometasona 50mcg/Dosis  aerosol 200 Puff/Frasco 1/Caja (MiDaS)', 232);
INSERT INTO `ventas_detalles_terceros` VALUES (28, 44, '12905071', 'Claribac (Claritromicina) 250mg/5ml Polvo para Suspension oral 50ml/Frasco 1/Caja (Lancasco)', 34);
INSERT INTO `ventas_detalles_terceros` VALUES (29, 45, '10301021', 'acetaminofen 100 mg/ml Solucion oral tas 30ml/Frasco 1/Caja (Ramos)', 12);
INSERT INTO `ventas_detalles_terceros` VALUES (30, 45, '10301032', 'acetaminofen 120 mg/5ml Jarabe 120 ml/Frasco 1/Caja (Ramos)', 32);
INSERT INTO `ventas_detalles_terceros` VALUES (31, 45, '10301051', 'acetaminofen 300 mg Supositorios unidad (Ramos)', 11);
INSERT INTO `ventas_detalles_terceros` VALUES (32, 45, '10311022', 'acido Salicilico 10% unguento 30 g/Pomo (Ramos)', 3);
INSERT INTO `ventas_detalles_terceros` VALUES (33, 45, '11401024', 'acetaminofen 500 mg Tabletas 1,000/Caja (Huazhong)', 54);
INSERT INTO `ventas_detalles_terceros` VALUES (34, 46, '10305022', 'Cefadroxilo 250 mg/5ml PPSo 60ml/Frasco 1/Caja (Ramos)', 12);
INSERT INTO `ventas_detalles_terceros` VALUES (35, 46, '10306011', 'Valproato Sodico 250 mg/5 ml Solucion oral 120 ml/Frasco unidad (Ramos)', 23);
INSERT INTO `ventas_detalles_terceros` VALUES (36, 46, '10310082', 'Hidroclorotiazida 50 mg Tableta 100/Caja (Ramos)', 5);
INSERT INTO `ventas_detalles_terceros` VALUES (37, 46, '10323033', 'Vita Forte (Vitaminas B1, B6, B12) Capsula 100/Caja (Ramos)', 21);
INSERT INTO `ventas_detalles_terceros` VALUES (38, 46, '10624011', 'Furosemida 40 mg Tableta 100/Caja (austin Pharma)', 11);
INSERT INTO `ventas_detalles_terceros` VALUES (39, 46, '12805081', 'Zorca (Norfloxacina) 400 mg Tableta 20/Caja (Karnel)', 23);
INSERT INTO `ventas_detalles_terceros` VALUES (40, 46, '12917021', 'Passiflora Compuesta Capletas 30/Caja (Lancasco)', 3);
INSERT INTO `ventas_detalles_terceros` VALUES (41, 47, '10118242', 'exemestano 25 mg Tabletas Recubiertas 10/Frasco 1/Caja (Naprod)', 2);
INSERT INTO `ventas_detalles_terceros` VALUES (42, 47, '12901032', 'ibuprofeno 600 mg Tableta Recubierta 50/Caja (Lancasco)', 1);
INSERT INTO `ventas_detalles_terceros` VALUES (43, 47, '12901051', 'Desinac (Diclofenac Sodico) 9mg/5ml Jarabe120ml/Frasco 1/Caja (Lancasco)', 3);
INSERT INTO `ventas_detalles_terceros` VALUES (44, 48, '10207022', 'Ketoconazol 200 mg Tableta 20/Caja (Hetero)', 1);
INSERT INTO `ventas_detalles_terceros` VALUES (45, 48, '12901051', 'Desinac (Diclofenac Sodico) 9mg/5ml Jarabe120ml/Frasco 1/Caja (Lancasco)', 3);
INSERT INTO `ventas_detalles_terceros` VALUES (46, 48, '12912071', 'adiamyl Plus (Glimepiride/Metformina) 2 mg/1000 mg Tableta 20/Caja (Lancasco)', 3);
INSERT INTO `ventas_detalles_terceros` VALUES (47, 49, '10118101', 'Cisplatino 1mg/ml Solucion iny i.V 10 ml/Vial 1/Caja (Naprod)', 2);
INSERT INTO `ventas_detalles_terceros` VALUES (48, 49, '10313072', 'omeprazol 40 mg Pellet Capsula 30/caja (Ramos)', 1);
INSERT INTO `ventas_detalles_terceros` VALUES (49, 49, '11401023', 'acetaminofen 500 mg Tabletas 100/Caja (Huazhong)', 3);
INSERT INTO `ventas_detalles_terceros` VALUES (50, 50, '10310032', 'enaram (enalapril) 10 mg Tableta 100/Caja (Ramos)', 2);
INSERT INTO `ventas_detalles_terceros` VALUES (51, 50, '12801071', 'Delor Flex (Naproxeno) 500 mg Tableta 50/Caja (Karnel)', 32);
INSERT INTO `ventas_detalles_terceros` VALUES (52, 50, '12903031', 'Hi-Miel (antitusivo natural) Jarabe 120 ml/Frasco 1/Caja (Lancasco)', 4);
INSERT INTO `ventas_detalles_terceros` VALUES (53, 51, '10118251', 'Fludarabina Fosfato 50 mg Liofilizado para Sol. iny. Vial 1/Caja Refrigerado (Naprod)', 3);
INSERT INTO `ventas_detalles_terceros` VALUES (54, 51, '10301032', 'acetaminofen 120 mg/5ml Jarabe 120 ml/Frasco 1/Caja (Ramos)', 1);
INSERT INTO `ventas_detalles_terceros` VALUES (55, 51, '10308041', 'Metronidazol 125 mg/5ml Suspension oral 120 ml/Frasco unidad (Ramos)', 2);
INSERT INTO `ventas_detalles_terceros` VALUES (56, 51, '10314021', 'Clindamicina 100 mg + Ketoconazol 400 mg Ovulo 3/Caja (Ramos)', 4);
INSERT INTO `ventas_detalles_terceros` VALUES (57, 52, '10118111', 'Cisplatino 1mg/ml Solucion iny i.V 50 ml/Vial 1/Caja (Naprod)', 2);
INSERT INTO `ventas_detalles_terceros` VALUES (58, 52, '12907012', 'Lanzat (azitromicina) 500 mg Tabletas Recubiertas 10/Caja (Lancasco)', 12);
INSERT INTO `ventas_detalles_terceros` VALUES (59, 53, '10310061', 'acido acetilsalicilico 100 mg Tableta unidad  (Ramos)', 1);
INSERT INTO `ventas_detalles_terceros` VALUES (60, 54, '10304072', 'Loratadina 5 mg/5 ml Jarabe 60 ml/Frasco 1/Caja (Ramos)', 3);
INSERT INTO `ventas_detalles_terceros` VALUES (61, 54, '10305142', 'Furazolidona 50 mg/5 ml Suspension oral 120 ml/Frasco 1/Caja (Ramos)', 1);
INSERT INTO `ventas_detalles_terceros` VALUES (62, 54, '10311092', 'Zanate (Deltametrina) 0.219 mg Locion 30 ml/Frasco 1/Caja (Ramos)', 3);
INSERT INTO `ventas_detalles_terceros` VALUES (63, 55, '10605012', 'azitromicina 500 mg Tabletas Recubiertas 100/Caja (austin Pharma)', 12);
INSERT INTO `ventas_detalles_terceros` VALUES (64, 55, '12905021', 'aticef (Ceftriaxona) 1 g Polvo para Sol. iny. Combipack 1/Caja (Lancasco)', 1);
INSERT INTO `ventas_detalles_terceros` VALUES (65, 56, '10301031', 'acetaminofen 120 mg/5ml Jarabe 120 ml/Frasco unidad (Ramos)', 2);
INSERT INTO `ventas_detalles_terceros` VALUES (66, 57, '10311022', 'acido Salicilico 10% unguento 30 g/Pomo (Ramos)', 1);
INSERT INTO `ventas_detalles_terceros` VALUES (67, 58, '10301082', 'Diram (Diclofenac Sodico) 50 mg Tabletas 100/Caja (Ramos)', 2);
INSERT INTO `ventas_detalles_terceros` VALUES (68, 58, '10310082', 'Hidroclorotiazida 50 mg Tableta 100/Caja (Ramos)', 1);
INSERT INTO `ventas_detalles_terceros` VALUES (69, 58, '10324033', 'Carbamazepina 200 mg Tableta 100/Caja (Ramos)', 3);
INSERT INTO `ventas_detalles_terceros` VALUES (70, 58, '13207011', 'Q-Nistatina 100,000 ui/ml Solucion tas 30ml/Frasco 1/Caja (Quimifar)', 1);
INSERT INTO `ventas_detalles_terceros` VALUES (71, 59, '12912021', 'adiabet Plus (Glibenclamida/Metformina) 5 mg/500 mg Tableta 30/Caja (Lancasco)', 2);
INSERT INTO `ventas_detalles_terceros` VALUES (72, 60, '10605011', 'azitromicina 500 mg Tabletas Recubiertas 5/Caja (austin Pharma)', 1);
INSERT INTO `ventas_detalles_terceros` VALUES (73, 60, '12905011', 'aticef (Ceftriaxona) 0.5 g Polvo para Sol. iny. Combipack 1/Caja (Lancasco)', 4);
INSERT INTO `ventas_detalles_terceros` VALUES (74, 60, '12912011', 'adiabet (Glibenclamida) 5 mg Tableta 30/Caja (Lancasco)', 2);
INSERT INTO `ventas_detalles_terceros` VALUES (75, 61, '10301182', 'indometacina 100 mg Supositorios 6/Caja (Ramos)', 2);
INSERT INTO `ventas_detalles_terceros` VALUES (76, 61, '12804011', 'Klaromin 2.5mg/5ml Jarabe 60 ml/Frasco 1/Caja (Karnel)', 2);
INSERT INTO `ventas_detalles_terceros` VALUES (77, 61, '12905121', 'etadex (Cefixima) 100 mg/5ml Polvo para Suspension oral 50 ml/Frasco 1/Caja (Lancasco)', 3);
INSERT INTO `ventas_detalles_terceros` VALUES (78, 61, '13203021', 'Viropulmin 125mg/5ml Jarabe 120 ml/Frasco 1/Caja (Quimifar)', 4);
INSERT INTO `ventas_detalles_terceros` VALUES (79, 62, '10209012', 'aciclovir 400 mg Tableta 30/Caja (Hetero)', 3);
INSERT INTO `ventas_detalles_terceros` VALUES (80, 62, '10311101', 'acido Salicilico 40% unguento 30 g/Pomo (Ramos)', 2);
INSERT INTO `ventas_detalles_terceros` VALUES (81, 63, '10301031', 'acetaminofen 120 mg/5ml Jarabe 120 ml/Frasco unidad (Ramos)', 3);
INSERT INTO `ventas_detalles_terceros` VALUES (82, 63, '10301031', 'acetaminofen 120 mg/5ml Jarabe 120 ml/Frasco unidad (Ramos)', 3);

-- ----------------------------
-- Table structure for ventas_terceros
-- ----------------------------
DROP TABLE IF EXISTS `ventas_terceros`;
CREATE TABLE `ventas_terceros`  (
  `idVnts` int(8) NOT NULL AUTO_INCREMENT,
  `clienteVnts` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fechaVnts` date NULL DEFAULT NULL,
  `idUserRegVnts` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fechaRegVnts` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `telClteVnts` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `activoVnts` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idVnts`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ventas_terceros
-- ----------------------------
INSERT INTO `ventas_terceros` VALUES (43, 'Ennio Saenz', '2019-05-07', 'DR01', '2019-05-10 14:41:46', '88765132', 0);
INSERT INTO `ventas_terceros` VALUES (44, 'Cesar Alvarez', '2019-05-01', 'DR01', '2019-05-07 17:28:56', '22334343', 1);
INSERT INTO `ventas_terceros` VALUES (45, 'Manuel Vargas', '2019-05-07', 'DR01', '2019-05-08 08:05:48', '22332343', 1);
INSERT INTO `ventas_terceros` VALUES (46, 'Sergio Zuniga', '2019-05-07', 'DR01', '2019-05-07 17:28:59', '89766544', 1);
INSERT INTO `ventas_terceros` VALUES (47, 'Alvaro Segovia', '2019-05-07', 'DR01', '2019-05-15 10:38:13', '22223454', 0);
INSERT INTO `ventas_terceros` VALUES (48, 'Mario Alvarado', '2019-05-07', 'DR01', '2019-05-07 17:29:02', '88765432', 1);
INSERT INTO `ventas_terceros` VALUES (49, 'Yadira Roca', '2019-05-07', 'DR01', '2019-05-07 10:28:38', '23434354', 1);
INSERT INTO `ventas_terceros` VALUES (50, 'Sandra Somarriba', '2019-05-07', 'DR01', '2019-05-07 10:28:43', '44343322', 1);
INSERT INTO `ventas_terceros` VALUES (51, 'Ernesto Guadamuz', '2019-05-07', 'DR01', '2019-05-08 08:09:56', '', 0);
INSERT INTO `ventas_terceros` VALUES (52, 'Akram Jerab', '2019-05-07', 'DR01', '2019-05-08 08:09:54', '22334232', 1);
INSERT INTO `ventas_terceros` VALUES (53, 'Maria Zeledon', '2019-05-07', 'DR01', '2019-05-07 10:28:39', '', 1);
INSERT INTO `ventas_terceros` VALUES (54, 'Jade del carmen Soza', '2019-05-07', 'DR01', '2019-05-07 17:29:08', '22334343', 0);
INSERT INTO `ventas_terceros` VALUES (55, 'CArlos', '2019-05-07', 'DR01', '2019-05-07 16:50:43', '22223232', 1);
INSERT INTO `ventas_terceros` VALUES (56, 'PAty', '2019-05-07', 'DR01', '2019-05-07 17:44:39', '2232323', 1);
INSERT INTO `ventas_terceros` VALUES (57, 'Marbelly Cano', '2019-05-01', 'DR01', '2019-05-08 08:49:42', '22324321', 1);
INSERT INTO `ventas_terceros` VALUES (58, 'Johanna Bermudez', '2019-04-10', 'DR01', '2019-05-08 08:50:31', '', 1);
INSERT INTO `ventas_terceros` VALUES (59, 'Migdalia Prudente', '2019-05-08', 'FR01', '2019-05-08 09:40:25', '22334343', 1);
INSERT INTO `ventas_terceros` VALUES (60, 'Enma Vallecillo', '2019-05-08', 'FR01', '2019-05-08 09:41:30', '', 1);
INSERT INTO `ventas_terceros` VALUES (61, 'Melissa Valle', '2019-05-08', 'FR01', '2019-05-08 09:42:15', '88765143', 1);
INSERT INTO `ventas_terceros` VALUES (62, 'Sandra Matuz', '2019-05-08', 'DR01', '2019-05-08 09:43:25', '99887766', 1);
INSERT INTO `ventas_terceros` VALUES (63, 'fdfd', '2019-05-16', 'DR01', '2019-05-16 10:17:31', '454', 0);

-- ----------------------------
-- Procedure structure for sp_farmacias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_farmacias`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_farmacias`(IN `codFarmacia` VARCHAR(50), IN `nFarmacia` VARCHAR(100), IN `nPropietario` VARCHAR(100), IN `direccion` VARCHAR(200), IN `fAniversario` DATE, IN `tFarmacia` VARCHAR(20), IN `tPropietario` VARCHAR(20), IN `hAtencion` VARCHAR(100), IN `rCompra` VARCHAR(100), IN `tRespCompra` VARCHAR(20), IN `cDependiente` VARCHAR(20), IN `pMensualComp` VARCHAR(20), IN `dPagoFact` VARCHAR(100), IN `rVencidos` VARCHAR(100), IN `rCanjes` VARCHAR(100), IN `nDepMostrador` VARCHAR(20), IN `pProgPuntos` BIT, IN `eBenfDepend` BIT, IN `pImpulsadoras` BIT, IN `cCooperativa` BIT, IN `Ruta1` VARCHAR(10))
BEGIN
IF EXISTS ( SELECT IdFarmacia FROM farmacias WHERE IdFarmacia = codFarmacia ) THEN
    BEGIN
        UPDATE farmacias
        SET NombreFarmacia = nFarmacia,
                NombrePropietario = nPropietario,
                Direccion = direccion,
                FechaAniversario = fAniversario,
                TelfFarmacia = tFarmacia,
                TelfPropietario = tPropietario,
                HorarioAtencion = hAtencion,
                ResponsableCompra = rCompra,
                TelfRespCompra = tRespCompra,
                CantDependiente = cDependiente,
                PotencialMensualCompra = pMensualComp,
                DiasPagoFact = dPagoFact,
                RespVencidos = rVencidos,
                RespCanjes = rCanjes,
                NumDepMostrador = nDepMostrador,
                PartProgPuntos = pProgPuntos,
                EntregaBenefDepend = eBenfDepend,
                PermiteImpulsadoras = pImpulsadoras,
                CadenaCooperativa = cCooperativa
        WHERE
            IdFarmacia = codFarmacia;
    END;
ELSE
    BEGIN
        INSERT INTO farmacias (
                IdFarmacia,
                NombreFarmacia,
                NombrePropietario,
                Direccion,
                FechaAniversario,
                TelfFarmacia,
                TelfPropietario,
                HorarioAtencion,
                ResponsableCompra,
                TelfRespCompra,
                CantDependiente,
                PotencialMensualCompra,
                DiasPagoFact,
                RespVencidos,
                RespCanjes,
                NumDepMostrador,
                PartProgPuntos,
                EntregaBenefDepend,
                PermiteImpulsadoras,
                CadenaCooperativa,
                Ruta
    )
    VALUES
        (
                codFarmacia,
                nFarmacia,
                nPropietario,
                direccion,
                fAniversario,
                tFarmacia,
                tPropietario,
                hAtencion,
                rCompra,
                tRespCompra,
                cDependiente,
                pMensualComp,
                dPagoFact,
                rVencidos,
                rCanjes,
                nDepMostrador,
                pProgPuntos,
                eBenfDepend,
                pImpulsadoras,
                cCooperativa,
                Ruta1
        );
    END;
END IF;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_medicos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_medicos`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_medicos`(
IN _IdMedico VARCHAR ( 20 ),
IN _NombreMedico VARCHAR ( 100 ),
IN _FNacimiento date,
IN _Especialidad VARCHAR ( 200 ),
IN _SubEspecialidad VARCHAR ( 200 ),
IN _Direccion VARCHAR ( 100 ),
IN _TelfClinica VARCHAR ( 50 ),
IN _Celular VARCHAR ( 50 ),
IN _Email VARCHAR ( 100 ),
IN _AUGraduacion VARCHAR ( 100 ),
IN _NEPSPrivado VARCHAR ( 20 ),
IN _MCMFrecuente VARCHAR ( 200 ),
IN _CConsulta VARCHAR ( 50 ),
IN _PFarmacia bit ( 1 ),
IN _SocioClinica VARCHAR ( 50 ),
IN _MCelular VARCHAR ( 50 ),
IN _MVehiculo VARCHAR ( 50 ),
IN _MReloj VARCHAR ( 50 ),
IN _MComputadora VARCHAR ( 50 ),
IN _NombreAsis VARCHAR ( 100 ),
IN _TExtensionAsis VARCHAR ( 20 ),
IN _CelularAsis VARCHAR ( 20 ),
IN _EmailAsis VARCHAR ( 100 ),
IN _FNacimientoAsis date,
IN _ComputadoraAsis VARCHAR ( 50 ),
IN _OLBAMedica VARCHAR ( 100 ),
IN _DeportePractica VARCHAR ( 50 ),
IN _Pasatiempo VARCHAR ( 100 ),
IN _SMParticipa VARCHAR ( 100 ),
IN _Facebook VARCHAR ( 50 ),
IN _Twitter VARCHAR ( 50 ),
IN _Linkedin VARCHAR ( 50 ),
IN _Instagram VARCHAR ( 50 ),
IN _Ruta VARCHAR ( 20 ) 
)
BEGIN
	IF
		EXISTS ( SELECT IdMedico FROM medicos WHERE IdMedico = _IdMedico ) THEN
		BEGIN
				UPDATE medicos 
				SET NombreMedico = _NombreMedico,
				FNacimiento = _FNacimiento,
				Especialidad = _Especialidad,
				SubEspecialidad = _SubEspecialidad,
				Direccion = _Direccion,
				TelfClinica = _TelfClinica,
				Celular = _Celular,
				Email = _Email,
				AUGraduacion = _AUGraduacion,
				NEPSPrivado = _NEPSPrivado,
				MCMFrecuente = _MCMFrecuente,
				CConsulta = _CConsulta,
				PFarmacia = _PFarmacia,
				SocioClinica = _SocioClinica,
				MCelular = _MCelular,
				MVehiculo = _MVehiculo,
				MReloj = _MReloj,
				MComputadora = _MComputadora,
				NombreAsis = _NombreAsis,
				TExtensionAsis = _TExtensionAsis,
				CelularAsis = _CelularAsis,
				EmailAsis = _EmailAsis,
				FNacimientoAsis = _FNacimientoAsis,
				ComputadoraAsis = _ComputadoraAsis,
				OLBAMedica = _OLBAMedica,
				DeportePractica = _DeportePractica,
				Pasatiempo = _Pasatiempo,
				SMParticipa = _SMParticipa,
				Facebook = _Facebook,
				Twitter = _Twitter,
				Linkedin = _Linkedin,
				Instagram = _Instagram 
			WHERE
				IdMedico = _IdMedico;
			
		END;
		ELSE BEGIN
				INSERT INTO medicos (
					IdMedico,
					NombreMedico,
					FNacimiento,
					Especialidad,
					SubEspecialidad,
					Direccion,
					TelfClinica,
					Celular,
					Email,
					AUGraduacion,
					NEPSPrivado,
					MCMFrecuente,
					CConsulta,
					PFarmacia,
					SocioClinica,
					MCelular,
					MVehiculo,
					MReloj,
					MComputadora,
					NombreAsis,
					TExtensionAsis,
					CelularAsis,
					EmailAsis,
					FNacimientoAsis,
					ComputadoraAsis,
					OLBAMedica,
					DeportePractica,
					Pasatiempo,
					SMParticipa,
					Facebook,
					Twitter,
					Linkedin,
					Instagram,
					Ruta 
				)
			VALUES
				(
					_IdMedico,
					_NombreMedico,
					_FNacimiento,
					_Especialidad,
					_SubEspecialidad,
					_Direccion,
					_TelfClinica,
					_Celular,
					_Email,
					_AUGraduacion,
					_NEPSPrivado,
					_MCMFrecuente,
					_CConsulta,
					_PFarmacia,
					_SocioClinica,
					_MCelular,
					_MVehiculo,
					_MReloj,
					_MComputadora,
					_NombreAsis,
					_TExtensionAsis,
					_CelularAsis,
					_EmailAsis,
					_FNacimientoAsis,
					_ComputadoraAsis,
					_OLBAMedica,
					_DeportePractica,
					_Pasatiempo,
					_SMParticipa,
					_Facebook,
					_Twitter,
					_Linkedin,
					_Instagram,
					_Ruta 
				);
			
		END;
		
	END IF;

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
