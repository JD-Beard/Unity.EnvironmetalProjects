//Maya ASCII 2017 scene
//Name: 2ndSecWalPart.ma
//Last modified: Wed, Feb 08, 2017 01:08:56 PM
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
	setAttr ".t" -type "double3" 4.7322141104695206 10.647473974203463 15.478374914472207 ;
	setAttr ".r" -type "double3" -33.338352729649301 17.000000000000068 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C9C30F99-4CA9-8B98-C7A0-999E0FA404D0";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 19.373761700068947;
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
createNode transform -n "pCube3";
	rename -uid "F3E31AF2-4DE4-2B7B-FAC9-A5A55C0E8406";
	setAttr ".rp" -type "double3" 0 1.7627131938934326 0 ;
	setAttr ".sp" -type "double3" 0 1.7627131938934326 0 ;
createNode mesh -n "pCube3Shape" -p "pCube3";
	rename -uid "9696A819-47C9-757D-EEDA-3C8603B9AB1A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.375 0 0.42863238
		 0.042783555 0.42863238 0.21070537 0.57136762 0.21070537 0.625 0.25 0.375 0.25 0.57136762
		 0.042783555 0.625 0 0.125 0 0.125 0.25 0.375 0.75 0.625 0.75 0.625 1 0.375 1 0.875
		 0 0.875 0.25 0.625 0.5 0.375 0.5 0.42863238 0.7072165 0.57136762 0.7072165 0.57136762
		 0.5392946 0.42863238 0.5392946 0.625 0.36670813 0.375 0.36670813 0.375 0.38329187
		 0.625 0.38329187 0.7417081 0 0.7417081 0.25 0.7582919 0.25 0.7582919 0 0.24170813
		 0 0.24170813 0.25 0.25829187 0.25 0.25829187 0 0.625 0.86670816 0.375 0.86670816
		 0.375 0.88329184 0.625 0.88329184;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -1.63236475 0.37518692 0.061823081 -0.93198371 0.85009336 0.061823081
		 -0.93198371 2.71406078 0.061823081 0.93198371 2.71406078 0.061823081 1.63236475 3.15023947 0.061823081
		 -1.63236475 3.15023947 0.061823081 0.93198371 0.85009336 0.061823081 1.63236475 0.37518692 0.061823081
		 -1.63236475 0.37518692 -0.061823081 -1.63236475 3.15023947 -0.061823081 1.63236475 0.37518692 -0.061823081
		 1.63236475 3.15023947 -0.061823081 -0.93198371 0.85009336 -0.061823081 0.93198371 0.85009336 -0.061823081
		 0.93198371 2.71406078 -0.061823081 -0.93198371 2.71406078 -0.061823081;
	setAttr -s 28 ".ed[0:27]"  0 1 1 1 2 0 2 3 0 3 4 1 4 5 0 5 0 0 3 6 0
		 6 1 0 0 7 0 7 4 0 8 0 0 5 9 0 9 8 0 8 10 0 10 7 0 10 11 0 11 4 0 11 9 0 8 12 1 12 13 0
		 13 14 0 14 11 1 14 15 0 15 12 0 2 15 0 14 3 0 13 6 0 1 12 0;
	setAttr -s 12 -ch 56 ".fc[0:11]" -type "polyFaces" 
		f 6 0 1 2 3 4 5
		mu 0 6 0 1 2 3 4 5
		f 6 6 7 -1 8 9 -4
		mu 0 6 3 6 1 0 7 4
		f 4 10 -6 11 12
		mu 0 4 8 0 5 9
		f 4 13 14 -9 -11
		mu 0 4 10 11 12 13
		f 4 -15 15 16 -10
		mu 0 4 7 14 15 4
		f 4 -5 -17 17 -12
		mu 0 4 5 4 16 17
		f 6 -16 -14 18 19 20 21
		mu 0 6 16 11 10 18 19 20
		f 6 -18 -22 22 23 -19 -13
		mu 0 6 17 16 20 21 18 10
		f 4 -3 24 -23 25
		mu 0 4 22 23 24 25
		f 4 -7 -26 -21 26
		mu 0 4 26 27 28 29
		f 4 -24 -25 -2 27
		mu 0 4 30 31 32 33
		f 4 -20 -28 -8 -27
		mu 0 4 34 35 36 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "550A89F0-4B0E-59D1-D76F-7193BD755479";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
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
createNode renderLayerManager -n "Creature2:renderLayerManager";
	rename -uid "07EFE316-4B52-96F8-81B7-3D8C4B9A8709";
createNode renderLayer -n "Creature2:defaultRenderLayer";
	rename -uid "01672BD9-4D3C-64CA-2D9D-6A81D511A505";
	setAttr ".g" yes;
createNode shadingEngine -n "Creature2:Creature2:None";
	rename -uid "6A780D92-48B2-F850-EEDC-FEB22A131CD7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Creature2:Creature2:materialInfo1";
	rename -uid "1D028A1A-47A3-2929-19A5-A28CE81EB85B";
