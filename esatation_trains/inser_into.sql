-- Insertar registros de estaciones de metro
INSERT INTO `stations` (`name`) VALUES
("Lázaro Cárdens"), -- Lázaro Cárdenas
("Ferería"), -- Ferrería 
("Pnttlán"), -- Pantitlán
("Tauga"), -- Tacuba
("MartínCrrera"), -- Martín Carrera
("Santa Anita"),
("Villa de Aragón"),
("Tezozómoc"),
("Tecnológico"),
("Colegio Militar"),
("Chapultepec"),
("Calle 11"),
("Constitución de 1917"),
("Copilco"),
("Talismán"),
("Terminal Aérea"),
("Tepito"),
("Hospital 20 de Nov."),
("Eugenia"),
("Lomas Estrella"),
("Tlatelolco"),
("Atlalilco"),
("Blvd. Puerto Aéreo"),
("Chilpancingo"),
("Ciudad Azteca"),
("Niños Héroes"),
("Popotla"),
("San Joaquín"),
("Universidad"),
("Instituto del Petróleo"),
("Escuadrón 201"),
("Iztacalco"),
("Juárez"),
("Chabacano"),
("Azcapotzalco"),
("Bosque de Aragón"),
("Tlaltenco"),
("Jamaica"),
("Oceanía"),
("Iztapalapa"),
("Mixhuca"),
("Centro Médico"),
("Balderas"),
("Salto del Agua"),
("Insurgentes"),
("Guelatao"),
("Morelos"),
("Moctezuma"),
("Normal"),
("Zapata"),
("Zaragoza"),
("La Raza"),
("Constituyentes"),
("Múzquiz"),
("Romero Rubio"),
("San Cosme"),
("Portales"),
("Puebla"),
("Santa Marta"),
("Tasqueña"),
("Xola"),
("Canal del Norte"),
("Buenavista"),
("Balbuena"),
("Ermita"),
("Aragón"),
("Deportivo 18 de Marzo"),
("Auditorio"),
("Culhuacán"),
("El Rosario"),
("Guerrero"),
("Hospital General"),
("Fray Servando"),
("Patriotismo"),
("Observatorio"),
("La Paz"),
("Valle Gómez"),
("Tezonco"),
("Candelaria"),
("Aquiles Serdán"),
("La Viga"),
("Olímpica"),
("Mexicaltzingo"),
("Politécnico"),
("Periférico Ote"),
("San Lázaro"),
("San Antonio"),
("Zapotitlán"),
("Tláhuac"),
("Hidalgo"),
("Etiopía / Plaza de la Transpatencia"),
("Deportivo Oceanía"),
("Impulsora"),
("Consulado"),
("Camarones"),
("Allende"),
("San Juan de Letrán"),
("Viaducto"),
("Vallejo"),
("Doctores"),
("Los Reyes"),
("Bellas Artes"),
("Autobuses del Norte"),
("Acatitla"),
("Revolución"),
("Polanco"),
("San Andrés Tomatlán"),
("Garibaldi"),
("Eduardo Molina"),
("Coyuya"),
("Coyoacán"),
("Norte 45"),
("Lindavista"),
("Tacubaya"),
("Mixcoac"),
("Hangares"),
("Nopalera"),
("UAM-I"),
("Velódromo"),
("Cuauhtémoc"),
("Apatlaco"),
("Aculco"),
("Agrícola Oriental"),
("Eje Central"),
("Pino Suárez"),
("Río de los Remedios"),
("Potrero"),
("Sevilla"),
("General Anaya"),
("Indios Verdes"),
("La Villa - Basílica"),
("Parque de los Venados"),
("Juanacatlán"),
("Nativitas"),
("Misterios"),
("Barranca del Muerto"),
("Miguel Ángel de Quevedo"),
("Lagunilla"),
("Olivos"),
("Tepalcates"),
("Zócalo"),
("Gómez Farías"),
("San Pedro de Los Pinos"),
("Refinería"),
("Villa de Cortés"),
("R. Flores Magón"),
("Insurgentes Sur"),
("Viveros"),
("Cerro de la Estrella"),
("Bondojito"),
("Canal de San Juan"),
("San Antonio Abad"),
("Obrera"),
("Plaza Aragón"),
("Panteones"),
("Peñón Viejo"),
("División del Norte"),
("Cuitláhuac"),
("Ciudad Deportiva"),
("Cuatro Caminos"),
("Isabel la Católica"),
("Nezahualcóyotl"),
("Merced"),
-- A partir de aquí serán retos para eliminar registros
("Merced"),
("Lázaro de Guerrero"),
("Benito Cárdenas");

