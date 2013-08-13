//Maya ASCII 2012 scene
//Name: table.ma
//Last modified: Thu, Aug 08, 2013 04:36:47 PM
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
	setAttr ".t" -type "double3" -2.8823467009974433 26.924722272058261 -2.3504702426356801 ;
	setAttr ".r" -type "double3" -82.199999999998852 564.3999999999761 0 ;
	setAttr ".rpt" -type "double3" -3.6774323089245964e-016 4.540182444987448e-017 -5.1094424234130403e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 24.167093983976248;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 3.5050371930183504 2.9812260969674433 -0.0181928552542856 ;
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
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "table";
createNode mesh -n "tableShape" -p "table";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.20957034453749657 0.96885457634925842 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "table";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:117]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 230 ".uvst[0].uvsp[0:229]" -type "float2" 0.43749374 0.80969131
		 0.56250632 0.94030875 0.31530872 0.24088949 0.18469125 0.24088949 0.18469147 0.00911019
		 0.31530851 0.0091101974 0.81530845 0.0091101974 0.81530869 0.24088949 0.68469125
		 0.24088949 0.68469149 0.00911019 0.43749374 0.30969131 0.43749431 0.50911081 0.43749374
		 0.94030869 0.375 0.94030875 0.375 0.80969131 0.375 0.0091108382 0.375 0.24088952
		 0.625 0.94030875 0.5625062 0.80969131 0.62499994 0.80969131 0.56250679 0.0091108531
		 0.375 0.30969131 0.375 0.44030872 0.43749374 0.25 0.56250626 0.24088949 0.56250626
		 0.25 0.5625062 0.30969128 0.62499994 0.30969128 0.375 0.50911081 0.43749374 0.5 0.56250632
		 0.44030875 0.56250626 0.5 0.56250679 0.50911087 0.625 0.50911051 0.625 0.74088955
		 0.43749374 0.75 0.56250626 0.74088955 0.43749434 3.7252903e-009 0.43749431 0.0091108419
		 0.56250679 1.4901161e-008 0.625 0.0091105122 0.43749374 0.24088949 0.625 0.2408895
		 0.43749374 0.44030872 0.625 0.44030875 0.375 0.74088949 0.43749374 0.74088949 0.56250626
		 0.75 0.43749374 0.80969131 0.5625062 0.80969131 0.56250632 0.94030875 0.43749374
		 0.94030869 0.56250679 0.0091108531 0.56250626 0.24088949 0.43749374 0.24088949 0.43749431
		 0.0091108419 0.31530872 0.24088949 0.18469125 0.24088949 0.18469147 0.00911019 0.31530851
		 0.0091101974 0.81530845 0.0091101974 0.81530869 0.24088949 0.68469125 0.24088949
		 0.68469149 0.00911019 0.5625062 0.30969128 0.56250632 0.44030875 0.43749374 0.44030872
		 0.43749374 0.30969131 0.56250679 0.50911087 0.56250626 0.74088955 0.43749374 0.74088949
		 0.43749431 0.50911081 0.375 0.94030875 0.375 0.80969131 0.43749434 3.7252903e-009
		 0.56250679 1.4901161e-008 0.375 0.0091108382 0.375 0.24088952 0.625 0.94030875 0.62499994
		 0.80969131 0.625 0.0091105122 0.625 0.2408895 0.375 0.30969131 0.375 0.44030872 0.43749374
		 0.25 0.56250626 0.25 0.62499994 0.30969128 0.625 0.44030875 0.375 0.50911081 0.375
		 0.74088949 0.43749374 0.5 0.56250626 0.5 0.625 0.50911051 0.625 0.74088955 0.43749374
		 0.75 0.56250626 0.75 0.43749374 0.80969131 0.5625062 0.80969131 0.56250632 0.94030875
		 0.43749374 0.94030869 0.56250679 0.0091108531 0.56250626 0.24088949 0.43749374 0.24088949
		 0.43749431 0.0091108419 0.31530872 0.24088949 0.18469125 0.24088949 0.18469147 0.00911019
		 0.31530851 0.0091101974 0.81530845 0.0091101974 0.81530869 0.24088949 0.68469125
		 0.24088949 0.68469149 0.00911019 0.5625062 0.30969128 0.56250632 0.44030875 0.43749374
		 0.44030872 0.43749374 0.30969131 0.56250679 0.50911087 0.56250626 0.74088955 0.43749374
		 0.74088949 0.43749431 0.50911081 0.375 0.94030875 0.375 0.80969131 0.43749434 3.7252903e-009
		 0.56250679 1.4901161e-008 0.375 0.0091108382 0.375 0.24088952 0.625 0.94030875 0.62499994
		 0.80969131 0.625 0.0091105122 0.625 0.2408895 0.375 0.30969131 0.375 0.44030872 0.43749374
		 0.25 0.56250626 0.25 0.62499994 0.30969128 0.625 0.44030875 0.375 0.50911081 0.375
		 0.74088949 0.43749374 0.5 0.56250626 0.5 0.625 0.50911051 0.625 0.74088955 0.43749374
		 0.75 0.56250626 0.75 0.43749374 0.80969131 0.5625062 0.80969131 0.56250632 0.94030875
		 0.43749374 0.94030869 0.56250679 0.0091108531 0.56250626 0.24088949 0.43749374 0.24088949
		 0.43749431 0.0091108419 0.31530872 0.24088949 0.18469125 0.24088949 0.18469147 0.00911019
		 0.31530851 0.0091101974 0.81530845 0.0091101974 0.81530869 0.24088949 0.68469125
		 0.24088949 0.68469149 0.00911019 0.5625062 0.30969128 0.56250632 0.44030875 0.43749374
		 0.44030872 0.43749374 0.30969131 0.56250679 0.50911087 0.56250626 0.74088955 0.43749374
		 0.74088949 0.43749431 0.50911081 0.375 0.94030875 0.375 0.80969131 0.43749434 3.7252903e-009
		 0.56250679 1.4901161e-008 0.375 0.0091108382 0.375 0.24088952 0.625 0.94030875 0.62499994
		 0.80969131 0.625 0.0091105122 0.625 0.2408895 0.375 0.30969131 0.375 0.44030872 0.43749374
		 0.25 0.56250626 0.25 0.62499994 0.30969128 0.625 0.44030875 0.375 0.50911081 0.375
		 0.74088949 0.43749374 0.5 0.56250626 0.5 0.625 0.50911051 0.625 0.74088955 0.43749374
		 0.75 0.56250626 0.75 0.375 0.083333336 0.375 0.91666669 0.45833331 0 0.70833337 0
		 0.625 0.083333336 0.54166669 1 0.29166666 0.25 0.375 0.16666667 0.45833331 0.25 0.625
		 0.16666667 0.625 0.33333331 0.54166669 0.25 0.125 0.16666666 0.375 0.41666669 0.45833331
		 0.5 0.54166669 0 0.79166669 0.25 0.625 0.58333331 0.54166669 0.5 0.20833333 0 0.375
		 0.66666663 0.45833331 0.75 0.375 0.33333331 0.625 0.41666669 0.875 0.083333328 0.625
		 0.83333331 0.54166669 0.75 0.125 0.083333328 0.29166666 0 0.20833333 0.25 0.79166663
		 0 0.875 0.16666666 0.70833331 0.25 0.375 0.83333331 0.625 0.91666669 0.45833331 1
		 0.375 0.58333331 0.625 0.66666663;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[98:101]" -type "float3" -7.4505806e-008 1.7881393e-007 0  -4.0978193e-008 
		2.9802322e-007 0  -7.4505806e-008 1.7881393e-007 0  -4.0978193e-008 2.9802322e-007 
		0 ;
	setAttr ".pt[105]" -type "float3" -2.3841858e-007 1.1920929e-007 0 ;
	setAttr ".pt[107:112]" -type "float3" 4.4703484e-008 -5.9604645e-007 0  -2.9802322e-008 
		4.7683716e-007 0  -2.9802322e-008 4.7683716e-007 0  4.9173832e-007 0 0  4.9173832e-007 
		0 0  -2.3841858e-007 1.1920929e-007 0 ;
	setAttr ".pt[114]" -type "float3" 4.4703484e-008 -5.9604645e-007 0 ;
	setAttr -s 120 ".vt[0:119]"  -2.88060546 0.21728373 3.72570181 -2.66332173 0 3.72570181
		 -2.66332173 0.21728373 3.94298553 -2.22866702 0 3.72570181 -2.011383295 0.21728373 3.72570181
		 -2.22866702 0.21728373 3.94298553 -2.66332173 5.96245193 3.72570181 -2.88060546 5.74516869 3.72570181
		 -2.66332173 5.74516869 3.94298553 -2.011383295 5.74516869 3.72570181 -2.22866702 5.96245193 3.72570181
		 -2.22866702 5.74516869 3.94298553 -2.66332173 5.74516869 3.032954216 -2.88060546 5.74516869 3.25023794
		 -2.66332173 5.96245193 3.25023794 -2.011383295 5.74516869 3.25023794 -2.22866702 5.74516869 3.032954216
		 -2.22866702 5.96245193 3.25023794 -2.66332173 0 3.25023794 -2.88060546 0.21728373 3.25023794
		 -2.66332173 0.21728373 3.032954216 -2.011383295 0.21728373 3.25023794 -2.22866702 0 3.25023794
		 -2.22866702 0.21728373 3.032954216 -2.88060546 0.21728373 -3.28662419 -2.66332173 0 -3.28662419
		 -2.66332173 0.21728373 -3.069340467 -2.22866702 0 -3.28662419 -2.011383295 0.21728373 -3.28662419
		 -2.22866702 0.21728373 -3.069340467 -2.66332173 5.96245241 -3.28662419 -2.88060546 5.74516869 -3.28662419
		 -2.66332173 5.74516869 -3.069340467 -2.011383295 5.74516869 -3.28662419 -2.22866702 5.96245241 -3.28662419
		 -2.22866702 5.74516869 -3.069340467 -2.66332173 5.74516869 -3.97937179 -2.88060546 5.74516869 -3.76208806
		 -2.66332173 5.96245241 -3.76208806 -2.011383295 5.74516869 -3.76208806 -2.22866702 5.74516869 -3.97937179
		 -2.22866702 5.96245241 -3.76208806 -2.66332173 0 -3.76208806 -2.88060546 0.21728373 -3.76208806
		 -2.66332173 0.21728373 -3.97937179 -2.011383295 0.21728373 -3.76208806 -2.22866702 0 -3.76208806
		 -2.22866702 0.21728373 -3.97937179 3.070426464 0.21728373 3.72570229 3.28771019 0 3.72570229
		 3.28771019 0.21728373 3.94298601 3.7223649 0 3.72570229 3.93964863 0.21728373 3.72570229
		 3.7223649 0.21728373 3.94298601 3.28771019 5.96245241 3.72570229 3.070426464 5.74516869 3.72570229
		 3.28771019 5.74516869 3.94298601 3.93964863 5.74516869 3.72570229 3.7223649 5.96245241 3.72570229
		 3.7223649 5.74516869 3.94298601 3.28771019 5.74516869 3.032954693 3.070426464 5.74516869 3.25023842
		 3.28771019 5.96245241 3.25023842 3.93964863 5.74516869 3.25023842 3.7223649 5.74516869 3.032954693
		 3.7223649 5.96245241 3.25023842 3.28771019 0 3.25023842 3.070426464 0.21728373 3.25023842
		 3.28771019 0.21728373 3.032954693 3.93964863 0.21728373 3.25023842 3.7223649 0 3.25023842
		 3.7223649 0.21728373 3.032954693 3.070426464 0.21728373 -3.28662419 3.28771019 0 -3.28662419
		 3.28771019 0.21728373 -3.069340467 3.7223649 0 -3.28662419 3.93964863 0.21728373 -3.28662419
		 3.7223649 0.21728373 -3.069340467 3.28771019 5.96245193 -3.28662419 3.070426464 5.74516869 -3.28662419
		 3.28771019 5.74516869 -3.069340467 3.93964863 5.74516869 -3.28662419 3.7223649 5.96245193 -3.28662419
		 3.7223649 5.74516869 -3.069340467 3.28771019 5.74516869 -3.97937179 3.070426464 5.74516869 -3.76208806
		 3.28771019 5.96245193 -3.76208806 3.93964863 5.74516869 -3.76208806 3.7223649 5.74516869 -3.97937179
		 3.7223649 5.96245193 -3.76208806 3.28771019 0 -3.76208806 3.070426464 0.21728373 -3.76208806
		 3.28771019 0.21728373 -3.97937179 3.93964863 0.21728373 -3.76208806 3.7223649 0 -3.76208806
		 3.7223649 0.21728373 -3.97937179 -1.096642256 5.71535826 3.88885164 2.34962535 5.71535826 3.88885164
		 -1.096642256 6.54682493 3.88885164 2.34962535 6.54682493 3.88885164 -1.096642256 6.54682493 -4.20987749
		 2.34962535 6.54682493 -4.20987749 -1.096642256 5.71535826 -4.20987749 2.34962535 5.71535826 -4.20987749
		 -2.81977606 5.92322493 3.88885164 -2.81977606 6.33895826 3.88885164 4.072759151 5.92322493 3.88885164
		 4.072759151 6.33895826 3.88885164 -2.81977606 6.54682493 1.86416936 -2.81977606 6.54682493 -2.18519521
		 4.072759151 6.54682493 1.86416936 4.072759151 6.54682493 -2.18519521 -2.81977606 6.33895826 -4.20987749
		 -2.81977606 5.92322493 -4.20987749 4.072759151 6.33895826 -4.20987749 4.072759151 5.92322493 -4.20987749
		 -2.81977606 5.71535826 -2.18519521 -2.81977606 5.71535826 1.86416936 4.072759151 5.71535826 -2.18519521
		 4.072759151 5.71535826 1.86416936;
	setAttr -s 228 ".ed";
	setAttr ".ed[0:165]"  18 22 0 22 3 0 3 1 0 1 18 0 5 11 0 11 8 0 8 2 0 2 5 0
		 7 13 0 13 19 0 19 0 0 0 7 0 21 15 0 15 9 0 9 4 0 4 21 0 10 17 0 17 14 0 14 6 0 6 10 0
		 16 23 0 23 20 0 20 12 0 12 16 0 1 0 0 19 18 0 2 1 0 3 5 0 0 2 0 8 7 0 4 3 0 22 21 0
		 5 4 0 9 11 0 7 6 0 14 13 0 6 8 0 11 10 0 10 9 0 15 17 0 13 12 0 20 19 0 12 14 0 17 16 0
		 16 15 0 21 23 0 18 20 0 23 22 0 42 46 0 46 27 0 27 25 0 25 42 0 29 35 0 35 32 0 32 26 0
		 26 29 0 31 37 0 37 43 0 43 24 0 24 31 0 45 39 0 39 33 0 33 28 0 28 45 0 34 41 0 41 38 0
		 38 30 0 30 34 0 40 47 0 47 44 0 44 36 0 36 40 0 25 24 0 43 42 0 26 25 0 27 29 0 24 26 0
		 32 31 0 28 27 0 46 45 0 29 28 0 33 35 0 31 30 0 38 37 0 30 32 0 35 34 0 34 33 0 39 41 0
		 37 36 0 44 43 0 36 38 0 41 40 0 40 39 0 45 47 0 42 44 0 47 46 0 66 70 0 70 51 0 51 49 0
		 49 66 0 53 59 0 59 56 0 56 50 0 50 53 0 55 61 0 61 67 0 67 48 0 48 55 0 69 63 0 63 57 0
		 57 52 0 52 69 0 58 65 0 65 62 0 62 54 0 54 58 0 64 71 0 71 68 0 68 60 0 60 64 0 49 48 0
		 67 66 0 50 49 0 51 53 0 48 50 0 56 55 0 52 51 0 70 69 0 53 52 0 57 59 0 55 54 0 62 61 0
		 54 56 0 59 58 0 58 57 0 63 65 0 61 60 0 68 67 0 60 62 0 65 64 0 64 63 0 69 71 0 66 68 0
		 71 70 0 90 94 0 94 75 0 75 73 0 73 90 0 77 83 0 83 80 0 80 74 0 74 77 0 79 85 0 85 91 0
		 91 72 0 72 79 0 93 87 0 87 81 0 81 76 0 76 93 0 82 89 0 89 86 0 86 78 0 78 82 0 88 95 0
		 95 92 0;
	setAttr ".ed[166:227]" 92 84 0 84 88 0 73 72 0 91 90 0 74 73 0 75 77 0 72 74 0
		 80 79 0 76 75 0 94 93 0 77 76 0 81 83 0 79 78 0 86 85 0 78 80 0 83 82 0 82 81 0 87 89 0
		 85 84 0 92 91 0 84 86 0 89 88 0 88 87 0 93 95 0 90 92 0 95 94 0 96 97 0 98 99 0 100 101 0
		 102 103 0 104 105 0 106 107 0 108 109 0 110 111 0 112 113 0 114 115 0 116 117 0 118 119 0
		 117 96 1 96 104 1 104 117 1 119 106 1 106 97 1 97 119 1 105 98 1 98 108 1 108 105 1
		 107 110 1 110 99 1 99 107 1 109 100 1 100 112 1 112 109 1 111 114 1 114 101 1 101 111 1
		 113 102 1 102 116 1 116 113 1 115 118 1 118 103 1 103 115 1;
	setAttr -s 118 ".fc[0:117]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 18 1 12
		f 4 4 5 6 7
		mu 0 4 20 24 41 38
		f 4 8 9 10 11
		mu 0 4 2 3 4 5
		f 4 12 13 14 15
		mu 0 4 6 7 8 9
		f 4 16 17 18 19
		mu 0 4 26 30 43 10
		f 4 20 21 22 23
		mu 0 4 32 36 46 11
		f 4 24 -11 25 -4
		mu 0 4 12 13 14 0
		f 4 26 -3 27 -8
		mu 0 4 38 37 39 20
		f 4 28 -7 29 -12
		mu 0 4 15 38 41 16
		f 4 30 -2 31 -16
		mu 0 4 17 1 18 19
		f 4 32 -15 33 -5
		mu 0 4 20 40 42 24
		f 4 34 -19 35 -9
		mu 0 4 21 10 43 22
		f 4 36 -6 37 -20
		mu 0 4 23 41 24 25
		f 4 38 -14 39 -17
		mu 0 4 26 27 44 30
		f 4 40 -23 41 -10
		mu 0 4 28 11 46 45
		f 4 42 -18 43 -24
		mu 0 4 29 43 30 31
		f 4 44 -13 45 -21
		mu 0 4 32 33 34 36
		f 4 46 -22 47 -1
		mu 0 4 35 46 36 47
		f 3 -25 -27 -29
		mu 0 3 15 37 38
		f 3 -31 -33 -28
		mu 0 3 39 40 20
		f 3 -35 -30 -37
		mu 0 3 23 16 41
		f 3 -39 -38 -34
		mu 0 3 42 25 24
		f 3 -41 -36 -43
		mu 0 3 29 22 43
		f 3 -45 -44 -40
		mu 0 3 44 31 30
		f 3 -26 -42 -47
		mu 0 3 35 45 46
		f 3 -32 -48 -46
		mu 0 3 34 47 36
		f 4 48 49 50 51
		mu 0 4 48 49 50 51
		f 4 52 53 54 55
		mu 0 4 52 53 54 55
		f 4 56 57 58 59
		mu 0 4 56 57 58 59
		f 4 60 61 62 63
		mu 0 4 60 61 62 63
		f 4 64 65 66 67
		mu 0 4 64 65 66 67
		f 4 68 69 70 71
		mu 0 4 68 69 70 71
		f 4 72 -59 73 -52
		mu 0 4 51 72 73 48
		f 4 74 -51 75 -56
		mu 0 4 55 74 75 52
		f 4 76 -55 77 -60
		mu 0 4 76 55 54 77
		f 4 78 -50 79 -64
		mu 0 4 78 50 49 79
		f 4 80 -63 81 -53
		mu 0 4 52 80 81 53
		f 4 82 -67 83 -57
		mu 0 4 82 67 66 83
		f 4 84 -54 85 -68
		mu 0 4 84 54 53 85
		f 4 86 -62 87 -65
		mu 0 4 64 86 87 65
		f 4 88 -71 89 -58
		mu 0 4 88 71 70 89
		f 4 90 -66 91 -72
		mu 0 4 90 66 65 91
		f 4 92 -61 93 -69
		mu 0 4 68 92 93 69
		f 4 94 -70 95 -49
		mu 0 4 94 70 69 95
		f 3 -73 -75 -77
		mu 0 3 76 74 55
		f 3 -79 -81 -76
		mu 0 3 75 80 52
		f 3 -83 -78 -85
		mu 0 3 84 77 54
		f 3 -87 -86 -82
		mu 0 3 81 85 53
		f 3 -89 -84 -91
		mu 0 3 90 83 66
		f 3 -93 -92 -88
		mu 0 3 87 91 65
		f 3 -74 -90 -95
		mu 0 3 94 89 70
		f 3 -80 -96 -94
		mu 0 3 93 95 69
		f 4 96 97 98 99
		mu 0 4 96 97 98 99
		f 4 100 101 102 103
		mu 0 4 100 101 102 103
		f 4 104 105 106 107
		mu 0 4 104 105 106 107
		f 4 108 109 110 111
		mu 0 4 108 109 110 111
		f 4 112 113 114 115
		mu 0 4 112 113 114 115
		f 4 116 117 118 119
		mu 0 4 116 117 118 119
		f 4 120 -107 121 -100
		mu 0 4 99 120 121 96
		f 4 122 -99 123 -104
		mu 0 4 103 122 123 100
		f 4 124 -103 125 -108
		mu 0 4 124 103 102 125
		f 4 126 -98 127 -112
		mu 0 4 126 98 97 127
		f 4 128 -111 129 -101
		mu 0 4 100 128 129 101
		f 4 130 -115 131 -105
		mu 0 4 130 115 114 131
		f 4 132 -102 133 -116
		mu 0 4 132 102 101 133
		f 4 134 -110 135 -113
		mu 0 4 112 134 135 113
		f 4 136 -119 137 -106
		mu 0 4 136 119 118 137
		f 4 138 -114 139 -120
		mu 0 4 138 114 113 139
		f 4 140 -109 141 -117
		mu 0 4 116 140 141 117
		f 4 142 -118 143 -97
		mu 0 4 142 118 117 143
		f 3 -121 -123 -125
		mu 0 3 124 122 103
		f 3 -127 -129 -124
		mu 0 3 123 128 100
		f 3 -131 -126 -133
		mu 0 3 132 125 102
		f 3 -135 -134 -130
		mu 0 3 129 133 101
		f 3 -137 -132 -139
		mu 0 3 138 131 114
		f 3 -141 -140 -136
		mu 0 3 135 139 113
		f 3 -122 -138 -143
		mu 0 3 142 137 118
		f 3 -128 -144 -142
		mu 0 3 141 143 117
		f 4 144 145 146 147
		mu 0 4 144 145 146 147
		f 4 148 149 150 151
		mu 0 4 148 149 150 151
		f 4 152 153 154 155
		mu 0 4 152 153 154 155
		f 4 156 157 158 159
		mu 0 4 156 157 158 159
		f 4 160 161 162 163
		mu 0 4 160 161 162 163
		f 4 164 165 166 167
		mu 0 4 164 165 166 167
		f 4 168 -155 169 -148
		mu 0 4 147 168 169 144
		f 4 170 -147 171 -152
		mu 0 4 151 170 171 148
		f 4 172 -151 173 -156
		mu 0 4 172 151 150 173
		f 4 174 -146 175 -160
		mu 0 4 174 146 145 175
		f 4 176 -159 177 -149
		mu 0 4 148 176 177 149
		f 4 178 -163 179 -153
		mu 0 4 178 163 162 179
		f 4 180 -150 181 -164
		mu 0 4 180 150 149 181
		f 4 182 -158 183 -161
		mu 0 4 160 182 183 161
		f 4 184 -167 185 -154
		mu 0 4 184 167 166 185
		f 4 186 -162 187 -168
		mu 0 4 186 162 161 187
		f 4 188 -157 189 -165
		mu 0 4 164 188 189 165
		f 4 190 -166 191 -145
		mu 0 4 190 166 165 191
		f 3 -169 -171 -173
		mu 0 3 172 170 151
		f 3 -175 -177 -172
		mu 0 3 171 176 148
		f 3 -179 -174 -181
		mu 0 3 180 173 150
		f 3 -183 -182 -178
		mu 0 3 177 181 149
		f 3 -185 -180 -187
		mu 0 3 186 179 162
		f 3 -189 -188 -184
		mu 0 3 183 187 161
		f 3 -170 -186 -191
		mu 0 3 190 185 166
		f 3 -176 -192 -190
		mu 0 3 189 191 165
		f 3 206 204 205
		mu 0 3 192 193 194
		f 3 207 208 209
		mu 0 3 195 196 197
		f 3 212 210 211
		mu 0 3 198 199 200
		f 3 213 214 215
		mu 0 3 201 202 203
		f 3 218 216 217
		mu 0 3 204 205 206
		f 8 -206 192 -209 197 -216 -194 -211 -197
		mu 0 8 192 194 207 196 201 203 200 199
		f 3 219 220 221
		mu 0 3 208 209 210
		f 3 224 222 223
		mu 0 3 211 212 213
		f 8 -212 193 -215 199 -222 -195 -217 -199
		mu 0 8 214 200 203 202 215 210 206 205
		f 3 225 226 227
		mu 0 3 216 217 218
		f 8 -225 202 -207 196 -213 198 -219 200
		mu 0 8 219 211 220 192 199 198 221 204
		f 8 -208 -204 -226 -202 -220 -200 -214 -198
		mu 0 8 196 195 222 216 223 208 224 201
		f 8 -224 195 -227 203 -210 -193 -205 -203
		mu 0 8 225 213 218 217 226 197 227 193
		f 8 -218 194 -221 201 -228 -196 -223 -201
		mu 0 8 228 206 210 209 229 218 213 212;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
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
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyAutoProj -n "polyAutoProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 8.1528635025024414 8.1528635025024414 8.1528635025024414 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:117]";
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 248 ".uvtk[0:247]" -type "float2" -0.090944365 0.45225456 -0.090944365
		 0.45225456 -0.090944365 0.45225456 -0.090944365 0.45225456 -0.090944365 0.45225456
		 -0.090944365 0.45225456 -0.090944365 0.45225456 -0.090944365 0.45225456 -0.090944365
		 0.45225456 -0.090944365 0.45225456 -0.090944365 0.45225456 -0.090944365 0.45225456
		 -0.16165671 0.48996839 -0.49248761 0.15913755 -0.46647447 0.13312449 -0.13564363
		 0.46395537 -0.17466062 0.50297236 -0.50549144 0.17214137 -0.47947836 0.12012054 -0.5054915
		 0.14613362 -0.12263966 0.45095143 -0.45347053 0.12012048 -0.44733518 0.1321965 -0.41887981
		 0.16065198 -0.088048935 0.49148294 -0.11650437 0.46302745 -0.46033907 0.11919262
		 -0.43188375 0.14764805 -0.40587592 0.17365581 -0.075045086 0.5044868 -0.055905819
		 0.49155352 -0.38673669 0.16072255 -0.35828131 0.13226713 -0.027450509 0.46309802
		 -0.39974064 0.1737265 -0.068909757 0.50455749 -0.37128526 0.11926325 -0.39974064
		 0.14771868 -0.20218338 0.13024685 -0.20218338 0.13024685 -0.20218338 0.13024685 -0.20218338
		 0.13024685 -0.20218338 0.13024679 -0.20218338 0.13024679 0.13203041 0.48999152 -0.19880059
		 0.15916055 -0.17278752 0.13314749 0.15804347 0.4639785 -0.00019675028 0.39370769
		 -0.00019675121 0.39370769 -0.00019675121 0.39370769 -0.00019675028 0.39370769 -0.00019675028
		 0.39370775 -0.00019675121 0.39370775 -0.00019674003 0.39370769 -0.00019674003 0.39370769
		 -0.00019675028 0.39370775 -0.00019675121 0.39370775 -0.00019674771 0.39370769 -0.00019674771
		 0.39370769 -0.46834773 0.49026427 -0.79917854 0.15943331 -0.77316552 0.13342024 -0.44233465
		 0.46425113 -0.48135155 0.50326812 -0.81218249 0.17243725 -0.78616947 0.12041636 -0.81218249
		 0.14642937 -0.42933065 0.45124719 -0.76016152 0.1204163 -0.75402635 0.13190062 -0.72557086
		 0.1603561 -0.39473999 0.49118707 -0.42319542 0.46273157 -0.7670303 0.11889674 -0.7385748
		 0.14735217 -0.71256703 0.17335993 -0.38173616 0.50419092 -0.36259693 0.49184939 -0.69342786
		 0.16101843 -0.66497236 0.13256301 -0.33414149 0.4633939 -0.70643169 0.17402238 -0.37560087
		 0.50485325 -0.67797631 0.119559 -0.70643181 0.14801456 -0.10362951 0.40639287 -0.10362951
		 0.40639281 -0.10362951 0.40639281 -0.10362951 0.40639287 -0.10362951 0.40639287 -0.10362951
		 0.40639287 0.16417879 0.49004409 -0.1666522 0.15921301 -0.14063919 0.13319989 0.19019181
		 0.46403095 -0.032397512 0.45225456 -0.032397516 0.45225456 -0.032397516 0.45225456
		 -0.032397512 0.45225456 -0.032397512 0.45225462 -0.032397516 0.45225462 -0.032397516
		 0.45225456 -0.032397516 0.45225456 -0.032397512 0.45225462 -0.032397516 0.45225462
		 -0.032397512 0.45225456 -0.032397512 0.45225456 -0.31500226 0.49011633 -0.64583308
		 0.15928549 -0.61982006 0.13327242 -0.28898919 0.46410331 -0.32800612 0.5031203 -0.65883702
		 0.17228931 -0.632824 0.12026842 -0.65883702 0.14628156 -0.27598524 0.45109937 -0.60681611
		 0.12026842 -0.60068077 0.13204856 -0.57222539 0.16050404 -0.24139453 0.49133489 -0.2698499
		 0.46287951 -0.61368471 0.11904468 -0.58522934 0.14750011 -0.55922145 0.17350799 -0.22839057
		 0.50433898 -0.20925131 0.49170133 -0.54008216 0.16087049 -0.51162678 0.13241495 -0.18079591
		 0.46324584 -0.55308622 0.17387444 -0.22225532 0.50470531 -0.52463067 0.11941101 -0.5530861
		 0.14786644 -0.13583028 0.13024688 -0.13583028 0.13024688 -0.13583028 0.13024688 -0.13583028
		 0.13024688 -0.13583028 0.13024694 -0.13583028 0.13024694 0.19632715 0.49107215 -0.13450387
		 0.16024119 -0.10849077 0.13422807 0.22234017 0.46505913 -0.058743596 0.39468351 -0.058743596
		 0.39468351 -0.058743596 0.39468351 -0.058743596 0.39468351 -0.058743596 0.39468357
		 -0.058743596 0.39468357 -0.058743596 0.39468351 -0.058743596 0.39468351 -0.058743596
		 0.39468357 -0.058743596 0.39468357 -0.058743596 0.39468351 -0.058743596 0.39468351
		 -0.0083112344 0.48982057 -0.33914211 0.15898973 -0.31312904 0.13297655 0.017701797
		 0.46380743 -0.021315195 0.50282454 -0.35214603 0.17199355 -0.32613292 0.11997266
		 -0.35214603 0.1459858 0.030705787 0.45080361 -0.30012515 0.11997272 -0.29398978 0.1323445
		 -0.26553431 0.16079986 0.065296598 0.49163082 0.036841139 0.46317545 -0.3069936 0.11934061
		 -0.27853823 0.14779599 -0.2525304 0.17380381 0.078300461 0.50463474 0.097439662 0.49140564
		 -0.23339128 0.16057479 -0.20493579 0.13211931 0.12589508 0.46295026 -0.2463952 0.17357874
		 0.084435776 0.50440967 -0.2179397 0.11911543 -0.24639517 0.14757092 -0.16900684 0.13024694
		 -0.16900684 0.13024688 -0.16900682 0.13024688 -0.16900682 0.13024694 -0.16900682
		 0.13024694 -0.16900684 0.13024694 0.22847548 0.49014863 -0.10235548 0.15931767 -0.076342434
		 0.13330479 0.25448853 0.46413574 0.8505159 0.50578618 0.8505159 0.6150133 0.75755662
		 0.50578618 0.8505159 0.8334679 0.75755662 0.94269508 0.57163781 0.94269508 0.47867852
		 0.8334679 0.47867852 0.6150133 0.57163781 0.50578618 0.8505159 0.94269508 0.47867852
		 0.94269508 0.47867852 0.50578618 -0.35304844 0.11759519 -0.35304844 0.010369178 -0.26179236
		 0.010369178 -0.079280466 0.010369178 0.011975626 0.11759519 0.011975626 0.3320469
		 -0.079280466 0.43927249 -0.26179236 0.43927249 -0.35304844 0.3320469 0.011975626
		 0.010369178 0.011975626 0.43927249 -0.35304844 0.43927249 -0.088205434 -0.24509163
		 -0.095464267 -0.30526137 -0.095464267 -0.42560065 -0.088205673 -0.48577037 -0.073688768
		 -0.48577055 -0.066430345 -0.42560065 -0.066430345 -0.30526137 -0.073688529 -0.24509169
		 0.093579195 0.51118374 0.090349101 0.47972155 0.090349101 0.41679686 0.093579195
		 0.38533449 0.10003944 0.38533449 0.1032696 0.41679686 0.1032696 0.47972155 0.10003944
		 0.51118374 0.038641423 0.51118374 0.035411268 0.47972155 0.035411268 0.41679686 0.038641423
		 0.38533449 0.045101672 0.38533449 0.048331767 0.41679686 0.048331767 0.47972155 0.045101672
		 0.51118374 -0.033311311 -0.24509169 -0.040569764 -0.30526137 -0.040569585 -0.42560095
		 -0.033311132 -0.48577055 -0.018794529 -0.48577037 -0.01153593 -0.42560065 -0.011536049
		 -0.30526137 -0.01879435 -0.24509169;