createNode phong -n "Creature2:Creature2:None1";
	rename -uid "60FA8C1A-415F-156C-5D9F-9D84E6118576";
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".sc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 2;
createNode renderLayerManager -n "Creature3:renderLayerManager";
	rename -uid "5E2D3CE9-4FC5-7DEB-32FD-7483F9B5E16B";
createNode renderLayer -n "Creature3:defaultRenderLayer";
	rename -uid "A73CDDCE-43A4-7E28-0B41-719932C08233";
	setAttr ".g" yes;
createNode shadingEngine -n "Creature3:Creature2:None";
	rename -uid "9FD8FCC6-4F8F-B454-BD7D-68A24C1D87EC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Creature3:Creature2:materialInfo1";
	rename -uid "75265368-4A82-A4C9-E64D-4F9EFD27C4A6";
createNode phong -n "Creature3:Creature2:None1";
	rename -uid "CD85C0C7-481C-17CF-7FA3-6DB5FB02CEBE";
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".sc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 2;
createNode shadingEngine -n "Creature3:creature4:None";
	rename -uid "57CF5781-4014-9734-BFDA-EEB6444133AB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Creature3:creature4:materialInfo1";
	rename -uid "C5685265-4F00-46A3-5DF4-98B2E6CD57D8";
createNode phong -n "Creature3:creature4:None1";
	rename -uid "01428E09-4B10-04D4-9837-20A3D8094B93";
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".sc" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".cp" 2;
createNode shadingEngine -n "Creature3:creature3:Material";
	rename -uid "5AF98AB5-4CB0-4D96-3AC7-93BB7905655B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Creature3:creature3:materialInfo1";
	rename -uid "9F1E9CB9-423D-6CEB-8489-05BDA94723FB";
createNode phong -n "Creature3:creature3:Material1";
	rename -uid "62E30816-480F-724E-4C84-61AD5AF80F25";
	setAttr ".c" -type "float3" 0.63999999 0.63999999 0.63999999 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
	setAttr ".cp" 98.07843017578125;
createNode groupId -n "groupId5";
	rename -uid "9F4FC92D-416B-9619-416F-3EAC5666DDDA";
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
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
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
connectAttr "groupId5.id" "pCube3Shape.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Creature2:Creature2:None.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Creature3:Creature2:None.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Creature3:creature4:None.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Creature3:creature3:Material.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Creature2:Creature2:None.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Creature3:Creature2:None.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Creature3:creature4:None.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Creature3:creature3:Material.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Creature2:renderLayerManager.rlmi[0]" "Creature2:defaultRenderLayer.rlid"
		;
connectAttr "Creature2:Creature2:None1.oc" "Creature2:Creature2:None.ss";
connectAttr "Creature2:Creature2:None.msg" "Creature2:Creature2:materialInfo1.sg"
		;
connectAttr "Creature2:Creature2:None1.msg" "Creature2:Creature2:materialInfo1.m"
		;
connectAttr "Creature3:renderLayerManager.rlmi[0]" "Creature3:defaultRenderLayer.rlid"
		;
connectAttr "Creature3:Creature2:None1.oc" "Creature3:Creature2:None.ss";
connectAttr "Creature3:Creature2:None.msg" "Creature3:Creature2:materialInfo1.sg"
		;
connectAttr "Creature3:Creature2:None1.msg" "Creature3:Creature2:materialInfo1.m"
		;
connectAttr "Creature3:creature4:None1.oc" "Creature3:creature4:None.ss";
connectAttr "Creature3:creature4:None.msg" "Creature3:creature4:materialInfo1.sg"
		;
connectAttr "Creature3:creature4:None1.msg" "Creature3:creature4:materialInfo1.m"
		;
connectAttr "Creature3:creature3:Material1.oc" "Creature3:creature3:Material.ss"
		;
connectAttr "Creature3:creature3:Material.msg" "Creature3:creature3:materialInfo1.sg"
		;
connectAttr "Creature3:creature3:Material1.msg" "Creature3:creature3:materialInfo1.m"
		;
connectAttr "Creature2:Creature2:None.pa" ":renderPartition.st" -na;
connectAttr "Creature3:Creature2:None.pa" ":renderPartition.st" -na;
connectAttr "Creature3:creature4:None.pa" ":renderPartition.st" -na;
connectAttr "Creature3:creature3:Material.pa" ":renderPartition.st" -na;
connectAttr "Creature2:Creature2:None1.msg" ":defaultShaderList1.s" -na;
connectAttr "Creature3:Creature2:None1.msg" ":defaultShaderList1.s" -na;
connectAttr "Creature3:creature4:None1.msg" ":defaultShaderList1.s" -na;
connectAttr "Creature3:creature3:Material1.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Creature2:defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Creature3:defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCube3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCube3Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
// End of 2ndSecWalPart.ma
