//Maya ASCII 2012 scene
//Name: betterfish.ma
//Last modified: Thu, Jul 18, 2013 04:05:06 PM
//Codeset: 1252
requires maya "2012";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "001200000000-796618";
fileInfo "osv" "Microsoft Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 25.268976712991773 20.178348186303573 -6.209695399658492 ;
	setAttr ".r" -type "double3" -41.999999999947214 99.999999999973781 -2.5444437451708134e-014 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-016 -8.8817841970012523e-016 ;
	setAttr ".rpt" -type "double3" -8.823868021085767e-016 -1.4483289854331055e-018 
		8.9153043196930806e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 34.256177236094118;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.062206948470835854 0.82111288251721781 0.62087883887782735 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 51.760626577494932;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.084967995357281723 1.5118425005897276 0.46082034049526044 ;
	setAttr ".sp" -type "double3" 0.084967995357281723 1.5118425005897276 0.46082034049526044 ;
createNode mesh -n "fish" -p "pCube1";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.092209011316299438 0.60948031381624324 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "fishOrig" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 108 ".uvst[0].uvsp[0:107]" -type "float2" 0.14850268 0.32171187
		 0.14850268 0.32171187 0.10103403 0.43027869 0.10103403 0.43027869 0.081068344 0.51860702
		 0.081068344 0.51860702 0.092209011 0.60948032 0.092209011 0.60948032 0.24688083 0.56145608
		 0.24418364 0.56145608 0.12306194 0.70549929 0.12306194 0.70549929 0.21589042 0.69342506
		 0.21589042 0.69342506 0.29734004 0.69426918 0.29734004 0.69426918 0.42685279 0.77365172
		 0.42685279 0.77365172 0.80629849 0.58421373 0.80629849 0.58421373 0.84579623 0.51860702
		 0.84579623 0.51860702 0.87268054 0.46014217 0.87268054 0.46014217 0.85877776 0.42307645
		 0.85877776 0.42307645 0.59661448 0.28110552 0.59661448 0.28110552 0.45666805 0.28094974
		 0.45666805 0.28094974 0.53920913 0.30220878 0.53920913 0.30220878 0.42685279 0.31927747
		 0.42685279 0.31927747 0.31449646 0.34447047 0.31449646 0.34447047 0.24726368 0.32926035
		 0.24726368 0.32926035 0.22318883 0.33400294 0.22318883 0.33400294 0.25572237 0.42253876
		 0.25572237 0.42833596 0.53920913 0.43027869 0.42685279 0.43027869 0.31449646 0.44236892
		 0.20214009 0.43828848 0.76392174 0.43027869 0.76392174 0.51860702 0.65156543 0.43027869
		 0.65156543 0.51860702 0.53920913 0.51860702 0.42685279 0.51860702 0.31449646 0.51860702
		 0.20214009 0.51860702 0.76392174 0.60693544 0.65156543 0.60693544 0.53920913 0.60693544
		 0.42685279 0.60693544 0.31449646 0.56716871 0.20282984 0.53306991 0.42685279 0.69526374
		 0.32382533 0.63573176 0.29123527 0.59523815 0.42685279 0.43027869 0.53920913 0.43027869
		 0.31449646 0.44236892 0.20214009 0.43828848 0.76392174 0.43027869 0.76392174 0.51860702
		 0.65156543 0.43027869 0.65156543 0.51860702 0.53920913 0.51860702 0.42685279 0.51860702
		 0.31449646 0.51860702 0.20214009 0.51860702 0.76392174 0.60693544 0.65156543 0.60693544
		 0.53920913 0.60693544 0.42685279 0.60693544 0.31449646 0.56716871 0.20282984 0.53306991
		 0.42685279 0.69526374 0.53920913 0.69526374 0.32382533 0.63573176 0.29123527 0.59523815
		 0.53920913 0.8022418 0.76392174 0.37265775 0.76392174 0.37265775 0.65156543 0.30095929
		 0.66094565 0.19775817 0.66094565 0.19775817 0.68645561 0.30614436 0.68645561 0.30614436
		 0.65156543 0.30095929 0.53920913 0.8022418 0.78820086 0.60786241 0.78820086 0.60786241
		 0.74049258 0.63270634 0.65156543 0.69526374 0.53920913 0.69526374 0.65156543 0.75924242
		 0.74049258 0.63270634 0.65156543 0.69526374 0.74632883 0.64976913 0.68742704 0.69141698
		 0.65156543 0.75924242 0.68742704 0.69141698 0.74632883 0.64976913;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 108 ".vt[0:107]"  -1.071464062 -3.94659257 10.35767365 1.2414 -3.94659257 10.35767365
		 -1.071464062 -1.39773059 11.8397274 1.2414 -1.39773059 11.8397274 -1.071464062 0.54198462 12.34510899
		 1.2414 0.54198462 12.34510899 -1.071464062 2.70229173 11.76955032 1.2414 2.70229173 11.76955032
		 -1.071464062 1.78492153 8.023118019 1.2414 1.78492153 7.94507408 -1.071464062 4.67364025 11.31084538
		 1.2414 4.67364025 11.31084538 -1.071464062 4.38103628 8.58861065 1.2414 4.38103628 8.58861065
		 -1.071464062 4.56427813 5.83392668 1.2414 4.56427813 5.83392668 -1.071464062 6.14283371 2.086378336
		 1.2414 6.14283371 2.086378336 -1.071464062 6.77068138 -1.16473806 1.2414 6.77068138 -1.16473806
		 -1.071464062 5.88130379 -4.41585445 1.2414 5.88130379 -4.41585445 -1.071464062 4.33693743 -5.45353413
		 1.2414 4.33693743 -5.45353413 -1.071464062 3.4223392 -7.15790558 1.2414 3.42233944 -7.15790558
		 -1.071464062 2.5020566 -8.36950684 1.2414 2.5020566 -8.36950684 -1.071464062 1.98272502 -9.074027061
		 1.2414 1.98272502 -9.074027061 -1.071464062 0.54198462 -10.1445837 1.2414 0.54198462 -10.1445837
		 -1.11698616 -0.74192023 -11.10335159 1.19587791 -0.74192023 -11.10335159 -1.071464062 -1.55589318 -10.91808701
		 1.2414 -1.55589318 -10.91808701 -1.071464062 -3.019964457 -7.66697025 1.2414 -3.019964457 -7.66697025
		 -1.071464062 -4.23761749 -4.41585398 1.2414 -4.23761749 -4.41585398 -1.071464062 -4.21017933 -1.16473758
		 1.2414 -4.21017933 -1.16473758 -1.071464062 -4.027503014 2.086378813 1.2414 -4.027503014 2.086378813
		 -1.071464062 -3.5566113 5.33749485 1.2414 -3.5566113 5.33749485 -1.071464062 -1.56770062 7.038165092
		 1.2414 -1.44039226 7.038165092 1.2414 -1.39773059 -7.66697025 1.2414 -1.39773059 -4.41585398
		 1.2414 -1.39773059 -1.16473758 1.2414 -1.39773059 2.086378813 1.2414 -1.1322248 5.33749485
		 1.2414 -1.22183299 8.58861065 1.2414 0.54198462 -7.66697025 1.2414 0.54198462 -4.41585398
		 1.2414 0.54198462 -1.16473758 1.2414 0.54198462 2.086378813 1.2414 0.54198462 5.33749485
		 1.2414 0.54198462 8.58861065 1.2414 2.48169947 -7.66697025 1.2414 2.48169947 -4.41585398
		 1.2414 2.48169947 -1.16473758 1.2414 2.48169947 2.086378813 1.2414 1.60841107 5.33749485
		 1.2414 0.85959458 8.56865311 1.2414 3.04763484 -6.98902702 1.2414 4.4214139 -4.41585398
		 1.2414 4.4214139 -1.16473758 1.2414 4.4214139 2.086378813 1.2414 3.11407495 5.067556381
		 1.2414 2.22482395 6.010574341 -1.071464062 -1.39773059 -7.66697025 -1.071464062 -1.39773059 -4.41585398
		 -1.071464062 -1.39773059 -1.16473758 -1.071464062 -1.39773059 2.086378813 -1.071464062 -1.1322248 5.33749485
		 -1.071464062 -1.22183299 8.58861065 -1.071464062 0.54198462 -7.66697025 -1.071464062 0.54198462 -4.41585398
		 -1.071464062 0.54198462 -1.16473758 -1.071464062 0.54198462 2.086378813 -1.071464062 0.54198462 5.33749485
		 -1.071464062 0.54198462 8.58861065 -1.071464062 2.48169947 -7.66697025 -1.071464062 2.48169947 -4.41585398
		 -1.071464062 2.48169947 -1.16473758 -1.071464062 2.48169947 2.086378813 -1.071464062 1.60841107 5.33749485
		 -1.071464062 0.85959458 8.56865311 -1.071464062 3.04763484 -6.98902702 -1.071464062 4.4214139 -4.41585398
		 -1.071464062 4.4214139 -1.16473758 -1.071464062 4.4214139 2.086378813 -1.071464062 3.11407495 5.067556381
		 -1.071464062 2.22482395 6.010574341 -1.071464062 -3.83572793 6.92121887 1.2414 -3.83572793 6.92121887
		 1.2414 -3.89628625 8.48593903 -1.071464062 -3.89628625 8.48593903 -1.071464062 -4.92067051 -2.82580447
		 1.2414 -4.92067051 -2.82580447 1.2414 -4.97899437 1.22365129 -1.071464062 -4.97899437 1.22365129
		 -1.071464062 -4.12375259 -5.42542839 1.2414 -4.12375259 -5.42542839 1.2414 -6.50394249 -4.68727636
		 -1.071464062 -6.50394249 -4.68727636;
	setAttr -s 222 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 1 4 5 1 16 17 1 28 29 1 30 31 1 32 33 1 34 35 0
		 40 41 0 42 43 1 44 45 0 46 47 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0 16 18 0 26 28 0 28 30 0
		 29 31 0 30 32 0 31 33 0 32 34 0 33 35 0 40 42 0 41 43 0 42 44 0 43 45 0 44 46 1 45 47 1
		 46 0 0 47 1 0 33 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1 53 3 1 31 54 1 54 55 1
		 55 56 1 56 57 1 29 60 1 60 61 1 61 62 1 62 63 1 41 50 1 43 51 1 45 52 1 47 53 1 48 54 1
		 49 55 1 50 56 1 51 57 1 54 60 1 55 61 1 56 62 1 57 63 1 63 69 1 69 17 1 32 72 1 72 73 1
		 73 74 1 74 75 1 75 76 1 76 77 1 77 2 1 30 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1
		 83 4 1 28 84 1 84 85 1 85 86 1 86 87 1 92 93 1 40 74 1 42 75 1 44 76 1 46 77 1 72 78 1
		 73 79 1 74 80 1 75 81 1 76 82 1 77 83 1 78 84 1 79 85 1 80 86 1 81 87 1 86 92 1 87 93 1
		 92 18 1 93 16 1 44 96 0 45 97 0 96 97 0 47 98 0 97 98 0 46 99 0 99 98 0 96 99 0 100 101 0
		 41 102 0 101 102 0 40 103 0 103 102 0 100 103 0 35 37 0 37 48 1 34 36 0 36 72 1 36 38 1
		 38 73 1 38 40 1 38 100 0 104 105 0 105 106 0 106 107 0 39 49 1 38 39 0 39 101 0 39 41 1
		 36 37 0 37 105 0 39 105 0 37 39 1 38 107 0 36 104 0 104 107 0 39 106 0 38 104 0 17 19 0
		 18 19 1 19 21 0 26 27 1 27 29 0 27 66 1 60 66 1 66 67 1 61 67 1 67 68 1 62 68 1 68 69 1
		 21 67 1 19 68 1 84 90 1 85 91 1 26 90 1 22 24 0 24 26 0 90 91 1 20 22 0 22 90 1 91 92 1
		 18 20 0 20 91 1 20 21 1 21 23 0 22 23 1 23 25 0;
	setAttr ".ed[166:221]" 24 25 0 25 27 0 23 66 1 23 67 0 22 91 0 5 7 0 6 7 1
		 57 58 1 52 58 1 58 59 1 53 59 1 63 64 1 58 64 1 5 59 1 69 70 1 64 65 1 59 65 1 64 71 0
		 7 9 0 7 65 1 9 71 1 9 65 0 65 71 1 64 70 1 70 71 1 82 88 1 87 88 1 88 94 1 93 94 1
		 15 70 1 13 71 1 8 9 1 9 11 0 9 13 0 83 89 1 6 89 1 88 89 1 89 95 1 8 89 0 6 8 0 14 16 0
		 14 94 1 94 95 1 12 14 0 12 95 1 8 10 0 10 12 0 8 95 1 14 15 1 15 17 0 13 15 0 12 13 1
		 10 11 0 11 13 0 88 95 0 8 12 0;
	setAttr -s 116 ".fc[0:115]" -type "polyFaces" 
		f 4 0 13 -2 -13
		mu 0 4 0 1 2 3
		f 4 1 15 -3 -15
		mu 0 4 3 2 4 5
		f 4 4 20 -6 -20
		mu 0 4 18 19 20 21
		f 4 5 22 -7 -22
		mu 0 4 21 20 22 23
		f 4 6 24 -8 -24
		mu 0 4 23 22 24 25
		f 4 107 109 -112 -113
		mu 0 4 26 27 28 29
		f 4 8 26 -10 -26
		mu 0 4 30 31 32 33
		f 4 9 28 -11 -28
		mu 0 4 33 32 34 35
		f 4 101 103 -106 -107
		mu 0 4 36 37 38 39
		f 4 11 32 -1 -32
		mu 0 4 40 41 1 0
		f 4 -27 48 36 -50
		mu 0 4 32 31 42 43
		f 4 -29 49 37 -51
		mu 0 4 34 32 43 44
		f 4 -31 50 38 -52
		mu 0 4 41 34 44 45
		f 4 -33 51 39 -14
		mu 0 4 1 41 45 2
		f 4 -34 -23 40 -53
		mu 0 4 46 22 20 47
		f 4 -35 52 41 -54
		mu 0 4 48 46 47 49
		f 4 -36 53 42 -55
		mu 0 4 42 48 49 50
		f 4 -37 54 43 -56
		mu 0 4 43 42 50 51
		f 4 -41 -21 44 -57
		mu 0 4 47 20 19 54
		f 4 -42 56 45 -58
		mu 0 4 49 47 54 55
		f 4 -43 57 46 -59
		mu 0 4 50 49 55 56
		f 4 -44 58 47 -60
		mu 0 4 51 50 56 57
		f 4 25 82 -66 -82
		mu 0 4 30 33 63 64
		f 4 27 83 -67 -83
		mu 0 4 33 35 65 63
		f 4 29 84 -68 -84
		mu 0 4 35 40 66 65
		f 4 31 12 -69 -85
		mu 0 4 40 0 3 66
		f 4 62 85 -70 21
		mu 0 4 23 67 68 21
		f 4 63 86 -71 -86
		mu 0 4 67 69 70 68
		f 4 64 87 -72 -87
		mu 0 4 69 64 71 70
		f 4 65 88 -73 -88
		mu 0 4 64 63 72 71
		f 4 66 89 -74 -89
		mu 0 4 63 65 73 72
		f 4 67 90 -75 -90
		mu 0 4 65 66 74 73
		f 4 68 14 -76 -91
		mu 0 4 66 3 5 74
		f 4 69 91 -77 19
		mu 0 4 21 68 75 18
		f 4 70 92 -78 -92
		mu 0 4 68 70 76 75
		f 4 71 93 -79 -93
		mu 0 4 70 71 77 76
		f 4 72 94 -80 -94
		mu 0 4 71 72 78 77
		f 4 79 96 -81 -96
		mu 0 4 77 78 81 82
		f 4 80 98 17 -98
		mu 0 4 82 81 17 85
		f 4 10 100 -102 -100
		mu 0 4 35 34 37 36
		f 4 30 102 -104 -101
		mu 0 4 34 41 38 37
		f 4 -12 104 105 -103
		mu 0 4 41 40 39 38
		f 4 -30 99 106 -105
		mu 0 4 40 35 36 39
		f 4 -9 110 111 -109
		mu 0 4 31 30 29 28
		f 4 -115 -114 -25 33
		mu 0 4 46 86 24 22
		f 4 115 116 -63 23
		mu 0 4 25 87 67 23
		f 4 117 118 -64 -117
		mu 0 4 87 88 69 67
		f 4 -119 119 81 -65
		mu 0 4 69 88 30 64
		f 4 -120 120 112 -111
		mu 0 4 30 88 26 29
		f 4 -129 -116 7 113
		mu 0 4 86 87 25 24
		f 4 123 -135 121 122
		mu 0 4 89 90 91 92
		f 4 -125 -132 114 34
		mu 0 4 48 93 86 46
		f 4 -128 124 35 -49
		mu 0 4 31 93 48 42
		f 4 -108 -121 125 126
		mu 0 4 27 26 88 93
		f 4 -127 127 108 -110
		mu 0 4 27 93 31 28
		f 4 -122 -134 128 129
		mu 0 4 92 91 87 86
		f 3 130 -130 131
		mu 0 3 93 92 86
		f 4 -124 -136 -126 132
		mu 0 4 90 89 93 88
		f 3 -137 -118 133
		mu 0 3 91 88 87
		f 3 -131 135 -123
		mu 0 3 92 93 89
		f 3 136 134 -133
		mu 0 3 88 91 90
		f 4 -18 3 137 -139
		mu 0 4 85 17 16 94
		f 4 -19 140 141 -5
		mu 0 4 18 95 96 19
		f 4 -45 -142 142 -144
		mu 0 4 54 19 96 97
		f 4 -46 143 144 -146
		mu 0 4 55 54 97 98
		f 4 -148 -47 145 146
		mu 0 4 99 56 55 98
		f 4 -61 -48 147 148
		mu 0 4 60 57 56 99
		f 4 -147 -150 -140 150
		mu 0 4 99 98 100 94
		f 4 -62 -149 -151 -138
		mu 0 4 16 60 99 94
		f 4 18 76 151 -154
		mu 0 4 95 18 75 101
		f 4 -152 77 152 -157
		mu 0 4 101 75 76 102
		f 4 -153 78 95 -160
		mu 0 4 102 76 77 82
		f 4 155 153 -159 154
		mu 0 4 103 95 101 104
		f 3 -171 158 156
		mu 0 3 102 104 101
		f 4 161 159 97 160
		mu 0 4 105 102 82 85
		f 4 -163 -161 138 139
		mu 0 4 100 105 85 94
		f 4 -165 -158 162 163
		mu 0 4 106 104 105 100
		f 4 -167 -155 164 165
		mu 0 4 107 103 104 106
		f 4 -141 -156 166 167
		mu 0 4 96 95 103 107
		f 4 -143 -168 -166 168
		mu 0 4 97 96 107 106
		f 3 169 -145 -169
		mu 0 3 106 98 97
		f 3 -170 -164 149
		mu 0 3 98 106 100
		f 3 170 -162 157
		mu 0 3 104 102 105
		f 4 -17 2 171 -173
		mu 0 4 7 5 4 6
		f 4 -38 55 173 -175
		mu 0 4 44 43 51 52
		f 4 -177 -39 174 175
		mu 0 4 53 45 44 52
		f 4 -40 176 -180 -16
		mu 0 4 2 45 53 4
		f 4 -179 -174 59 177
		mu 0 4 58 52 51 57
		f 4 -190 -178 60 180
		mu 0 4 61 58 57 60
		f 4 -183 -176 178 181
		mu 0 4 59 53 52 58
		f 4 179 182 -186 -172
		mu 0 4 4 53 59 6
		f 3 183 -189 -182
		mu 0 3 58 62 59
		f 3 -188 -185 185
		mu 0 3 59 8 6
		f 3 187 188 -187
		mu 0 3 8 59 62
		f 3 -184 189 190
		mu 0 3 62 58 61
		f 4 73 191 -193 -95
		mu 0 4 72 73 79 78
		f 4 192 193 -195 -97
		mu 0 4 78 79 83 81
		f 4 195 -181 61 -216
		mu 0 4 14 61 60 16
		f 4 -191 -196 -217 196
		mu 0 4 62 61 14 12
		f 4 -206 172 184 -198
		mu 0 4 9 7 6 8
		f 4 197 198 -219 -212
		mu 0 4 9 8 10 11
		f 3 -200 186 -197
		mu 0 3 12 8 62
		f 3 199 -220 -199
		mu 0 3 8 12 10
		f 4 74 200 -203 -192
		mu 0 4 73 74 80 79
		f 4 -201 75 16 201
		mu 0 4 80 74 5 7
		f 3 -221 202 203
		mu 0 3 84 79 80
		f 3 204 -202 205
		mu 0 3 9 80 7
		f 4 194 -208 206 -99
		mu 0 4 81 83 15 17
		f 4 207 208 -211 209
		mu 0 4 15 83 84 13
		f 3 221 210 -214
		mu 0 3 9 13 84
		f 3 -205 213 -204
		mu 0 3 80 9 84
		f 4 215 -4 -207 214
		mu 0 4 14 16 17 15
		f 4 217 216 -215 -210
		mu 0 4 13 12 14 15
		f 4 -213 218 219 -218
		mu 0 4 13 11 10 12
		f 3 220 -209 -194
		mu 0 3 79 84 83
		f 3 -222 211 212
		mu 0 3 13 9 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode joint -n "joint1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 66.033129939490578 95.48779549713835 66.130680561855641 ;
	setAttr ".bps" -type "matrix" -0.038698373807676267 -0.087454243430080417 -0.99541659176985475 0
		 -0.0033973538368067269 0.99616853760097857 -0.087388229646991361 0 0.99924516203559821 4.8572257327350599e-017 -0.03884721545299108 0
		 0.23660004510827548 0.52522233989438316 2.2609073270492068 1;
	setAttr ".radi" 0.72437019308118888;