SELECT * FROM stations;

-- Insertar las líneas del metro
INSERT INTO `lines` (NAME, color) VALUES
("Línea 1", "Rosa"),
("Línea 2", "Azul"),
("Línea 3", "Verde olivo"),
("Línea 4", "Cian"),
("Línea 5", "Amarillo"),
("Línea 6", "Rojo"),
("Línea 7", "Naranja"),
("Línea 8", "Verder"),
("Línea 9", "Café"),
("Línea A", "Morado"),
("Línea B", "Verde y gris"),
("Línea 12", "Oro");

SELECT * FROM `lines`;


-- Inserat trenes
INSERT INTO `trains` (`serial_number`, `line_id`, `type`, `year`) VALUES
('0JFxafE4q8', 1, 1, 1963),
('2e5v4FHs0T', 3, 2, 1984),
('5xPdsZ1x9L', 3, 2, 1948),
('7csbz2qteT', 1, 1, 1971),
('8PwCI0CC6n', 4, 1, 1990),
('9ilxeEwlnH', 4, 2, 1994),
('aWDpmlRsOG', 4, 2, 1998),
('ax5jrpNIWG', 4, 2, 1952),
('B83fPCVFbH', 1, 1, 1990),
('Bv1MN0DuUm', 2, 2, 1952),
('D9m2gBhBJw', 2, 1, 1969),
('EDUumFCvJl', 2, 1, 1967),
('ejN3a4CsDC', 3, 2, 1997),
('f49Bk0GzBi', 4, 2, 1967),
('Ge92a6hVX8', 3, 2, 1967),
('Huz9yGcao5', 2, 1, 1980),
('Hvhw9vxUaH', 3, 1, 1983),
('JO5UinVh7B', 2, 1, 1956),
('MPbPGQfWxT', 2, 2, 1982),
('mS0SY0eScA', 3, 2, 1986),
('oCut3fDYXE', 3, 2, 1987),
('oRyT0nwjUn', 2, 1, 1988),
('OtmhQxSRpS', 3, 2, 1956),
('Pazz9JGCbJ', 1, 2, 1988),
('pBnf2N5Ncc', 4, 1, 1981),
('pMldxCQ2sS', 3, 1, 1984),
('q92m0d8aWM', 1, 1, 1979),
('QJ22USb3ry', 2, 1, 1949),
('rnpVQQPs5b', 4, 1, 1984),
('S06Q7kXYrP', 1, 1, 1990),
('s0QypBy7cJ', 2, 2, 1958),
('S6R4dX4THI', 2, 2, 1994),
('t8HhPpvYbU', 1, 2, 1996),
('U9xuOQl3kh', 3, 1, 1982),
('uibQ7F5VE7', 4, 1, 1961),
('Uj5G2Bodtk', 4, 2, 1985),
('VjPElNnH29', 3, 2, 1964),
('vOv1sCgHoa', 1, 1, 1947),
('VViBQInzq3', 4, 2, 1959),
('wGweNe36QH', 1, 2, 1987),
('Wh09mwE4yn', 4, 1, 1968),
('XE89MYo0IU', 3, 1, 1986),
('Z5qAgGpFTj', 1, 1, 1971),
('ZbX2yY5Wyz', 1, 2, 1966),
('zeaEgOCuYl', 2, 2, 1997),
('ZHA4kQokXG', 2, 1, 1977),
('zpO3I3tS4e', 1, 2, 1995),
('zpYnPq7vmN', 4, 2, 1976);

SELECT * FROM `trains`;

