UPDATE `creature_template` SET
        `speed_walk` = 1.5,
        `speed_run` = 2,
        `unit_flags` = 642,
        `VehicleId` = 316,
        `AIName` = 'SmartAI',
        `InhabitType` = 3
WHERE `entry` = 30468;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 30468 AND `source_type` = 0;
INSERT INTO `smart_scripts`
(`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`,
`event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`,
`action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`,
`target_z`, `target_o`, `comment`) VALUES
(30468, 0, 0, 0, 27, 0, 100, 0, 0, 0, 0, 0, 53, 0, 30468, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'go wp'),
(30468, 0, 1, 2, 58, 0, 100, 0, 207, 0, 0, 0, 33, 29563, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 'kill credit'),
(30468, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 5, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'kill vehicle');

DELETE FROM `waypoints` WHERE `entry` = 30468;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(30468, 1, 7337.14, -2054.78, 764.382, 'Harnessed Icemaw Matriarch'),
(30468, 2, 7335.89, -2051.51, 763.946, 'Harnessed Icemaw Matriarch'),
(30468, 3, 7333.39, -2044.97, 763.029, 'Harnessed Icemaw Matriarch'),
(30468, 4, 7330.89, -2038.44, 762.559, 'Harnessed Icemaw Matriarch'),
(30468, 5, 7326.19, -2030.78, 762.717, 'Harnessed Icemaw Matriarch'),
(30468, 6, 7323.47, -2028.59, 762.794, 'Harnessed Icemaw Matriarch'),
(30468, 7, 7317.92, -2024.33, 763.27, 'Harnessed Icemaw Matriarch'),
(30468, 8, 7312.25, -2020.22, 763.557, 'Harnessed Icemaw Matriarch'),
(30468, 9, 7306.59, -2016.11, 764.252, 'Harnessed Icemaw Matriarch'),
(30468, 10, 7300.97, -2011.94, 765.13, 'Harnessed Icemaw Matriarch'),
(30468, 11, 7295.46, -2007.62, 765.596, 'Harnessed Icemaw Matriarch'),
(30468, 12, 7292.72, -2005.44, 766.129, 'Harnessed Icemaw Matriarch'),
(30468, 13, 7290.94, -2003.98, 765.845, 'Harnessed Icemaw Matriarch'),
(30468, 14, 7286.12, -1998.92, 765.922, 'Harnessed Icemaw Matriarch'),
(30468, 15, 7283.55, -1995.29, 766.014, 'Harnessed Icemaw Matriarch'),
(30468, 16, 7281.38, -1989.52, 767.073, 'Harnessed Icemaw Matriarch'),
(30468, 17, 7279.36, -1983.37, 767.581, 'Harnessed Icemaw Matriarch'),
(30468, 18, 7275.56, -1979.06, 767.981, 'Harnessed Icemaw Matriarch'),
(30468, 19, 7272.72, -1977.01, 768.397, 'Harnessed Icemaw Matriarch'),
(30468, 20, 7266.85, -1973.22, 769.363, 'Harnessed Icemaw Matriarch'),
(30468, 21, 7260.81, -1969.68, 769.35, 'Harnessed Icemaw Matriarch'),
(30468, 22, 7256.02, -1967.62, 769.194, 'Harnessed Icemaw Matriarch'),
(30468, 23, 7250.94, -1966.89, 769.26, 'Harnessed Icemaw Matriarch'),
(30468, 24, 7248.01, -1968.03, 769.25, 'Harnessed Icemaw Matriarch'),
(30468, 25, 7242.2, -1971.93, 768.649, 'Harnessed Icemaw Matriarch'),
(30468, 26, 7236.01, -1975.19, 766.781, 'Harnessed Icemaw Matriarch'),
(30468, 27, 7229.58, -1977.94, 766.356, 'Harnessed Icemaw Matriarch'),
(30468, 28, 7226.34, -1979.28, 766.572, 'Harnessed Icemaw Matriarch'),
(30468, 29, 7219.71, -1982.87, 766.696, 'Harnessed Icemaw Matriarch'),
(30468, 30, 7215.58, -1987.56, 766.941, 'Harnessed Icemaw Matriarch'),
(30468, 31, 7213.67, -1990.49, 767.249, 'Harnessed Icemaw Matriarch'),
(30468, 32, 7210.53, -1996.74, 767.663, 'Harnessed Icemaw Matriarch'),
(30468, 33, 7207.8, -2003.19, 767.19, 'Harnessed Icemaw Matriarch'),
(30468, 34, 7206.44, -2006.41, 766.72, 'Harnessed Icemaw Matriarch'),
(30468, 35, 7203.71, -2012.86, 765.905, 'Harnessed Icemaw Matriarch'),
(30468, 36, 7201.14, -2019.36, 765.603, 'Harnessed Icemaw Matriarch'),
(30468, 37, 7198.29, -2025.74, 765.288, 'Harnessed Icemaw Matriarch'),
(30468, 38, 7194.38, -2030.46, 765.23, 'Harnessed Icemaw Matriarch'),
(30468, 39, 7192.01, -2033.03, 765.305, 'Harnessed Icemaw Matriarch'),
(30468, 40, 7187.66, -2038.5, 765.435, 'Harnessed Icemaw Matriarch'),
(30468, 41, 7185.57, -2043.61, 766.334, 'Harnessed Icemaw Matriarch'),
(30468, 42, 7185.18, -2047.09, 766.802, 'Harnessed Icemaw Matriarch'),
(30468, 43, 7184.97, -2051.69, 767.49, 'Harnessed Icemaw Matriarch'),
(30468, 44, 7186.52, -2056.9, 767.082, 'Harnessed Icemaw Matriarch'),
(30468, 45, 7187.98, -2060.08, 766.849, 'Harnessed Icemaw Matriarch'),
(30468, 46, 7189.51, -2063.23, 766.534, 'Harnessed Icemaw Matriarch'),
(30468, 47, 7191.91, -2068.51, 766.527, 'Harnessed Icemaw Matriarch'),
(30468, 48, 7192.22, -2073.65, 766.203, 'Harnessed Icemaw Matriarch'),
(30468, 49, 7192.29, -2077.14, 766.096, 'Harnessed Icemaw Matriarch'),
(30468, 50, 7192.42, -2080.64, 765.964, 'Harnessed Icemaw Matriarch'),
(30468, 51, 7193.57, -2087.39, 765.272, 'Harnessed Icemaw Matriarch'),
(30468, 52, 7194.28, -2090.81, 764.925, 'Harnessed Icemaw Matriarch'),
(30468, 53, 7195.42, -2097.71, 764.914, 'Harnessed Icemaw Matriarch'),
(30468, 54, 7195.81, -2101.19, 765.192, 'Harnessed Icemaw Matriarch'),
(30468, 55, 7195.63, -2107.87, 766.222, 'Harnessed Icemaw Matriarch'),
(30468, 56, 7193.1, -2111.18, 765.8, 'Harnessed Icemaw Matriarch'),
(30468, 57, 7190.32, -2113.31, 764.76, 'Harnessed Icemaw Matriarch'),
(30468, 58, 7187.51, -2115.39, 763.714, 'Harnessed Icemaw Matriarch'),
(30468, 59, 7181.79, -2119.42, 763.108, 'Harnessed Icemaw Matriarch'),
(30468, 60, 7178.93, -2121.44, 762.966, 'Harnessed Icemaw Matriarch'),
(30468, 61, 7176.04, -2123.42, 762.994, 'Harnessed Icemaw Matriarch'),
(30468, 62, 7170.05, -2127.04, 762.665, 'Harnessed Icemaw Matriarch'),
(30468, 63, 7167.01, -2128.76, 761.902, 'Harnessed Icemaw Matriarch'),
(30468, 64, 7160.8, -2131.98, 762.257, 'Harnessed Icemaw Matriarch'),
(30468, 65, 7157.54, -2133.24, 762.305, 'Harnessed Icemaw Matriarch'),
(30468, 66, 7154.32, -2134.12, 762.095, 'Harnessed Icemaw Matriarch'),
(30468, 67, 7149.59, -2134.5, 761.473, 'Harnessed Icemaw Matriarch'),
(30468, 68, 7143.49, -2134.96, 761.444, 'Harnessed Icemaw Matriarch'),
(30468, 69, 7140, -2135.11, 761.47, 'Harnessed Icemaw Matriarch'),
(30468, 70, 7137.65, -2134.58, 761.338, 'Harnessed Icemaw Matriarch'),
(30468, 71, 7133.73, -2131.97, 761.029, 'Harnessed Icemaw Matriarch'),
(30468, 72, 7128.48, -2127.33, 760.578, 'Harnessed Icemaw Matriarch'),
(30468, 73, 7125.89, -2124.98, 760.332, 'Harnessed Icemaw Matriarch'),
(30468, 74, 7123.39, -2122.54, 760.148, 'Harnessed Icemaw Matriarch'),
(30468, 75, 7118.42, -2117.61, 760.087, 'Harnessed Icemaw Matriarch'),
(30468, 76, 7116.18, -2115.26, 760.205, 'Harnessed Icemaw Matriarch'),
(30468, 77, 7113.05, -2110.46, 760.657, 'Harnessed Icemaw Matriarch'),
(30468, 78, 7111.18, -2105.89, 761.056, 'Harnessed Icemaw Matriarch'),
(30468, 79, 7110.33, -2102.5, 761.279, 'Harnessed Icemaw Matriarch'),
(30468, 80, 7108.65, -2095.7, 761.564, 'Harnessed Icemaw Matriarch'),
(30468, 81, 7107.8, -2092.31, 761.795, 'Harnessed Icemaw Matriarch'),
(30468, 82, 7106.07, -2085.53, 762.512, 'Harnessed Icemaw Matriarch'),
(30468, 83, 7104.22, -2078.78, 763.278, 'Harnessed Icemaw Matriarch'),
(30468, 84, 7103.26, -2075.41, 763.554, 'Harnessed Icemaw Matriarch'),
(30468, 85, 7101.3, -2068.69, 763.815, 'Harnessed Icemaw Matriarch'),
(30468, 86, 7100.33, -2065.34, 763.862, 'Harnessed Icemaw Matriarch'),
(30468, 87, 7098.37, -2058.63, 764.194, 'Harnessed Icemaw Matriarch'),
(30468, 88, 7096.41, -2051.91, 765.177, 'Harnessed Icemaw Matriarch'),
(30468, 89, 7095.44, -2048.54, 765.641, 'Harnessed Icemaw Matriarch'),
(30468, 90, 7094.46, -2045.18, 765.986, 'Harnessed Icemaw Matriarch'),
(30468, 91, 7092.5, -2038.46, 766.13, 'Harnessed Icemaw Matriarch'),
(30468, 92, 7091.52, -2035.1, 765.93, 'Harnessed Icemaw Matriarch'),
(30468, 93, 7089.57, -2028.39, 765.851, 'Harnessed Icemaw Matriarch'),
(30468, 94, 7088.59, -2025.03, 766.084, 'Harnessed Icemaw Matriarch'),
(30468, 95, 7086.63, -2018.31, 766.273, 'Harnessed Icemaw Matriarch'),
(30468, 96, 7085.66, -2014.96, 766.438, 'Harnessed Icemaw Matriarch'),
(30468, 97, 7083.7, -2008.24, 767, 'Harnessed Icemaw Matriarch'),
(30468, 98, 7082.72, -2004.88, 766.942, 'Harnessed Icemaw Matriarch'),
(30468, 99, 7080.77, -1998.16, 767.038, 'Harnessed Icemaw Matriarch'),
(30468, 100, 7079.79, -1994.8, 767.597, 'Harnessed Icemaw Matriarch'),
(30468, 101, 7077.83, -1988.08, 767.339, 'Harnessed Icemaw Matriarch'),
(30468, 102, 7075.88, -1981.36, 767.824, 'Harnessed Icemaw Matriarch'),
(30468, 103, 7074.93, -1977.99, 767.89, 'Harnessed Icemaw Matriarch'),
(30468, 104, 7073.24, -1971.2, 767.984, 'Harnessed Icemaw Matriarch'),
(30468, 105, 7072.39, -1967.8, 767.855, 'Harnessed Icemaw Matriarch'),
(30468, 106, 7071.55, -1964.41, 768.041, 'Harnessed Icemaw Matriarch'),
(30468, 107, 7069.87, -1957.61, 769.225, 'Harnessed Icemaw Matriarch'),
(30468, 108, 7069.06, -1954.21, 770.109, 'Harnessed Icemaw Matriarch'),
(30468, 109, 7067.53, -1947.38, 771.885, 'Harnessed Icemaw Matriarch'),
(30468, 110, 7066.86, -1943.94, 772.962, 'Harnessed Icemaw Matriarch'),
(30468, 111, 7066.34, -1940.48, 773.733, 'Harnessed Icemaw Matriarch'),
(30468, 112, 7065.68, -1933.51, 775.45, 'Harnessed Icemaw Matriarch'),
(30468, 113, 7065.47, -1930.02, 776.677, 'Harnessed Icemaw Matriarch'),
(30468, 114, 7065.29, -1926.52, 777.956, 'Harnessed Icemaw Matriarch'),
(30468, 115, 7065.43, -1919.81, 780.593, 'Harnessed Icemaw Matriarch'),
(30468, 116, 7066.23, -1916.52, 782.077, 'Harnessed Icemaw Matriarch'),
(30468, 117, 7068.42, -1912.68, 783.633, 'Harnessed Icemaw Matriarch'),
(30468, 118, 7069.39, -1911.56, 784.002, 'Harnessed Icemaw Matriarch'),
(30468, 119, 7074.42, -1906.69, 785.437, 'Harnessed Icemaw Matriarch'),
(30468, 120, 7079.74, -1902.15, 786.477, 'Harnessed Icemaw Matriarch'),
(30468, 121, 7082.37, -1899.85, 786.806, 'Harnessed Icemaw Matriarch'),
(30468, 122, 7086.76, -1895.26, 787.185, 'Harnessed Icemaw Matriarch'),
(30468, 123, 7088.73, -1892.08, 787.408, 'Harnessed Icemaw Matriarch'),
(30468, 124, 7089.72, -1888.41, 787.648, 'Harnessed Icemaw Matriarch'),
(30468, 125, 7088.46, -1883.73, 788.563, 'Harnessed Icemaw Matriarch'),
(30468, 126, 7085.32, -1881.39, 789.656, 'Harnessed Icemaw Matriarch'),
(30468, 127, 7080.7, -1880.01, 790.801, 'Harnessed Icemaw Matriarch'),
(30468, 128, 7077.21, -1879.71, 791.305, 'Harnessed Icemaw Matriarch'),
(30468, 129, 7073.71, -1879.58, 791.676, 'Harnessed Icemaw Matriarch'),
(30468, 130, 7066.72, -1879.39, 792.684, 'Harnessed Icemaw Matriarch'),
(30468, 131, 7063.22, -1879.44, 793.33, 'Harnessed Icemaw Matriarch'),
(30468, 132, 7056.28, -1880.24, 794.925, 'Harnessed Icemaw Matriarch'),
(30468, 133, 7052.83, -1880.83, 795.707, 'Harnessed Icemaw Matriarch'),
(30468, 134, 7045.93, -1882.01, 796.99, 'Harnessed Icemaw Matriarch'),
(30468, 135, 7040.46, -1882.68, 797.799, 'Harnessed Icemaw Matriarch'),
(30468, 136, 7037, -1882.02, 798.737, 'Harnessed Icemaw Matriarch'),
(30468, 137, 7033.08, -1879.54, 800.162, 'Harnessed Icemaw Matriarch'),
(30468, 138, 7029.47, -1875.54, 801.964, 'Harnessed Icemaw Matriarch'),
(30468, 139, 7028.23, -1872.95, 803.147, 'Harnessed Icemaw Matriarch'),
(30468, 140, 7027.23, -1869.59, 804.728, 'Harnessed Icemaw Matriarch'),
(30468, 141, 7026.29, -1866.22, 806.73, 'Harnessed Icemaw Matriarch'),
(30468, 142, 7024.45, -1859.47, 811.008, 'Harnessed Icemaw Matriarch'),
(30468, 143, 7023.65, -1856.06, 813.076, 'Harnessed Icemaw Matriarch'),
(30468, 144, 7021.97, -1849.27, 816.805, 'Harnessed Icemaw Matriarch'),
(30468, 145, 7019.86, -1842.6, 819.333, 'Harnessed Icemaw Matriarch'),
(30468, 146, 7018.8, -1839.26, 820.114, 'Harnessed Icemaw Matriarch'),
(30468, 147, 7017.79, -1835.91, 820.554, 'Harnessed Icemaw Matriarch'),
(30468, 148, 7015.83, -1829.19, 820.614, 'Harnessed Icemaw Matriarch'),
(30468, 149, 7014.86, -1825.83, 820.614, 'Harnessed Icemaw Matriarch'),
(30468, 150, 7013.13, -1819.05, 820.615, 'Harnessed Icemaw Matriarch'),
(30468, 151, 7012.41, -1815.62, 820.615, 'Harnessed Icemaw Matriarch'),
(30468, 152, 7011.37, -1808.7, 820.615, 'Harnessed Icemaw Matriarch'),
(30468, 153, 7010.72, -1801.73, 820.615, 'Harnessed Icemaw Matriarch'),
(30468, 154, 7010.22, -1794.75, 820.656, 'Harnessed Icemaw Matriarch'),
(30468, 155, 7009.88, -1790.02, 820.719, 'Harnessed Icemaw Matriarch'),
(30468, 156, 7009.88, -1790.02, 820.719, 'Harnessed Icemaw Matriarch'),
(30468, 157, 7009.85, -1783.02, 820.557, 'Harnessed Icemaw Matriarch'),
(30468, 158, 7009.82, -1776.02, 819.623, 'Harnessed Icemaw Matriarch'),
(30468, 159, 7009.82, -1772.52, 819.49, 'Harnessed Icemaw Matriarch'),
(30468, 160, 7010.3, -1765.54, 819.467, 'Harnessed Icemaw Matriarch'),
(30468, 161, 7011.01, -1758.58, 819.257, 'Harnessed Icemaw Matriarch'),
(30468, 162, 7011.36, -1755.1, 819.304, 'Harnessed Icemaw Matriarch'),
(30468, 163, 7012.07, -1748.13, 819.611, 'Harnessed Icemaw Matriarch'),
(30468, 164, 7012.62, -1741.16, 819.971, 'Harnessed Icemaw Matriarch'),
(30468, 165, 7012.47, -1734.16, 819.906, 'Harnessed Icemaw Matriarch'),
(30468, 166, 7011.67, -1729.02, 819.979, 'Harnessed Icemaw Matriarch'),
(30468, 167, 7009.15, -1722.58, 819.83, 'Harnessed Icemaw Matriarch'),
(30468, 168, 7004.85, -1718.12, 819.839, 'Harnessed Icemaw Matriarch'),
(30468, 169, 6999.35, -1717.28, 819.837, 'Harnessed Icemaw Matriarch'),
(30468, 170, 6995.87, -1717.64, 820.019, 'Harnessed Icemaw Matriarch'),
(30468, 171, 6988.98, -1718.88, 820.302, 'Harnessed Icemaw Matriarch'),
(30468, 172, 6982.2, -1720.57, 820.597, 'Harnessed Icemaw Matriarch'),
(30468, 173, 6978.83, -1721.54, 820.63, 'Harnessed Icemaw Matriarch'),
(30468, 174, 6972.05, -1723.27, 820.577, 'Harnessed Icemaw Matriarch'),
(30468, 175, 6965.5, -1724.22, 820.579, 'Harnessed Icemaw Matriarch'),
(30468, 176, 6962, -1724.33, 820.58, 'Harnessed Icemaw Matriarch'),
(30468, 177, 6955.01, -1723.97, 820.571, 'Harnessed Icemaw Matriarch'),
(30468, 178, 6949.01, -1723.23, 820.549, 'Harnessed Icemaw Matriarch'),
(30468, 179, 6945.61, -1722.4, 820.542, 'Harnessed Icemaw Matriarch'),
(30468, 180, 6938.95, -1720.23, 820.545, 'Harnessed Icemaw Matriarch'),
(30468, 181, 6935.71, -1718.92, 820.559, 'Harnessed Icemaw Matriarch'),
(30468, 182, 6929.52, -1715.67, 820.614, 'Harnessed Icemaw Matriarch'),
(30468, 183, 6923.63, -1711.88, 820.663, 'Harnessed Icemaw Matriarch'),
(30468, 184, 6920.76, -1709.88, 820.645, 'Harnessed Icemaw Matriarch'),
(30468, 185, 6915.03, -1705.86, 820.596, 'Harnessed Icemaw Matriarch'),
(30468, 186, 6909.36, -1701.76, 820.586, 'Harnessed Icemaw Matriarch'),
(30468, 187, 6903.95, -1697.32, 820.585, 'Harnessed Icemaw Matriarch'),
(30468, 188, 6896.07, -1690.38, 820.462, 'Harnessed Icemaw Matriarch'),
(30468, 189, 6888.19, -1683.44, 820.179, 'Harnessed Icemaw Matriarch'),
(30468, 190, 6885.11, -1680.73, 820.086, 'Harnessed Icemaw Matriarch'),
(30468, 191, 6878.14, -1680.17, 819.906, 'Harnessed Icemaw Matriarch'),
(30468, 192, 6874.08, -1680.35, 819.809, 'Harnessed Icemaw Matriarch'),
(30468, 193, 6870.13, -1682.35, 819.63, 'Harnessed Icemaw Matriarch'),
(30468, 194, 6867.13, -1684.16, 819.811, 'Harnessed Icemaw Matriarch'),
(30468, 195, 6864.15, -1685.99, 819.903, 'Harnessed Icemaw Matriarch'),
(30468, 196, 6861.17, -1687.83, 819.944, 'Harnessed Icemaw Matriarch'),
(30468, 197, 6855.03, -1691.19, 819.937, 'Harnessed Icemaw Matriarch'),
(30468, 198, 6851.96, -1692.85, 819.968, 'Harnessed Icemaw Matriarch'),
(30468, 199, 6848.88, -1694.51, 819.944, 'Harnessed Icemaw Matriarch'),
(30468, 200, 6842.48, -1697.35, 820.012, 'Harnessed Icemaw Matriarch'),
(30468, 201, 6839.17, -1698.48, 820.123, 'Harnessed Icemaw Matriarch'),
(30468, 202, 6832.49, -1700.56, 820.635, 'Harnessed Icemaw Matriarch'),
(30468, 203, 6829.13, -1701.56, 820.578, 'Harnessed Icemaw Matriarch'),
(30468, 204, 6825.76, -1702.48, 820.539, 'Harnessed Icemaw Matriarch'),
(30468, 205, 6819.77, -1703.18, 820.581, 'Harnessed Icemaw Matriarch'),
(30468, 206, 6816.31, -1702.62, 820.601, 'Harnessed Icemaw Matriarch'),
(30468, 207, 6811.09, -1701.53, 820.613, 'Harnessed Icemaw Matriarch');