Tables for Darby - V1 - 10/14/2025
==================================

There are 3 csv files:

MIRION_spec_1      
MIRION_meta_all_1
MIRION_meta_din_1


MIRION_spec_1
=============

There is 1 header row and 10 rows for the different wavelengths (bands).
There are 3946 columns. The first column contains the wavelengths. This is followed
by 3945 columns each corresponding to a YB.

Row	
1	Column Headings (WAVE for Column 1, YB number for Columns 2 - 3946)
2	MIRION Catalog 8 micron photometry 
3	MIRION Catalog 12 micron photometry 
4	MIRION Catalog 24 micron photometry 
5	MIRION Catalog 70 micron photometry 
6	CSC360 Catalog 160 micron photometry (used F160_ADD if F160 = 0)
7	CSC360 Catalog 250 micron photometry 
8	CSC360 Catalog 350 micron photometry (used scaled F350 values)
9	CSC360 Catalog 500 micron photometry (used scaled F350 values)
10	CSC360 Catalog 870 micron photometry
11	CSC360 Catalog 1100 micron photometry


MIRION_meta_all_1
=================

There are 3946 rows: 1 header row and 3945 rows each corresponding to a YB.

There are 9 columns: column 1 is the YB ID number followed by 9 columns corresponding to different
physical properties.

Column
1	YB ID number
2	Diameter
3	Mass
4	Bolometric Luminosity
5	Luminosity/Mass ratio
6 	Graybody fit temperature
7	Luminosity ratio
8	Bolometric temperature
9	Surface density

MIRION_meta_din_1
=================

There are 3946 rows: 1 header row and 3945 rows each corresponding to a YB.

There are 6 columns; column 1 is the YB ID number followed by 5 columns corresponding to different
distant-independent physical properties.

Column
1	YB ID number
2	Luminosity/Mass ratio
3	Graybody fit temperature
4	Luminosity ratio
5	Bolometric temperature
6	Surface density