-- Insertar registros de estaciones de metro
INSERT INTO `stations_delete` (`name`) VALUES
("Lázaro Cárdens"), -- Lázaro Cárdenas
("Ferería"), -- Ferrería 
("Pnttlán"), -- Pantitlán
("Tauga"), -- Tacuba
("MartínCrrera"), -- Martín Carrera
("Santa Anita"),
("Villa de Aragón"),
("Tezozómoc"),
("Tecnológico"),
("Colegio Militar"),
("Chapultepec"),
("Calle 11"),
("Constitución de 1917"),
("Copilco"),
("Talismán"),
("Terminal Aérea"),
("Tepito"),
("Hospital 20 de Nov."),
("Eugenia"),
("Lomas Estrella"),
("Tlatelolco"),
("Atlalilco"),
("Blvd. Puerto Aéreo"),
("Chilpancingo"),
("Ciudad Azteca"),
("Niños Héroes"),
("Popotla"),
("San Joaquín"),
("Universidad"),
("Instituto del Petróleo"),
("Escuadrón 201"),
("Iztacalco"),
("Juárez"),
("Chabacano"),
("Azcapotzalco"),
("Bosque de Aragón"),
("Tlaltenco"),
("Jamaica"),
("Oceanía"),
("Iztapalapa"),
("Mixhuca"),
("Centro Médico"),
("Balderas"),
("Salto del Agua"),
("Insurgentes"),
("Guelatao"),
("Morelos"),
("Moctezuma"),
("Normal"),
("Zapata"),
("Zaragoza"),
("La Raza"),
("Constituyentes"),
("Múzquiz"),
("Romero Rubio"),
("San Cosme"),
("Portales"),
("Puebla"),
("Santa Marta"),
("Tasqueña"),
("Xola"),
("Canal del Norte"),
("Buenavista"),
("Balbuena"),
("Ermita"),
("Aragón"),
("Deportivo 18 de Marzo"),
("Auditorio"),
("Culhuacán"),
("El Rosario"),
("Guerrero"),
("Hospital General"),
("Fray Servando"),
("Patriotismo"),
("Observatorio"),
("La Paz"),
("Valle Gómez"),
("Tezonco"),
("Candelaria"),
("Aquiles Serdán"),
("La Viga"),
("Olímpica"),
("Mexicaltzingo"),
("Politécnico"),
("Periférico Ote"),
("San Lázaro"),
("San Antonio"),
("Zapotitlán"),
("Tláhuac"),
("Hidalgo"),
("Etiopía / Plaza de la Transpatencia"),
("Deportivo Oceanía"),
("Impulsora"),
("Consulado"),
("Camarones"),
("Allende"),
("San Juan de Letrán"),
("Viaducto"),
("Vallejo"),
("Doctores"),
("Los Reyes"),
("Bellas Artes"),
("Autobuses del Norte"),
("Acatitla"),
("Revolución"),
("Polanco"),
("San Andrés Tomatlán"),
("Garibaldi"),
("Eduardo Molina"),
("Coyuya"),
("Coyoacán"),
("Norte 45"),
("Lindavista"),
("Tacubaya"),
("Mixcoac"),
("Hangares"),
("Nopalera"),
("UAM-I"),
("Velódromo"),
("Cuauhtémoc"),
("Apatlaco"),
("Aculco"),
("Agrícola Oriental"),
("Eje Central"),
("Pino Suárez"),
("Río de los Remedios"),
("Potrero"),
("Sevilla"),
("General Anaya"),
("Indios Verdes"),
("La Villa - Basílica"),
("Parque de los Venados"),
("Juanacatlán"),
("Nativitas"),
("Misterios"),
("Barranca del Muerto"),
("Miguel Ángel de Quevedo"),
("Lagunilla"),
("Olivos"),
("Tepalcates"),
("Zócalo"),
("Gómez Farías"),
("San Pedro de Los Pinos"),
("Refinería"),
("Villa de Cortés"),
("R. Flores Magón"),
("Insurgentes Sur"),
("Viveros"),
("Cerro de la Estrella"),
("Bondojito"),
("Canal de San Juan"),
("San Antonio Abad"),
("Obrera"),
("Plaza Aragón"),
("Panteones"),
("Peñón Viejo"),
("División del Norte"),
("Cuitláhuac"),
("Ciudad Deportiva"),
("Cuatro Caminos"),
("Isabel la Católica"),
("Nezahualcóyotl"),
("Merced");

SELECT * FROM stations_delete;

