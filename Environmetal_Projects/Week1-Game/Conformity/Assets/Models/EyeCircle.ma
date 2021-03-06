//Maya ASCII 2017 scene
//Name: EyeCircle.ma
//Last modified: Tue, Feb 07, 2017 07:17:06 PM
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
	rename -uid "648D9EB3-43C7-B689-5292-14BA729E2484";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 16.118050405214138 4.5857182330048332 -55.47869338652297 ;
	setAttr ".r" -type "double3" -4.5383527296397217 163.79999999996005 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "A481A759-4826-19C4-98FA-91AE4394EF0C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 57.954342205324885;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "5712BA97-463E-3324-91D0-7D9B1E78EB38";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E4B228CF-4BB7-2CB1-42D5-28BC6CCE2266";
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
	rename -uid "68701C54-4011-3174-E298-4783F5F2028D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "08D8B3F4-46D0-D5F6-44E2-D09FEF3E142E";
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
	rename -uid "7BD3FE35-4DEB-B3D7-B7E9-049E42D7A315";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5F4214C6-4061-BC2F-9FEF-F4A50EF83362";
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
createNode transform -n "pPipe1";
	rename -uid "03D7F9BA-449C-EED6-6671-72ADD4A2AFB5";
	setAttr ".s" -type "double3" 17.827685332139097 3.1505233274312268 17.827685332139097 ;
createNode mesh -n "pPipeShape1" -p "pPipe1";
	rename -uid "77268C5C-4998-08EA-5B52-35A4B3CFAC20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52500005997717381 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 45 ".pt";
	setAttr ".pt[160]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[161]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[162]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[163]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[164]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[165]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[166]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[167]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[168]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[169]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[170]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[171]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[172]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[173]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[174]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[175]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[176]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[177]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[178]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[179]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[180]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[181]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[182]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[183]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[184]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[185]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[186]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[187]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[188]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[189]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[190]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[191]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[192]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[193]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[194]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[195]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[196]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[197]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[198]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".pt[199]" -type "float3" 0 -0.34013143 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "41C3DF3C-4E92-E3D6-B3C0-5AB21AA51479";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6EF8A212-4A7B-3A01-8FFE-F88E6A90F398";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0D6C50B4-4A09-C2B9-3374-9A92D9A8A9BA";
createNode displayLayerManager -n "layerManager";
	rename -uid "0D6D8132-4D85-386B-5193-A48B6B77A248";
createNode displayLayer -n "defaultLayer";
	rename -uid "7DF02998-40D6-FC95-DDFA-2C89F5A1D2FC";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B54D6E40-4420-B1E5-A59A-92BC27E52C84";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E3747080-42EA-5155-6569-3DBD67F8D170";
	setAttr ".g" yes;
createNode polyPipe -n "polyPipe1";
	rename -uid "F05754B0-41E3-2D4E-5E85-9C8A1F46D7E7";
	setAttr ".sc" 0;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "223FD0C5-4A36-C8CA-9C6F-F99DF1BA7F88";
	setAttr ".ics" -type "componentList" 10 "f[20]" "f[22]" "f[24]" "f[26]" "f[28]" "f[30]" "f[32]" "f[34]" "f[36]" "f[38]";
	setAttr ".ix" -type "matrix" 17.827685332139097 0 0 0 0 3.1505233274312268 0 0 0 0 17.827685332139097 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1252256e-006 1.5752617 3.1878385e-006 ;
	setAttr ".rs" 42709;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -17.827689582590502 1.5752616637156134 -17.827687457364799 ;
	setAttr ".cbx" -type "double3" 17.827685332139097 1.5752616637156134 17.827693833041909 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "CE5F96E4-4078-9E72-90E5-32A52DEB991B";
	setAttr ".ics" -type "componentList" 10 "f[41]" "f[43]" "f[45]" "f[47]" "f[49]" "f[51]" "f[53]" "f[55]" "f[57]" "f[59]";
	setAttr ".ix" -type "matrix" 17.827685332139097 0 0 0 0 3.1505233274312268 0 0 0 0 17.827685332139097 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5939193e-006 0 3.1878385e-006 ;
	setAttr ".rs" 55691;
	setAttr ".lt" -type "double3" 3.4416913763379853e-015 8.0118685686509011e-032 1.7313832988578373 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -17.827687457364799 -1.5752616637156134 -17.827685332139097 ;
	setAttr ".cbx" -type "double3" 17.827684269526245 1.5752616637156134 17.827691707816207 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "085B590D-4CDC-61C0-77A2-04BC5AE0EB59";
	setAttr ".uopa" yes;
	setAttr -s 45 ".tk";
	setAttr ".tk[80]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[81]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[82]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[83]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[84]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[85]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[86]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[87]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[88]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[89]" -type "float3" -1.1580529e-023 0.49709934 0 ;
	setAttr ".tk[90]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[91]" -type "float3" -1.323489e-023 0.49709934 0 ;
	setAttr ".tk[92]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[93]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[94]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[95]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[96]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[97]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[98]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[99]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[100]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[101]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[102]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[103]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[104]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[105]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[106]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[107]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[108]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[109]" -type "float3" -1.1878055e-023 0.49709934 0 ;
	setAttr ".tk[110]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[111]" -type "float3" -1.1878055e-023 0.49709934 0 ;
	setAttr ".tk[112]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[113]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[114]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[115]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[116]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[117]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[118]" -type "float3" 0 0.49709934 0 ;
	setAttr ".tk[119]" -type "float3" 0 0.49709934 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "14BC1E85-4B48-27D9-7FC6-2589BE8A5CA2";
	setAttr ".ics" -type "componentList" 10 "f[61]" "f[63]" "f[65]" "f[67]" "f[69]" "f[71]" "f[73]" "f[75]" "f[77]" "f[79]";
	setAttr ".ix" -type "matrix" 17.827685332139097 0 0 0 0 3.1505233274312268 0 0 0 0 17.827685332139097 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5939193e-006 -1.5752617 2.6565322e-006 ;
	setAttr ".rs" 35007;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -17.827685332139097 -1.5752616637156134 -17.827684269526245 ;
	setAttr ".cbx" -type "double3" 17.827682144300542 -1.5752616637156134 17.827689582590502 ;
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
connectAttr "polyExtrudeFace3.out" "pPipeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyPipe1.out" "polyExtrudeFace1.ip";
connectAttr "pPipeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "pPipeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pPipeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pPipeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of EyeCircle.ma
