//Maya ASCII 2017 scene
//Name: secwallPart.ma
//Last modified: Wed, Feb 08, 2017 12:44:10 PM
//Codeset: 1252
requires maya "2017";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 7 Ultimate Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "6127F1DE-431A-E228-202D-C7BF17EC1442";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.8895433992409318 3.72478193066237 11.930107499040833 ;
	setAttr ".r" -type "double3" -17.138352729611825 8.9999999999877467 -2.0126254347771697e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C9C30F99-4CA9-8B98-C7A0-999E0FA404D0";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 12.640088592534843;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "140AC08A-422C-8E4C-8C46-B8B657C744E3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A33D869F-49BE-82ED-BC25-44AC203BFB89";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "EDDB926B-4A17-C41E-095E-A1AC2D44189D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5493128A-4FB9-F0C4-CFAF-B9AF59E43A23";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "962118DA-41CC-4090-AE3D-4AA06B9A9BF0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6CB1B3A6-4BD9-A2D7-1FCA-BAAEA44A9BF0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube2";
	rename -uid "8A87B3B5-4A6D-CC2B-89FE-2CAC976F8919";
	setAttr ".rp" -type "double3" 0 2.2705345153808594 0 ;
	setAttr ".sp" -type "double3" 0 2.2705345153808594 0 ;
createNode mesh -n "pCube2Shape" -p "pCube2";
	rename -uid "3C2B879C-4D9B-2B67-4C01-E28226FC3C34";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.375 0 0.43905437
		 0.064205691 0.50253034 0.19997984 0.625 0 0.625 0.25 0.375 0.25 0.5660063 0.064205684
		 0.125 0 0.125 0.25 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.625
		 0.5 0.375 0.5 0.43905437 0.68579423 0.56600642 0.68579429 0.50253034 0.55002016 0.71039677
		 0.21039672 0.28960326 0.21039672 0.25 0.24999999 0.28960329 0.28960329 0.71039677
		 0.28960329 0.75 0.25 0.53960329 0.92079347 0.64480162 0.5 0.625 0.5 0.5 1 0.60519838
		 0.5 0.5 0.92079347 0.39480162 0.5 0.375 0.5 0.35519835 0.5 0.46039674 0.92079347;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".vt[0:16]"  -1.75813556 0.6054821 0.10816243 -0.85720521 1.46072876 0.10816243
		 0.035589941 3.26929736 0.10816243 1.75813556 0.6054821 0.10816243 1.75813556 3.93558693 0.10816243
		 -1.75813556 3.93558693 0.10816243 0.9283852 1.46072876 0.10816243 -1.75813556 0.6054821 -0.10816243
		 -1.75813556 3.93558693 -0.10816243 1.75813556 0.6054821 -0.10816243 1.75813556 3.93558693 -0.10816243
		 -0.85720539 1.46072876 -0.10816243 0.9283852 1.46072876 -0.10816243 0.035589971 3.26929736 -0.10816243
		 -1.025257468 1.46072876 -5.9691139e-008 1.096437335 1.46072876 0 0.035589948 3.60972691 0;
	setAttr -s 30 ".ed[0:29]"  0 1 1 1 2 0 2 3 1 3 4 0 4 5 0 5 0 0 2 6 0
		 6 1 0 0 3 0 7 0 0 5 8 0 8 7 0 7 9 0 9 3 0 9 10 0 10 4 0 10 8 0 7 11 1 11 12 0 12 13 0
		 13 10 1 13 11 0 11 14 0 14 1 0 6 15 0 15 12 0 15 16 0 16 13 0 2 16 0 14 16 0;
	setAttr -s 13 -ch 60 ".fc[0:12]" -type "polyFaces" 
		f 6 0 1 2 3 4 5
		mu 0 6 0 1 2 3 4 5
		f 5 6 7 -1 8 -3
		mu 0 5 2 6 1 0 3
		f 4 9 -6 10 11
		mu 0 4 7 0 5 8
		f 4 12 13 -9 -10
		mu 0 4 9 10 11 12
		f 4 -14 14 15 -4
		mu 0 4 3 13 14 4
		f 4 -5 -16 16 -11
		mu 0 4 5 4 15 16
		f 6 -15 -13 17 18 19 20
		mu 0 6 15 10 9 17 18 19
		f 5 -17 -21 21 -18 -12
		mu 0 5 16 15 19 17 9
		f 6 -19 22 23 -8 24 25
		mu 0 6 20 21 22 23 24 25
		f 4 -20 -26 26 27
		mu 0 4 26 27 28 29
		f 4 -7 28 -27 -25
		mu 0 4 30 31 29 28
		f 4 -2 -24 29 -29
		mu 0 4 31 32 33 29
		f 4 -22 -28 -30 -23
		mu 0 4 34 35 29 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "550A89F0-4B0E-59D1-D76F-7193BD755479";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "73137BD8-4EC3-8E8A-EC71-B7B8D8250460";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "3C20AACB-4C5A-2C27-1287-D2AD19BC3AF7";
createNode displayLayerManager -n "layerManager";
	rename -uid "D27471F8-4C43-F3C2-52FF-EE8E9E940FE3";
createNode displayLayer -n "defaultLayer";
	rename -uid "972274E3-4D16-E02B-DC3B-7A8718E9D7C6";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "67D357D4-4040-D770-EF6E-73873A3686B4";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "102C3865-4BDE-C7C9-51D2-E4AB079DC2BB";
	setAttr ".g" yes;
createNode groupId -n "groupId5";
	rename -uid "11B3EC9B-4CC0-EA81-1C44-B2BEB7006B57";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId5.id" "pCube2Shape.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCube2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube2Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
// End of secwallPart.ma
