% Simscape(TM) Multibody(TM) version: 25.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(20).translation = [0.0 0.0 0.0];
smiData.RigidTransform(20).angle = 0.0;
smiData.RigidTransform(20).axis = [0.0 0.0 0.0];
smiData.RigidTransform(20).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [5.0000000000000044 -27.999999999999972 9.4999999999999787];  % mm
smiData.RigidTransform(1).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(1).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(1).ID = "B[Arm-1:-:Heli-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-93.859496148117984 54.105457619738623 -147.20748736855793];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(2).axis = [0.57735026918962595 0.57735026918962595 0.5773502691896254];
smiData.RigidTransform(2).ID = "F[Arm-1:-:Heli-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [19.000000000000018 99.101746180716816 -176.68905144127979];  % mm
smiData.RigidTransform(3).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(3).axis = [1 0 0];
smiData.RigidTransform(3).ID = "B[Mast-1:-:Arm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [648.50000000000023 61.000000000000078 53.50199999999991];  % mm
smiData.RigidTransform(4).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(4).axis = [-1 -9.6832601225503411e-32 5.6898930012039233e-16];
smiData.RigidTransform(4).ID = "F[Mast-1:-:Arm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [19.000000000000018 -349.89825381928318 -220.69105144127977];  % mm
smiData.RigidTransform(5).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(5).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(5).ID = "B[Mast-1:-:Standfuss-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-215.4062679951609 4.9999999999999769 -65.375157385919337];  % mm
smiData.RigidTransform(6).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(6).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962562];
smiData.RigidTransform(6).ID = "F[Mast-1:-:Standfuss-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [0 0 0];  % mm
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = "AssemblyGround[Mast-1:Plastikblock^Mast-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [864.10401811676093 -7.2016062481180532 7.1460156927034282];  % mm
smiData.RigidTransform(8).angle = 0.27925268031909312;  % rad
smiData.RigidTransform(8).axis = [6.9674968331500702e-15 4.0781874760810035e-15 1];
smiData.RigidTransform(8).ID = "AssemblyGround[Arm-1:Nebenarm^Arm-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [0 0 0];  % mm
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = "AssemblyGround[Arm-1:Hauptarm^Arm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [1068.6892468130104 42.090407623052997 0];  % mm
smiData.RigidTransform(10).angle = 0.27925268031909301;  % rad
smiData.RigidTransform(10).axis = [7.5338886066952811e-15 -4.8836864361220837e-17 1];
smiData.RigidTransform(10).ID = "AssemblyGround[Arm-1:Gegengewicht^Arm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [516.78354498231283 18.999999999999961 60.101088945522903];  % mm
smiData.RigidTransform(11).angle = 1.570796326794897;  % rad
smiData.RigidTransform(11).axis = [-1 1.8896682909160889e-16 3.3838910760534037e-16];
smiData.RigidTransform(11).ID = "AssemblyGround[Arm-1:Gelenkblock_1^Arm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [244.1666248320893 -147.04822497676969 0];  % mm
smiData.RigidTransform(12).angle = 0;  % rad
smiData.RigidTransform(12).axis = [0 0 0];
smiData.RigidTransform(12).ID = "AssemblyGround[Arm-1:Magnet^Arm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [0 -53.205512040213122 -40.234311838549807];  % mm
smiData.RigidTransform(13).angle = 0;  % rad
smiData.RigidTransform(13).axis = [0 0 0];
smiData.RigidTransform(13).ID = "AssemblyGround[Arm-1:Gelenkblock_2^Arm-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [-219.08085963987699 13.105457619738525 -25.199876479735803];  % mm
smiData.RigidTransform(14).angle = 1.2414513861358506e-12;  % rad
smiData.RigidTransform(14).axis = [0 -1 0];
smiData.RigidTransform(14).ID = "AssemblyGround[Heli-1:Motor2^Heli-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [-227.40211380780084 82.105457619738587 -375.23669315516685];  % mm
smiData.RigidTransform(15).angle = 0;  % rad
smiData.RigidTransform(15).axis = [0 0 0];
smiData.RigidTransform(15).ID = "AssemblyGround[Heli-1:Rotor1^Heli-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [-46.238096259912929 7.1054576197386314 6.5645694109155022];  % mm
smiData.RigidTransform(16).angle = 0;  % rad
smiData.RigidTransform(16).axis = [0 0 0];
smiData.RigidTransform(16).ID = "AssemblyGround[Heli-1:Schiene^Heli-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [-247.35663493708171 13.105457619738637 -186.9583719328653];  % mm
smiData.RigidTransform(17).angle = 0;  % rad
smiData.RigidTransform(17).axis = [0 0 0];
smiData.RigidTransform(17).ID = "AssemblyGround[Heli-1:Gelenkblock3^Heli-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [-219.08085963993273 13.10545761973858 -380.19987647955429];  % mm
smiData.RigidTransform(18).angle = 0;  % rad
smiData.RigidTransform(18).axis = [0 0 0];
smiData.RigidTransform(18).ID = "AssemblyGround[Heli-1:Motor1^Heli-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [-227.40211380780684 82.10545761973853 -20.236693155163092];  % mm
smiData.RigidTransform(19).angle = 0;  % rad
smiData.RigidTransform(19).axis = [0 0 0];
smiData.RigidTransform(19).ID = "AssemblyGround[Heli-1:Rotor2^Heli-3]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [-96.749109620346445 -3.1472514146055688 -78.048277485830013];  % mm
smiData.RigidTransform(20).angle = 0;  % rad
smiData.RigidTransform(20).axis = [0 0 0];
smiData.RigidTransform(20).ID = "RootGround[Standfuss-1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(14).mass = 0.0;
smiData.Solid(14).CoM = [0.0 0.0 0.0];
smiData.Solid(14).MoI = [0.0 0.0 0.0];
smiData.Solid(14).PoI = [0.0 0.0 0.0];
smiData.Solid(14).color = [0.0 0.0 0.0];
smiData.Solid(14).opacity = 0.0;
smiData.Solid(14).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.28300000000000003;  % kg
smiData.Solid(1).CoM = [19 0.0050942611665438838 -220.69105144127971];  % mm
smiData.Solid(1).MoI = [3186.7971777174107 325.25832315865074 2917.8187334099421];  % kg*mm^2
smiData.Solid(1).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(1).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Plastikblock^Mast*:*Standard";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.13800000000000001;  % kg
smiData.Solid(2).CoM = [152.49999999999997 17.648936170212764 -14.497079522490697];  % mm
smiData.Solid(2).MoI = [16.058154368492556 1077.8165771842457 1077.8165771842457];  % kg*mm^2
smiData.Solid(2).PoI = [4.7244228157537256 0 0];  % kg*mm^2
smiData.Solid(2).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Nebenarm^Arm*:*Standard";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.377;  % kg
smiData.Solid(3).CoM = [447.99999999999994 9.5 9.5];  % mm
smiData.Solid(3).MoI = [22.682833333333324 25233.144083333322 25233.144083333322];  % kg*mm^2
smiData.Solid(3).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(3).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "Hauptarm^Arm*:*Standard";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 1.9180000000000001;  % kg
smiData.Solid(4).CoM = [72.08333573317006 15.338806627033406 28.499999999999996];  % mm
smiData.Solid(4).MoI = [1038.5969999999998 1302.4818333333333 1302.4818333333328];  % kg*mm^2
smiData.Solid(4).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "Gegengewicht^Arm*:*Standard";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.029000000000000001;  % kg
smiData.Solid(5).CoM = [131.71645501768734 50.601088945522768 10.391543386700201];  % mm
smiData.Solid(5).MoI = [2.2713244794954299 2.8831051326412021 2.2879765222016886];  % kg*mm^2
smiData.Solid(5).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(5).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = "Gelenkblock_1^Arm*:*Standard";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.070000000000000007;  % kg
smiData.Solid(6).CoM = [-109.14734735610881 95.693011973678267 9.4999999999999982];  % mm
smiData.Solid(6).MoI = [63.819545219810173 24.781400540538193 84.389279093681679];  % kg*mm^2
smiData.Solid(6).PoI = [0 0 -35.022960449852619];  % kg*mm^2
smiData.Solid(6).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = "Magnet^Arm*:*Standard";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.106;  % kg
smiData.Solid(7).CoM = [12.499999999999996 36.268568358369336 49.734311838549829];  % mm
smiData.Solid(7).MoI = [29.006503001466598 19.792448417368171 24.960477417953975];  % kg*mm^2
smiData.Solid(7).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(7).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = "Gelenkblock_2^Arm*:*Standard";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(8).mass = 0.28700000000000003;  % kg
smiData.Solid(8).CoM = [132.72136349181463 34.5 55.492389110996442];  % mm
smiData.Solid(8).MoI = [141.15018750000007 54.565875000000098 141.15018750000007];  % kg*mm^2
smiData.Solid(8).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(8).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(8).opacity = 1;
smiData.Solid(8).ID = "Motor2^Heli*:*Standard";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(9).mass = 0.20000000000000001;  % kg
smiData.Solid(9).CoM = [141.04261765968283 13.500000000000004 50.529205786609069];  % mm
smiData.Solid(9).MoI = [661.94999999999993 1299.6000000000001 661.95000000000027];  % kg*mm^2
smiData.Solid(9).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(9).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(9).opacity = 1;
smiData.Solid(9).ID = "Rotor1^Heli*:*Standard";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(10).mass = 0.32200000000000001;  % kg
smiData.Solid(10).CoM = [-40.121399888204756 2.9999999999999996 -153.77205677947325];  % mm
smiData.Solid(10).MoI = [6575.8034999999973 6644.6309999999976 70.759500000000003];  % kg*mm^2
smiData.Solid(10).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(10).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(10).opacity = 1;
smiData.Solid(10).ID = "Schiene^Heli*:*Standard";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(11).mass = 0.026000000000000002;  % kg
smiData.Solid(11).CoM = [160.99713878896375 13.977593426556368 39.75088456430737];  % mm
smiData.Solid(11).MoI = [3.9894332262055405 1.7837220299337784 3.5344716612268021];  % kg*mm^2
smiData.Solid(11).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(11).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(11).opacity = 1;
smiData.Solid(11).ID = "Gelenkblock3^Heli*:*Standard";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(12).mass = 0.28700000000000003;  % kg
smiData.Solid(12).CoM = [132.72136349181463 34.5 55.492389110996442];  % mm
smiData.Solid(12).MoI = [141.15018750000007 54.565875000000098 141.15018750000007];  % kg*mm^2
smiData.Solid(12).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(12).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(12).opacity = 1;
smiData.Solid(12).ID = "Motor1^Heli*:*Standard";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(13).mass = 0.20000000000000001;  % kg
smiData.Solid(13).CoM = [141.04261765968283 13.500000000000004 50.529205786609069];  % mm
smiData.Solid(13).MoI = [661.94999999999993 1299.6000000000004 661.95000000000039];  % kg*mm^2
smiData.Solid(13).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(13).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(13).opacity = 1;
smiData.Solid(13).ID = "Rotor2^Heli*:*Standard";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(14).mass = 0.050000000000000003;  % kg
smiData.Solid(14).CoM = [-215.40626799516099 9.98518652587099 -65.375157385920346];  % mm
smiData.Solid(14).MoI = [43.580830824954745 83.823412435767978 43.580830824954653];  % kg*mm^2
smiData.Solid(14).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(14).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(14).opacity = 1;
smiData.Solid(14).ID = "Standfuss*:*Standard";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(3).Rz.Pos = 0.0;
smiData.RevoluteJoint(3).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = 8.9959671327898869e-15;  % deg
smiData.RevoluteJoint(1).ID = "[Arm-1:-:Heli-1]";

smiData.RevoluteJoint(2).Rz.Pos = -1.5654292572828238e-15;  % deg
smiData.RevoluteJoint(2).ID = "[Mast-1:-:Arm-1]";

smiData.RevoluteJoint(3).Rz.Pos = -13.005854851215192;  % deg
smiData.RevoluteJoint(3).ID = "[Mast-1:-:Standfuss-1]";