createNode joint -n "joint2" -p "joint1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.023597158440442949 -1.8014603265252374 4.2665756175611067 ;
	setAttr ".bps" -type "matrix" -0.0074121790991801689 -0.013093465899361499 -0.99988680396920127 0
		 -9.7059434574677547e-005 0.99991427690114631 -0.013093106152624845 0 0.99997252471278819 6.408586536251511e-014 -0.0074128145486153305 0
		 0.040312281647153003 0.081632696221297874 -2.7880928578588051 1;
	setAttr ".radi" 0.85727200600319575;
createNode joint -n "joint3" -p "joint2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 6.2346132680790909 2.538286177176354e-015 1.1694171566090221e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -53.996365775076043 0.75022177246127086 ;
	setAttr ".bps" -type "matrix" 0.80459995960315867 2.1694906800326797e-015 -0.59381723198859382 0
		 -6.4723657748448626e-014 1 -8.4030005176316536e-014 0 0.59381723198859393 1.0603226306749874e-013 0.80459995960315844 0
		 -0.0058997885099730321 8.3266726846886741e-017 -9.0220003924623846 1;
	setAttr ".radi" 1.201141854936183;
createNode joint -n "joint4" -p "joint1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 176.79860314469411 5.0171683846099402 ;
	setAttr ".bps" -type "matrix" -0.017017101517837932 1.1213882535970217e-015 0.99985519864424977 0
		 -1.0538445116559103e-016 1 -1.1102230246251565e-015 0 -0.99985519864424965 -1.1007913900411639e-016 -0.017017101517837953 0
		 0.22013494316500218 -2.2204460492503131e-016 7.5321322263431014 1;
	setAttr ".radi" 0.74919327832671856;