-- Se inserta los puntos geograficos de cada estación del metro
INSERT INTO `locations` (station_id, location) VALUES
(1, POINT(-99.14433718, 19.40702104)),
(2, POINT(-99.173702, 19.49039233)),
(3, POINT(-99.07262564, 19.4146103)),
(4, POINT(-99.18803573, 19.45913691)),
(5, POINT(-99.10554171, 19.48231101)),
(6, POINT(-99.12120581, 19.40425847)),
(7, POINT(-99.06114578, 19.4613523)),
(8, POINT(-99.19593215, 19.49448847)),
(9, POINT(-99.03568625, 19.51470467)),
(10, POINT(-99.17122364, 19.44864628)),
(11, POINT(-99.17658806, 19.42025648)),
(12, POINT(-99.08486724, 19.32025578)),
(13, POINT(-99.063367, 19.345135)),
(14, POINT(-99.17657733, 19.33597857)),
(15, POINT(-99.10779476, 19.47415847)),
(16, POINT(-99.08820391, 19.43380448)),
(17, POINT(-99.12323356, 19.44256606)),
(18, POINT(-99.17099833, 19.37192372)),
(19, POINT(-99.15724397, 19.38628539)),
(20, POINT(-99.096696, 19.322002)),
(21, POINT(-99.1430819, 19.45520174)),
(22, POINT(-99.10157204, 19.35570839)),
(23, POINT(-99.09606814, 19.41958866)),
(24, POINT(-99.1683054, 19.40575613)),
(25, POINT(-99.02711391, 19.53444312)),
(26, POINT(-99.15023804, 19.41946724)),
(27, POINT(-99.17546153, 19.45261196)),
(28, POINT(-99.19160843, 19.44553033)),
(29, POINT(-99.17407751, 19.32433595)),
(30, POINT(-99.14455175, 19.48983606)),
(31, POINT(-99.10931826, 19.36449442)),
(32, POINT(-99.112086, 19.388092)),
(33, POINT(-99.14771676, 19.43336942)),
(34, POINT(-99.13542151, 19.40891333)),
(35, POINT(-99.18621182, 19.49067553)),
(36, POINT(-99.06927824, 19.45807473)),
(37, POINT(-99.023829, 19.294555)),
(38, POINT(-99.12203193, 19.41014786)),
(39, POINT(-99.08683062, 19.44572255)),
(40, POINT(-99.09341812, 19.35760127)),
(41, POINT(-99.11285877, 19.40820499)),
(42, POINT(-99.15531278, 19.40749665)),
(43, POINT(-99.14912224, 19.42729875)),
(44, POINT(-99.14207339, 19.42720768)),
(45, POINT(-99.16325212, 19.42359552)),
(46, POINT(-99.03579354, 19.38459525)),
(47, POINT(-99.11933, 19.438426)),
(48, POINT(-99.109803, 19.426271)),
(49, POINT(-99.1671896, 19.44424548)),
(50, POINT(-99.1645503, 19.37073951)),
(51, POINT(-99.08322573, 19.41179726)),
(52, POINT(-99.136176, 19.468965)),
(53, POINT(-99.19138312, 19.41129131)),
(54, POINT(-99.04171586, 19.50096117)),
(55, POINT(-99.09420133, 19.44048194)),
(56, POINT(-99.16094542, 19.44185787)),
(57, POINT(-99.14130092, 19.36976784)),
(58, POINT(-99.08233523, 19.40697045)),
(59, POINT(-98.995894, 19.359804)),
(60, POINT(-99.14105415, 19.34400644)),
(61, POINT(-99.13758874, 19.3950293)),
(62, POINT(-99.11589503, 19.44866652)),
(63, POINT(-99.15289879, 19.44615757)),
(64, POINT(-99.10281658, 19.42288725)),
(65, POINT(-99.14263129, 19.36186271)),
(66, POINT(-99.09598231, 19.45101356)),
(67, POINT(-99.12576556, 19.48358544)),
(68, POINT(-99.19173717, 19.42530549)),
(69, POINT(-99.10894275, 19.33887391)),
(70, POINT(-99.20029879, 19.5039547)),
(71, POINT(-99.14501309, 19.44475133)),
(72, POINT(-99.1531992, 19.41369961)),
(73, POINT(-99.12033677, 19.42149092)),
(74, POINT(-99.1784656, 19.40559422)),
(75, POINT(-99.200669, 19.397486)),
(76, POINT(-98.96061659, 19.35048513)),
(77, POINT(-99.11988616, 19.45868169)),
(78, POINT(-99.065867, 19.306124)),
(79, POINT(-99.11890984, 19.42917056)),
(80, POINT(-99.194511, 19.489367)),
(81, POINT(-99.125973, 19.406106)),
(82, POINT(-99.03298259, 19.52084286)),
(83, POINT(-99.12191391, 19.35744944)),
(84, POINT(-99.148806, 19.499964)),
(85, POINT(-99.074719, 19.317492)),
(86, POINT(-99.114463, 19.431822)),
(87, POINT(-99.18661952, 19.38481791)),
(88, POINT(-99.03402328, 19.29639028)),
(89, POINT(-99.01443243, 19.28680057)),
(90, POINT(-99.14681554, 19.43674867)),
(91, POINT(-99.15617108, 19.39604129)),
(92, POINT(-99.07917023, 19.45077077)),
(93, POINT(-99.048743, 19.484987)),
(94, POINT(-99.11388874, 19.45682033)),
(95, POINT(-99.18894768, 19.47873042)),
(96, POINT(-99.13670897, 19.43547387)),
(97, POINT(-99.14116144, 19.43098165)),
(98, POINT(-99.13663387, 19.40074699)),
(99, POINT(-99.15479779, 19.49031142)),
(100, POINT(-99.14335012, 19.42049932)),
(101, POINT(-98.97670984, 19.35877546)),
(102, POINT(-99.14061427, 19.43649573)),
(103, POINT(-99.140471, 19.478595)),
(104, POINT(-99.00597811, 19.3642515)),
(105, POINT(-99.15389657, 19.43880248)),
(106, POINT(-99.19079304, 19.43337954)),
(107, POINT(-99.10259128, 19.3272315)),
(108, POINT(-99.139954, 19.443376)),
(109, POINT(-99.10544515, 19.45112485)),
(110, POINT(-99.113413, 19.39769)),
(111, POINT(-99.17056918, 19.36142746)),
(112, POINT(-99.16249037, 19.48823803)),
(113, POINT(-99.13434863, 19.4875806)),
(114, POINT(-99.18664098, 19.40223457)),
(115, POINT(-99.18774605, 19.37625563)),
(116, POINT(-99.087095, 19.423251)),
(117, POINT(-99.04621124, 19.29939771)),
(118, POINT(-99.074808, 19.350327)),
(119, POINT(-99.10283804, 19.40811392)),
(120, POINT(-99.15455103, 19.42565962)),
(121, POINT(-99.10934, 19.378298)),
(122, POINT(-99.10739779, 19.37292574)),
(123, POINT(-99.06982541, 19.40404596)),
(124, POINT(-99.15133238, 19.36118453)),
(125, POINT(-99.13303971, 19.42543703)),
(126, POINT(-99.04635072, 19.49024062)),
(127, POINT(-99.131748, 19.476413)),
(128, POINT(-99.17074084, 19.42189565)),
(129, POINT(-99.14478779, 19.35319801)),
(130, POINT(-99.119141, 19.495315)),
(131, POINT(-99.11815882, 19.4814715)),
(132, POINT(-99.15766239, 19.37046623)),
(133, POINT(-99.18207049, 19.41290022)),
(134, POINT(-99.13987398, 19.37938304)),
(135, POINT(-99.13051844, 19.46290002)),
(136, POINT(-99.18895841, 19.3614882)),
(137, POINT(-99.18053627, 19.34651696)),
(138, POINT(-99.13107634, 19.44300109)),
(139, POINT(-99.05831337, 19.30328601)),
(140, POINT(-99.04651165, 19.39072824)),
(141, POINT(-99.131879, 19.432602)),
(142, POINT(-99.09070373, 19.41608763)),
(143, POINT(-99.18572903, 19.39122414)),
(144, POINT(-99.18985963, 19.46911098)),
(145, POINT(-99.13862944, 19.38746949)),
(146, POINT(-99.10342813, 19.43628327)),
(147, POINT(-99.17859435, 19.37360387)),
(148, POINT(-99.17542934, 19.35376487)),
(149, POINT(-99.085872, 19.355601)),
(150, POINT(-99.1117537, 19.46450842)),
(151, POINT(-99.05969739, 19.39821706)),
(152, POINT(-99.13429499, 19.4159055)),
(153, POINT(-99.14392948, 19.41301153)),
(154, POINT(-99.02979612, 19.52822456)),
(155, POINT(-99.20294, 19.458219)),
(156, POINT(-99.0172863, 19.37291562)),
(157, POINT(-99.15950775, 19.3789276)),
(158, POINT(-99.181555, 19.45668)),
(159, POINT(-99.09135818, 19.40811392)),
(160, POINT(-99.214643, 19.458454)),
(161, POINT(-99.13782477, 19.4260947)),
(162, POINT(-99.054375, 19.472534)),
(163, POINT(-99.12541151, 19.42546738));

SELECT station_id, ST_AsText(location) AS location FROM locations;


SELECT VERSION();
SHOW TABLE STATUS WHERE NAME = 'locations';