createNode checker -n "checker1";
createNode place2dTexture -n "place2dTexture1";
	setAttr ".re" -type "float2" 4 4 ;
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/micha_000/Documents/Unity Projects/Physics example/Assets/tabletemplate.psd";
createNode place2dTexture -n "place2dTexture2";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :lambert1;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
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
connectAttr "polyTweakUV1.out" "tableShape.i";
connectAttr "groupId1.id" "tableShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "tableShape.iog.og[0].gco";
connectAttr "polyTweakUV1.uvtk[0]" "tableShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "groupParts1.og" "polyAutoProj1.ip";
connectAttr "tableShape.wm" "polyAutoProj1.mp";
connectAttr "polySurfaceShape1.o" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyAutoProj1.out" "polyTweakUV1.ip";
connectAttr "place2dTexture1.o" "checker1.uv";
connectAttr "place2dTexture1.ofs" "checker1.fs";
connectAttr "place2dTexture2.c" "file1.c";
connectAttr "place2dTexture2.tf" "file1.tf";
connectAttr "place2dTexture2.rf" "file1.rf";
connectAttr "place2dTexture2.mu" "file1.mu";
connectAttr "place2dTexture2.mv" "file1.mv";
connectAttr "place2dTexture2.s" "file1.s";
connectAttr "place2dTexture2.wu" "file1.wu";
connectAttr "place2dTexture2.wv" "file1.wv";
connectAttr "place2dTexture2.re" "file1.re";
connectAttr "place2dTexture2.of" "file1.of";
connectAttr "place2dTexture2.r" "file1.ro";
connectAttr "place2dTexture2.n" "file1.n";
connectAttr "place2dTexture2.vt1" "file1.vt1";
connectAttr "place2dTexture2.vt2" "file1.vt2";
connectAttr "place2dTexture2.vt3" "file1.vt3";
connectAttr "place2dTexture2.vc1" "file1.vc1";
connectAttr "place2dTexture2.o" "file1.uv";
connectAttr "place2dTexture2.ofs" "file1.fs";
connectAttr "tableShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.oc" ":lambert1.c";
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":initialMaterialInfo.t" -na;
// End of table.ma