createNode joint -n "joint5" -p "joint4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.2046340825456072 -7.0265567252108759e-016 4.4408920985006262e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.91334097046558 -0.98626758756961641 -174.9783152667992 ;
	setAttr ".bps" -type "matrix" -0.00026100184506580582 -0.087519798260263126 -0.99616274613665445 0
		 -2.2930819417279905e-005 0.99616278032883898 -0.087519795256242927 0 0.99999996567610694 2.0561158872521694e-016 -0.00026200722434103693 0
		 0.16560135965479972 2.6689387397971931e-015 10.736302273528873 1;
	setAttr ".radi" 0.74919327832671856;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n"
		+ "                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 1\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 1\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/micha_000/Documents/Unity Projects/fish/Assets/Material/convict-cichlid-1.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode objectSet -n "modelPanel4ViewSelectedSet";
	setAttr ".ihi" 0;
createNode skinCluster -n "skinCluster1";
	setAttr ".skm" 2;
	setAttr -s 108 ".wl";
	setAttr -s 2 ".wl[0].w[3:4]"  0.50232432468045574 0.49767567531954421;
	setAttr -s 2 ".wl[1].w[3:4]"  0.50293037179901856 0.49706962820098144;
	setAttr -s 2 ".wl[2].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[3].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[4].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[5].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[6].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[7].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[8].w[3:4]"  0.75860986178876566 0.24139013821123428;
	setAttr -s 2 ".wl[9].w[3:4]"  0.78808881566576783 0.2119111843342322;
	setAttr -s 2 ".wl[10].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[11].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[12].w[3:4]"  0.56111857575677215 0.43888142424322785;
	setAttr -s 2 ".wl[13].w[3:4]"  0.5646704196403457 0.43532958035965424;
	setAttr -s 2 ".wl[14].w";
	setAttr ".wl[14].w[0]" 0.73147104785955275;
	setAttr ".wl[14].w[4]" 0.2685289521404472;
	setAttr -s 2 ".wl[15].w";
	setAttr ".wl[15].w[0]" 0.73731239459967823;
	setAttr ".wl[15].w[4]" 0.26268760540032171;
	setAttr -s 2 ".wl[16].w[0:1]"  0.68387687369982808 0.31612312630017197;
	setAttr -s 2 ".wl[17].w[0:1]"  0.69049464447517284 0.30950535552482711;
	setAttr -s 2 ".wl[18].w[0:1]"  0.53142264564991837 0.46857735435008158;
	setAttr -s 2 ".wl[19].w[0:1]"  0.53407361113994922 0.46592638886005078;
	setAttr -s 2 ".wl[20].w[1:2]"  0.6468428008368069 0.3531571991631931;
	setAttr -s 2 ".wl[21].w[1:2]"  0.64683683030340933 0.35316316969659073;
	setAttr -s 2 ".wl[22].w[1:2]"  0.65457964330402507 0.34542035669597487;
	setAttr -s 2 ".wl[23].w[1:2]"  0.65395401211737614 0.34604598788262386;
	setAttr -s 2 ".wl[24].w[1:2]"  0.57755440622748333 0.42244559377251678;
	setAttr -s 2 ".wl[25].w[1:2]"  0.57690989219327027 0.42309010780672968;
	setAttr -s 2 ".wl[26].w[1:2]"  0.5188778546668259 0.48112214533317404;
	setAttr -s 2 ".wl[27].w[1:2]"  0.51883217858048392 0.48116782141951608;
	setAttr -s 2 ".wl[28].w[1:2]"  0.5 0.5;
	setAttr -s 2 ".wl[29].w[1:2]"  0.5 0.5;
	setAttr -s 2 ".wl[30].w[1:2]"  0.5 0.5;
	setAttr -s 2 ".wl[31].w[1:2]"  0.5 0.5;
	setAttr -s 2 ".wl[32].w[1:2]"  0.5 0.5;
	setAttr -s 2 ".wl[33].w[1:2]"  0.5 0.5;
	setAttr -s 2 ".wl[34].w[1:2]"  0.5 0.5;
	setAttr -s 2 ".wl[35].w[1:2]"  0.5 0.5;
	setAttr -s 2 ".wl[36].w[1:2]"  0.54748635705027093 0.45251364294972912;
	setAttr -s 2 ".wl[37].w[1:2]"  0.54707439600294927 0.45292560399705073;
	setAttr -s 2 ".wl[38].w[1:2]"  0.71020696308982501 0.28979303691017494;
	setAttr -s 2 ".wl[39].w[1:2]"  0.70944267842622355 0.29055732157377645;
	setAttr -s 2 ".wl[40].w[0:1]"  0.52076926463445905 0.47923073536554101;
	setAttr -s 2 ".wl[41].w[0:1]"  0.5238826497895771 0.47611735021042284;
	setAttr -s 2 ".wl[42].w[0:1]"  0.69000496227226649 0.30999503772773362;
	setAttr -s 2 ".wl[43].w[0:1]"  0.69859383099371031 0.30140616900628969;
	setAttr -s 2 ".wl[44].w";
	setAttr ".wl[44].w[0]" 0.77925041978475673;
	setAttr ".wl[44].w[4]" 0.2207495802152433;
	setAttr -s 2 ".wl[45].w";
	setAttr ".wl[45].w[0]" 0.78636500475052096;
	setAttr ".wl[45].w[4]" 0.21363499524947904;
	setAttr -s 2 ".wl[46].w";
	setAttr ".wl[46].w[0]" 0.855443187529357;
	setAttr ".wl[46].w[4]" 0.14455681247064298;
	setAttr -s 2 ".wl[47].w";
	setAttr ".wl[47].w[0]" 0.88756474355399284;
	setAttr ".wl[47].w[4]" 0.11243525644600713;
	setAttr -s 2 ".wl[48].w[1:2]"  0.62648928823437044 0.3735107117656295;
	setAttr -s 2 ".wl[49].w[1:2]"  0.91754918022944632 0.082450819770553699;
	setAttr -s 2 ".wl[50].w[0:1]"  0.6428100638729205 0.3571899361270795;
	setAttr -s 2 ".wl[51].w[0:1]"  0.90183516824899679 0.098164831751003198;
	setAttr -s 2 ".wl[52].w";
	setAttr ".wl[52].w[0]" 0.95313752450701361;
	setAttr ".wl[52].w[4]" 0.046862475492986333;
	setAttr -s 2 ".wl[53].w[3:4]"  0.78538233298230498 0.214617667017695;
	setAttr -s 2 ".wl[54].w[1:2]"  0.70932083581616989 0.29067916418383011;
	setAttr -s 2 ".wl[55].w[1:2]"  0.96292700383670138 0.037072996163298656;
	setAttr -s 2 ".wl[56].w[0:1]"  0.80344553833111088 0.1965544616688891;
	setAttr -s 2 ".wl[57].w[0:1]"  0.98229893418672298 0.017701065813277;
	setAttr -s 2 ".wl[58].w";
	setAttr ".wl[58].w[0]" 0.98402840341281606;
	setAttr ".wl[58].w[4]" 0.015971596587183907;
	setAttr -s 2 ".wl[59].w[3:4]"  0.86485593373587744 0.13514406626412265;
	setAttr -s 2 ".wl[60].w[1:2]"  0.57090781486257647 0.42909218513742353;
	setAttr -s 2 ".wl[61].w[1:2]"  0.84756615513216016 0.15243384486783984;
	setAttr -s 2 ".wl[62].w[0:1]"  0.63429248839285646 0.36570751160714349;
	setAttr -s 2 ".wl[63].w[0:1]"  0.90992199913551819 0.090078000864481811;
	setAttr -s 2 ".wl[64].w";
	setAttr ".wl[64].w[0]" 0.95339299237154207;
	setAttr ".wl[64].w[4]" 0.046607007628457972;
	setAttr -s 2 ".wl[65].w[3:4]"  0.83351773881234947 0.1664822611876505;
	setAttr -s 2 ".wl[66].w[1:2]"  0.60517029949329992 0.39482970050670008;
	setAttr -s 2 ".wl[67].w[1:2]"  0.7123656717632092 0.28763432823679086;
	setAttr -s 2 ".wl[68].w[0:1]"  0.56244393017296312 0.43755606982703688;
	setAttr -s 2 ".wl[69].w[0:1]"  0.777030597539353 0.22296940246064703;
	setAttr -s 2 ".wl[70].w";
	setAttr ".wl[70].w[0]" 0.87334571311304121;
	setAttr ".wl[70].w[4]" 0.12665428688695887;
	setAttr -s 2 ".wl[71].w";
	setAttr ".wl[71].w[0]" 0.89118867768913335;
	setAttr ".wl[71].w[4]" 0.10881132231086671;
	setAttr -s 2 ".wl[72].w[1:2]"  0.63525220437722463 0.36474779562277532;
	setAttr -s 2 ".wl[73].w[1:2]"  0.92293963199588469 0.077060368004115254;
	setAttr -s 2 ".wl[74].w[0:1]"  0.62871891231870169 0.37128108768129836;
	setAttr -s 2 ".wl[75].w[0:1]"  0.88566465909693537 0.11433534090306463;
	setAttr -s 2 ".wl[76].w";
	setAttr ".wl[76].w[0]" 0.94089608945785708;
	setAttr ".wl[76].w[4]" 0.059103910542142958;
	setAttr -s 2 ".wl[77].w[3:4]"  0.75416818582734957 0.24583181417265046;
	setAttr -s 2 ".wl[78].w[1:2]"  0.73702252724493444 0.26297747275506556;
	setAttr -s 2 ".wl[79].w[1:2]"  0.96902111477805297 0.030978885221947031;
	setAttr -s 2 ".wl[80].w[0:1]"  0.78035255885539201 0.21964744114460794;
	setAttr -s 2 ".wl[81].w[0:1]"  0.96696241055569376 0.033037589444306299;
	setAttr -s 2 ".wl[82].w";
	setAttr ".wl[82].w[0]" 0.97244801765722122;
	setAttr ".wl[82].w[4]" 0.027551982342778815;
	setAttr -s 2 ".wl[83].w[3:4]"  0.81981817322680761 0.18018182677319242;
	setAttr -s 2 ".wl[84].w[1:2]"  0.57252347271023329 0.42747652728976665;
	setAttr -s 2 ".wl[85].w[1:2]"  0.85102898306147845 0.14897101693852161;
	setAttr -s 2 ".wl[86].w[0:1]"  0.62259435905649108 0.37740564094350892;
	setAttr -s 2 ".wl[87].w[0:1]"  0.8944185872877477 0.10558141271225238;
	setAttr -s 2 ".wl[88].w";
	setAttr ".wl[88].w[0]" 0.94156505121679512;
	setAttr ".wl[88].w[4]" 0.058434948783204869;
	setAttr -s 2 ".wl[89].w[3:4]"  0.79455107313810536 0.20544892686189475;
	setAttr -s 2 ".wl[90].w[1:2]"  0.60663270182701434 0.39336729817298566;
	setAttr -s 2 ".wl[91].w[1:2]"  0.71308515786332505 0.28691484213667495;
	setAttr -s 2 ".wl[92].w[0:1]"  0.55718342489911932 0.44281657510088068;
	setAttr -s 2 ".wl[93].w[0:1]"  0.7666786411240154 0.23332135887598454;
	setAttr -s 2 ".wl[94].w";
	setAttr ".wl[94].w[0]" 0.86461843788875414;
	setAttr ".wl[94].w[4]" 0.13538156211124586;
	setAttr -s 2 ".wl[95].w";
	setAttr ".wl[95].w[0]" 0.8780694333785849;
	setAttr ".wl[95].w[4]" 0.12193056662141513;
	setAttr -s 2 ".wl[96].w";
	setAttr ".wl[96].w[0]" 0.6823802719124098;
	setAttr ".wl[96].w[4]" 0.3176197280875902;
	setAttr -s 2 ".wl[97].w";
	setAttr ".wl[97].w[0]" 0.68942688210212288;
	setAttr ".wl[97].w[4]" 0.31057311789787706;
	setAttr -s 2 ".wl[98].w[3:4]"  0.58509411278146106 0.41490588721853899;
	setAttr -s 2 ".wl[99].w[3:4]"  0.58023260461202542 0.41976739538797458;
	setAttr -s 2 ".wl[100].w[1:2]"  0.75195176127967722 0.24804823872032278;
	setAttr -s 2 ".wl[101].w[1:2]"  0.75162530582030351 0.24837469417969651;
	setAttr -s 2 ".wl[102].w[0:1]"  0.60961423732047038 0.39038576267952957;
	setAttr -s 2 ".wl[103].w[0:1]"  0.60397354335692865 0.39602645664307129;
	setAttr -s 2 ".wl[104].w[1:2]"  0.65534192575638039 0.34465807424361955;
	setAttr -s 2 ".wl[105].w[1:2]"  0.65463080922476402 0.34536919077523598;
	setAttr -s 2 ".wl[106].w[1:2]"  0.60519271971190169 0.39480728028809831;
	setAttr -s 2 ".wl[107].w[1:2]"  0.60503033341851531 0.39496966658148469;
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.038698373807676247 -0.0033973538368067108 0.99924516203559799 -0
		 -0.087454243430080417 0.99616853760097845 6.2450045135165043e-017 0 -0.99541659176985453 -0.087388229646991347 -0.038847215452991087 0
		 2.3056336251553664 -0.32482946747017299 -0.14859149635872185 1;
	setAttr ".pm[1]" -type "matrix" -0.0074121790991801568 -9.7059434574664239e-005 0.99997252471278819 -0
		 -0.013093465899361502 0.9999142769011462 6.4098967561716791e-014 0 -0.99988680396920127 -0.01309310615262484 -0.0074128145486153435 0
		 -2.7864096000380854 -0.11812658147766741 -0.060978789355268098 1;
	setAttr ".pm[2]" -type "matrix" 0.80459995960315867 -6.4709357069742238e-014 0.59381723198859393 -0
		 2.1781873319829124e-015 1 1.0604456205867838e-013 -0 -0.59381723198859404 -8.4025273630298937e-014 0.80459995960315889 -0
		 -5.3526723304552313 -7.5854108991749102e-013 7.2626045473972285 1;
	setAttr ".pm[3]" -type "matrix" -0.017017101517837946 -9.0980421643177211e-017 -0.99985519864424932 -0
		 1.1082689249221187e-015 1 -1.2426196927167459e-016 -0 0.99985519864424921 -1.123099102941007e-015 -0.017017101517837925 -0
		 -7.5272955047095707 8.7014035215115678e-015 0.34827812606824288 1;
	setAttr ".pm[4]" -type "matrix" -0.00026100184506579107 -2.2930819417263862e-005 0.99999996567610638 -0
		 -0.087519798260263126 0.9961627803288392 2.2030310518547632e-016 0 -0.99616274613665357 -0.087519795256242872 -0.00026200722434105271 0
		 10.695147578412135 0.9396427741632527 -0.16278836521234244 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 5 ".dpf[0:4]"  2.5 2.5 2.5 2.5 2.5;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".ucm" yes;
	setAttr ".nw" 2;
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 5 ".wm";
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.23660004510827548 0.52522233989438316
		 2.2609073270492068 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.031544825424846878 0.72001981341863885 -0.030342300315346127 0.69257182810527151 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.0722483698316392 -5.5581815943321415e-016
		 -1.1337056030378002e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00079092401281637202 -0.01570149971742341 0.037222928545162855 0.99918331197851351 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.2346132680790909 2.538286177176354e-015
		 1.1694171566090221e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0029720332586313757 -0.45395251273309806 0.0058334010436357471 0.89100182639200021 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.200494628669702 -0.98379704449112537
		 -0.22122508282328002 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0437519868954864 0.99865182377487138 0.0012226373983554297 0.027907054155041702 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.2046340825456072 -7.0265567252108759e-016
		 4.4408920985006262e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.043800303844210291 -0.9990029460637494 -0.00037844251252160593 0.0086315653487131806 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr ".bp" yes;
createNode animCurveTA -n "joint1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "joint1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.23660004510827548;
createNode animCurveTL -n "joint1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.52522233989438316;
createNode animCurveTL -n "joint1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.2609073270492068;
createNode animCurveTU -n "joint1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "joint2_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0.41242709978761743 24 0;
createNode animCurveTA -n "joint2_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 -28.797774801414992 24 0;
createNode animCurveTA -n "joint2_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 -0.1058851714743157 24 0;
createNode animCurveTU -n "joint2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint2_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 5.0722483698316392 12 5.0722483698316392
		 24 5.0722483698316392;
createNode animCurveTL -n "joint2_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.5581815943321415e-016 12 -5.5581815943321415e-016
		 24 -5.5581815943321415e-016;
createNode animCurveTL -n "joint2_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.1337056030378002e-015 12 -1.1337056030378002e-015
		 24 -1.1337056030378002e-015;
createNode animCurveTU -n "joint2_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "joint2_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "joint2_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTA -n "joint4_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTA -n "joint4_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 -30.505410655072687 24 0;
createNode animCurveTA -n "joint4_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 12 0 24 0;
createNode animCurveTU -n "joint4_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "joint4_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.200494628669702 12 -5.200494628669702
		 24 -5.200494628669702;
createNode animCurveTL -n "joint4_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.98379704449112537 12 -0.98379704449112537
		 24 -0.98379704449112537;
createNode animCurveTL -n "joint4_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.22122508282328002 12 -0.22122508282328002
		 24 -0.22122508282328002;
createNode animCurveTU -n "joint4_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "joint4_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "joint4_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 12 1 24 1;
createNode animCurveTU -n "pCube1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 12 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
select -ne :time1;
	setAttr ".o" 24;
	setAttr ".unw" 24;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :defaultTextureList1;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :initialMaterialInfo;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "pCube1_visibility.o" "pCube1.v";
connectAttr "skinCluster1GroupId.id" "fish.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "fish.iog.og[0].gco";
connectAttr "groupId2.id" "fish.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "fish.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "fish.i";
connectAttr "tweak1.vl[0].vt[0]" "fish.twl";
connectAttr "joint1_scaleX.o" "joint1.sx";
connectAttr "joint1_scaleY.o" "joint1.sy";
connectAttr "joint1_scaleZ.o" "joint1.sz";
connectAttr "joint1_rotateX.o" "joint1.rx";
connectAttr "joint1_rotateY.o" "joint1.ry";
connectAttr "joint1_rotateZ.o" "joint1.rz";
connectAttr "joint1_visibility.o" "joint1.v";
connectAttr "joint1_translateX.o" "joint1.tx";
connectAttr "joint1_translateY.o" "joint1.ty";
connectAttr "joint1_translateZ.o" "joint1.tz";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2_scaleX.o" "joint2.sx";
connectAttr "joint2_scaleY.o" "joint2.sy";
connectAttr "joint2_scaleZ.o" "joint2.sz";
connectAttr "joint2_rotateX.o" "joint2.rx";
connectAttr "joint2_rotateY.o" "joint2.ry";
connectAttr "joint2_rotateZ.o" "joint2.rz";
connectAttr "joint2_visibility.o" "joint2.v";
connectAttr "joint2_translateX.o" "joint2.tx";
connectAttr "joint2_translateY.o" "joint2.ty";
connectAttr "joint2_translateZ.o" "joint2.tz";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint1.s" "joint4.is";
connectAttr "joint4_scaleX.o" "joint4.sx";
connectAttr "joint4_scaleY.o" "joint4.sy";
connectAttr "joint4_scaleZ.o" "joint4.sz";
connectAttr "joint4_rotateX.o" "joint4.rx";
connectAttr "joint4_rotateY.o" "joint4.ry";
connectAttr "joint4_rotateZ.o" "joint4.rz";
connectAttr "joint4_visibility.o" "joint4.v";
connectAttr "joint4_translateX.o" "joint4.tx";
connectAttr "joint4_translateY.o" "joint4.ty";
connectAttr "joint4_translateZ.o" "joint4.tz";
connectAttr "joint4.s" "joint5.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "pCube1.iog" "modelPanel4ViewSelectedSet.dsm" -na;
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint3.wm" "skinCluster1.ma[2]";
connectAttr "joint4.wm" "skinCluster1.ma[3]";
connectAttr "joint5.wm" "skinCluster1.ma[4]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint4.liw" "skinCluster1.lw[3]";
connectAttr "joint5.liw" "skinCluster1.lw[4]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "fish.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "fish.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "fishOrig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "joint3.msg" "bindPose1.m[2]";
connectAttr "joint4.msg" "bindPose1.m[3]";
connectAttr "joint5.msg" "bindPose1.m[4]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[0]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "joint3.bps" "bindPose1.wm[2]";
connectAttr "joint4.bps" "bindPose1.wm[3]";
connectAttr "joint5.bps" "bindPose1.wm[4]";
connectAttr "fish.iog" ":initialShadingGroup.dsm" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.oc" ":lambert1.c";
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":initialMaterialInfo.t" -na;
// End of betterfish.ma
