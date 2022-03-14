% Simscape(TM) Multibody(TM) version: 7.3

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(43).translation = [0.0 0.0 0.0];
smiData.RigidTransform(43).angle = 0.0;
smiData.RigidTransform(43).axis = [0.0 0.0 0.0];
smiData.RigidTransform(43).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [31.942694625765018 0 0];  % mm
smiData.RigidTransform(1).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(1).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(1).ID = 'B[hip_main_motor-2:-:thigh-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [54.795589009358238 182.0000000000019 1.8829382497642655e-12];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(2).axis = [-0.57735026918962562 -0.57735026918962562 0.57735026918962595];
smiData.RigidTransform(2).ID = 'F[hip_main_motor-2:-:thigh-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [-29.771435058890543 -82.050020267343811 27.281148774910431];  % mm
smiData.RigidTransform(3).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(3).axis = [1 0 0];
smiData.RigidTransform(3).ID = 'B[shin-2:-:simple_foot-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [25.281148774945084 34.999999999974129 -5.9000000001574797];  % mm
smiData.RigidTransform(4).angle = 2.0943951023931944;  % rad
smiData.RigidTransform(4).axis = [-0.57735026918962562 -0.5773502691896254 0.57735026918962629];
smiData.RigidTransform(4).ID = 'F[shin-2:-:simple_foot-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [-27.281148774910427 -1.1358059815548714e-15 -7.1054273576010019e-15];  % mm
smiData.RigidTransform(5).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(5).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(5).ID = 'B[thigh-2:-:shin-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-29.771435058943624 97.949979732649936 -27.281148774910704];  % mm
smiData.RigidTransform(6).angle = 1.8947119613117475e-15;  % rad
smiData.RigidTransform(6).axis = [0.081844629823929343 -0.99664510060953193 -7.7275874070641746e-17];
smiData.RigidTransform(6).ID = 'F[thigh-2:-:shin-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [36.457483022346679 78.219520387355999 8.2358059109073167];  % mm
smiData.RigidTransform(7).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(7).axis = [0.57735026918962584 -0.57735026918962573 0.57735026918962573];
smiData.RigidTransform(7).ID = 'B[hip-2:-:hip_main_motor-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [4.4415353242164821e-15 71.78114877491042 -2.0848420692489875e-14];  % mm
smiData.RigidTransform(8).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(8).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962562];
smiData.RigidTransform(8).ID = 'F[hip-2:-:hip_main_motor-2]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [-96.542516977653307 30.438371612445572 8.2358059109073132];  % mm
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = 'AssemblyGround[hip-2:hip-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(10).translation = [0 0 0];  % mm
smiData.RigidTransform(10).angle = 0;  % rad
smiData.RigidTransform(10).axis = [0 0 0];
smiData.RigidTransform(10).ID = 'AssemblyGround[hip-2:MX-28-1:dynamixel_x28series-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(11).translation = [0 0 18.600000000000001];  % mm
smiData.RigidTransform(11).angle = 2.5556430441331379;  % rad
smiData.RigidTransform(11).axis = [-0.30165538631255218 0.67416764528884976 -0.67416764528884976];
smiData.RigidTransform(11).ID = 'AssemblyGround[hip-2:MX-28-1:trust_washer-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(12).translation = [0 0 18.500000000000004];  % mm
smiData.RigidTransform(12).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(12).axis = [1 0 0];
smiData.RigidTransform(12).ID = 'AssemblyGround[hip-2:MX-28-1:HN07-N101-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(13).translation = [0 0 25.850000000000001];  % mm
smiData.RigidTransform(13).angle = 3.0474148417997187;  % rad
smiData.RigidTransform(13).axis = [-0.70632122756330173 0.047123741223943291 0.70632122756330162];
smiData.RigidTransform(13).ID = 'AssemblyGround[hip-2:MX-28-1:WB_M2.5x8-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(14).translation = [36.457483022346679 50.938371612445579 8.2358059109073132];  % mm
smiData.RigidTransform(14).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(14).axis = [1 0 0];
smiData.RigidTransform(14).ID = 'AssemblyGround[hip-2:MX-28-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(15).translation = [0 0 0];  % mm
smiData.RigidTransform(15).angle = 0;  % rad
smiData.RigidTransform(15).axis = [0 0 0];
smiData.RigidTransform(15).ID = 'AssemblyGround[hip_main_motor-2:MX-64-1:dynamixel_x64series-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(16).translation = [0 0 -19.780000000000005];  % mm
smiData.RigidTransform(16).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(16).axis = [-1 -0 -0];
smiData.RigidTransform(16).ID = 'AssemblyGround[hip_main_motor-2:MX-64-1:MF128ZZ-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(17).translation = [0 0 20.999999999999989];  % mm
smiData.RigidTransform(17).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(17).axis = [1 0 -8.3266726850142542e-17];
smiData.RigidTransform(17).ID = 'AssemblyGround[hip_main_motor-2:MX-64-1:HN05-N101-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(18).translation = [0 0 -23.25999999996726];  % mm
smiData.RigidTransform(18).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(18).axis = [1 0 0];
smiData.RigidTransform(18).ID = 'AssemblyGround[hip_main_motor-2:MX-64-1:RX64-CAP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(19).translation = [0 0 -23.5];  % mm
smiData.RigidTransform(19).angle = 1.5709217410237821;  % rad
smiData.RigidTransform(19).axis = [-0.99987459363482156 -0.011198147248548685 0.011198147248548685];
smiData.RigidTransform(19).ID = 'AssemblyGround[hip_main_motor-2:MX-64-1:HN05-i101-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(20).translation = [0 0 0];  % mm
smiData.RigidTransform(20).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(20).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(20).ID = 'AssemblyGround[hip_main_motor-2:MX-64-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(21).translation = [0 24 0];  % mm
smiData.RigidTransform(21).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(21).axis = [0.57735026918962562 -0.57735026918962573 0.57735026918962573];
smiData.RigidTransform(21).ID = 'AssemblyGround[hip_main_motor-2:hip_z_to_hip_y-connector-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(22).translation = [0 0 0];  % mm
smiData.RigidTransform(22).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(22).axis = [2.4980018054066022e-16 1 0];
smiData.RigidTransform(22).ID = 'AssemblyGround[thigh-2:thigh-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(23).translation = [0 0 -20.349999999972038];  % mm
smiData.RigidTransform(23).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(23).axis = [-0.04617711280313519 0.99893326816818273 0];
smiData.RigidTransform(23).ID = 'AssemblyGround[thigh-2:MX-28-1:RX28-CAP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(24).translation = [0 0 0];  % mm
smiData.RigidTransform(24).angle = 0;  % rad
smiData.RigidTransform(24).axis = [0 0 0];
smiData.RigidTransform(24).ID = 'AssemblyGround[thigh-2:MX-28-1:dynamixel_x28series-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(25).translation = [0 0 18.599999999999998];  % mm
smiData.RigidTransform(25).angle = 2.5556430441331379;  % rad
smiData.RigidTransform(25).axis = [-0.30165538631255201 0.67416764528884987 -0.67416764528884976];
smiData.RigidTransform(25).ID = 'AssemblyGround[thigh-2:MX-28-1:trust_washer-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(26).translation = [0 0 18.500000000000011];  % mm
smiData.RigidTransform(26).angle = 1.5707963267948966;  % rad
smiData.RigidTransform(26).axis = [1 0 0];
smiData.RigidTransform(26).ID = 'AssemblyGround[thigh-2:MX-28-1:HN07-N101-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(27).translation = [0 0 25.849999999999998];  % mm
smiData.RigidTransform(27).angle = 3.0474148417997187;  % rad
smiData.RigidTransform(27).axis = [-0.70632122756330162 0.047123741223943257 0.70632122756330173];
smiData.RigidTransform(27).ID = 'AssemblyGround[thigh-2:MX-28-1:WB_M2.5x8-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(28).translation = [0 0 -20.350000000000009];  % mm
smiData.RigidTransform(28).angle = 1.6266588160769206;  % rad
smiData.RigidTransform(28).axis = [0.94564166983679376 -0.22995850959279618 -0.22995850959279623];
smiData.RigidTransform(28).ID = 'AssemblyGround[thigh-2:MX-28-1:MF106ZZ-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(29).translation = [0 0 -22.649999999957252];  % mm
smiData.RigidTransform(29).angle = 1.6025511581161505;  % rad
smiData.RigidTransform(29).axis = [-0.17542087675792795 -0.968738887417533 -0.17542087675792792];
smiData.RigidTransform(29).ID = 'AssemblyGround[thigh-2:MX-28-1:WB_M2.5x8-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(30).translation = [0 0 -20.499999999999996];  % mm
smiData.RigidTransform(30).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(30).axis = [-1 1.8041124150158791e-16 -2.4980018054066022e-16];
smiData.RigidTransform(30).ID = 'AssemblyGround[thigh-2:MX-28-1:HN07-i101-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(31).translation = [0 0 0];  % mm
smiData.RigidTransform(31).angle = 3.1415926535897927;  % rad
smiData.RigidTransform(31).axis = [-0.70710678118654746 1.9626155733547187e-16 -0.70710678118654757];
smiData.RigidTransform(31).ID = 'AssemblyGround[thigh-2:MX-28-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(32).translation = [0 0 0];  % mm
smiData.RigidTransform(32).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(32).axis = [0 1 5.5511151231257821e-17];
smiData.RigidTransform(32).ID = 'AssemblyGround[thigh-2:knee_bumper-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(33).translation = [0 0 -20.349999999972031];  % mm
smiData.RigidTransform(33).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(33).axis = [-0.046177112803135141 0.99893326816818273 0];
smiData.RigidTransform(33).ID = 'AssemblyGround[shin-2:MX-28-1:RX28-CAP-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(34).translation = [0 0 0];  % mm
smiData.RigidTransform(34).angle = 0;  % rad
smiData.RigidTransform(34).axis = [0 0 0];
smiData.RigidTransform(34).ID = 'AssemblyGround[shin-2:MX-28-1:dynamixel_x28series-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(35).translation = [0 0 18.599999999999994];  % mm
smiData.RigidTransform(35).angle = 2.5556430441331379;  % rad
smiData.RigidTransform(35).axis = [-0.30165538631255218 0.67416764528884976 -0.67416764528884976];
smiData.RigidTransform(35).ID = 'AssemblyGround[shin-2:MX-28-1:trust_washer-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(36).translation = [0 0 18.499999999999996];  % mm
smiData.RigidTransform(36).angle = 1.570796326794897;  % rad
smiData.RigidTransform(36).axis = [1 0 0];
smiData.RigidTransform(36).ID = 'AssemblyGround[shin-2:MX-28-1:HN07-N101-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(37).translation = [0 0 25.849999999999991];  % mm
smiData.RigidTransform(37).angle = 3.0474148417997187;  % rad
smiData.RigidTransform(37).axis = [-0.70632122756330162 0.047123741223943284 0.70632122756330162];
smiData.RigidTransform(37).ID = 'AssemblyGround[shin-2:MX-28-1:WB_M2.5x8-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(38).translation = [0 0 -20.350000000000001];  % mm
smiData.RigidTransform(38).angle = 1.6266588160769209;  % rad
smiData.RigidTransform(38).axis = [0.94564166983679376 -0.22995850959279621 -0.22995850959279623];
smiData.RigidTransform(38).ID = 'AssemblyGround[shin-2:MX-28-1:MF106ZZ-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(39).translation = [0 0 -22.649999999957252];  % mm
smiData.RigidTransform(39).angle = 1.6025511581161502;  % rad
smiData.RigidTransform(39).axis = [-0.17542087675792786 -0.968738887417533 -0.17542087675792795];
smiData.RigidTransform(39).ID = 'AssemblyGround[shin-2:MX-28-1:WB_M2.5x8-3]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(40).translation = [0 0 -20.499999999999989];  % mm
smiData.RigidTransform(40).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(40).axis = [-1 2.081668171172168e-16 -2.081668171172168e-16];
smiData.RigidTransform(40).ID = 'AssemblyGround[shin-2:MX-28-1:HN07-i101-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(41).translation = [-29.771435058890543 -82.050020267343811 0];  % mm
smiData.RigidTransform(41).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(41).axis = [1 -5.7245874707234659e-17 0];
smiData.RigidTransform(41).ID = 'AssemblyGround[shin-2:MX-28-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(42).translation = [-29.771435058890535 -82.050020267343754 0];  % mm
smiData.RigidTransform(42).angle = 0;  % rad
smiData.RigidTransform(42).axis = [0 0 0];
smiData.RigidTransform(42).ID = 'AssemblyGround[shin-2:shin-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(43).translation = [11.947462879548857 -18.465129391116943 -50.783706723840666];  % mm
smiData.RigidTransform(43).angle = 0;  % rad
smiData.RigidTransform(43).axis = [0 0 0];
smiData.RigidTransform(43).ID = 'RootGround[hip-2]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(21).mass = 0.0;
smiData.Solid(21).CoM = [0.0 0.0 0.0];
smiData.Solid(21).MoI = [0.0 0.0 0.0];
smiData.Solid(21).PoI = [0.0 0.0 0.0];
smiData.Solid(21).color = [0.0 0.0 0.0];
smiData.Solid(21).opacity = 0.0;
smiData.Solid(21).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.0096876428547504837;  % kg
smiData.Solid(1).CoM = [115.17124274045133 13.210621490950471 -0.94987274356587503];  % mm
smiData.Solid(1).MoI = [5.0750757547835548 6.9655383794929069 4.868218984550853];  % kg*mm^2
smiData.Solid(1).PoI = [-0.019687969349660162 -0.89001533797569465 -0.18716464859868917];  % kg*mm^2
smiData.Solid(1).color = [0.73999999999999999 0.73999999999999999 0.73999999999999999];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'hip*:*left';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.071983272021946626;  % kg
smiData.Solid(2).CoM = [7.1942028321648906e-07 -11.515522364073082 -0.031795355377816178];  % mm
smiData.Solid(2).MoI = [20.286663023659603 12.455075936250685 17.187725594127578];  % kg*mm^2
smiData.Solid(2).PoI = [-0.30408826369991498 7.0984167972063494e-07 -1.5039982614114421e-06];  % kg*mm^2
smiData.Solid(2).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'dynamixel_x28series*:*Défaut';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.00034768005897278228;  % kg
smiData.Solid(3).CoM = [0 0.42500000000000004 0];  % mm
smiData.Solid(3).MoI = [0.011928975256701778 0.023816084039635584 0.011928975256701778];  % kg*mm^2
smiData.Solid(3).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(3).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'trust_washer*:*Défaut';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.0021249835947603091;  % kg
smiData.Solid(4).CoM = [4.7623330481857823e-05 1.2524893577058531 -6.9333484816596938e-05];  % mm
smiData.Solid(4).MoI = [0.062509902659687921 0.12020952453046951 0.062508831654275315];  % kg*mm^2
smiData.Solid(4).PoI = [3.5122484280912698e-07 4.0708896404399857e-07 1.6853950601743033e-07];  % kg*mm^2
smiData.Solid(4).color = [0.89411764705882346 0.9137254901960784 0.92941176470588238];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'HN07-N101*:*Défaut';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(5).mass = 0.00020016580446874003;  % kg
smiData.Solid(5).CoM = [4.0405677312404791 0 0];  % mm
smiData.Solid(5).MoI = [0.0003463608587375845 0.002098407301557313 0.002098407301557313];  % kg*mm^2
smiData.Solid(5).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(5).color = [0.89411764705882346 0.9137254901960784 0.92941176470588238];
smiData.Solid(5).opacity = 1;
smiData.Solid(5).ID = 'WB_M2.5x8*:*ISO 4762 M2.5 x 8 --- 8N';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(6).mass = 0.12600993577691957;  % kg
smiData.Solid(6).CoM = [3.8061093195446061e-07 -15.575466607294391 -0.08552667917641979];  % mm
smiData.Solid(6).MoI = [50.799109511253207 28.572153135755425 43.394906385298178];  % kg*mm^2
smiData.Solid(6).PoI = [-0.51457126788330732 -1.1633417416269912e-06 -2.2899607033632246e-06];  % kg*mm^2
smiData.Solid(6).color = [0.24705882352941178 0.24705882352941178 0.24705882352941178];
smiData.Solid(6).opacity = 1;
smiData.Solid(6).ID = 'dynamixel_x64series*:*Défaut';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(7).mass = 0.00067417321708975527;  % kg
smiData.Solid(7).CoM = [0 1.9090588827377954 0];  % mm
smiData.Solid(7).MoI = [0.010191214885669325 0.018911288217181795 0.010191214885669328];  % kg*mm^2
smiData.Solid(7).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(7).color = [0.89411764705882346 0.9137254901960784 0.92941176470588238];
smiData.Solid(7).opacity = 1;
smiData.Solid(7).ID = 'MF128ZZ*:*Défaut';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(8).mass = 0.0039130708260234721;  % kg
smiData.Solid(8).CoM = [-3.1964251134006513e-08 1.3776626929435014 7.5040419514046783e-06];  % mm
smiData.Solid(8).MoI = [0.19392391129750794 0.38084546590591817 0.19392773486871015];  % kg*mm^2
smiData.Solid(8).PoI = [1.2767014968270766e-06 0 0];  % kg*mm^2
smiData.Solid(8).color = [0.89411764705882346 0.9137254901960784 0.92941176470588238];
smiData.Solid(8).opacity = 1;
smiData.Solid(8).ID = 'HN05-N101*:*Défaut';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(9).mass = 0.000238513798338423;  % kg
smiData.Solid(9).CoM = [0 0 -0.10296829988535151];  % mm
smiData.Solid(9).MoI = [0.0015827442472799319 0.0015827442472799319 0.0029668043799641395];  % kg*mm^2
smiData.Solid(9).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(9).color = [0.89411764705882346 0.9137254901960784 0.92941176470588238];
smiData.Solid(9).opacity = 1;
smiData.Solid(9).ID = 'RX64-CAP*:*Défaut';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(10).mass = 0.0032518862084977796;  % kg
smiData.Solid(10).CoM = [0 -1.3799078475825126 0];  % mm
smiData.Solid(10).MoI = [0.18768473640420857 0.37105926755488577 0.18768473640420863];  % kg*mm^2
smiData.Solid(10).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(10).color = [0.89411764705882346 0.9137254901960784 0.92941176470588238];
smiData.Solid(10).opacity = 1;
smiData.Solid(10).ID = 'HN05-i101*:*Défaut';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(11).mass = 0.0043940579862802578;  % kg
smiData.Solid(11).CoM = [-4.9634355693315761 -0.0029476026401226525 3.1124172529503626];  % mm
smiData.Solid(11).MoI = [0.67902183721368614 0.36929790215152869 0.99965014124681206];  % kg*mm^2
smiData.Solid(11).PoI = [2.6343063782034025e-05 0.0093174388313817177 -0.00020830582499159323];  % kg*mm^2
smiData.Solid(11).color = [0.73999999999999999 0.73999999999999999 0.73999999999999999];
smiData.Solid(11).opacity = 1;
smiData.Solid(11).ID = 'hip_z_to_hip_y-connector*:*Défaut';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(12).mass = 0.0042735453836623563;  % kg
smiData.Solid(12).CoM = [136.32022577231893 286.45908077815034 58.72041275117715];  % mm
smiData.Solid(12).MoI = [0 0 0];  % kg*mm^2
smiData.Solid(12).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(12).color = [0.73999999999999999 0.73999999999999999 0.73999999999999999];
smiData.Solid(12).opacity = 1;
smiData.Solid(12).ID = 'thigh*:*left_MX28';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(13).mass = 0.00010176215507426351;  % kg
smiData.Solid(13).CoM = [0 0 -0.10068489342787838];  % mm
smiData.Solid(13).MoI = [0.00040386860064423649 0.00040386860064423643 0.0007498473794167298];  % kg*mm^2
smiData.Solid(13).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(13).color = [0.89411764705882346 0.9137254901960784 0.92941176470588238];
smiData.Solid(13).opacity = 1;
smiData.Solid(13).ID = 'RX28-CAP*:*Défaut';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(14).mass = 0.071983272021946612;  % kg
smiData.Solid(14).CoM = [7.1942028335033975e-07 -11.515522364073082 -0.031795355377816491];  % mm
smiData.Solid(14).MoI = [20.286663023659603 12.455075936250685 17.187725594127578];  % kg*mm^2
smiData.Solid(14).PoI = [-0.30408826369991532 7.0984167983323019e-07 -1.5039982616851006e-06];  % kg*mm^2
smiData.Solid(14).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(14).opacity = 1;
smiData.Solid(14).ID = 'dynamixel_x28series*:*U';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(15).mass = 0.00034768005897278228;  % kg
smiData.Solid(15).CoM = [0 0.42500000000000004 0];  % mm
smiData.Solid(15).MoI = [0.011928975256701778 0.023816084039635584 0.011928975256701778];  % kg*mm^2
smiData.Solid(15).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(15).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(15).opacity = 1;
smiData.Solid(15).ID = 'trust_washer*:*U';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(16).mass = 0.0021249772536169895;  % kg
smiData.Solid(16).CoM = [4.0559941421219012e-05 1.2524935815167706 -6.6285614264755915e-05];  % mm
smiData.Solid(16).MoI = [0.06250993648312296 0.12020947951293018 0.062508723671075184];  % kg*mm^2
smiData.Solid(16).PoI = [3.6142226270401971e-07 2.9009515308878174e-07 1.4424524103389858e-07];  % kg*mm^2
smiData.Solid(16).color = [0.89411764705882346 0.9137254901960784 0.92941176470588238];
smiData.Solid(16).opacity = 1;
smiData.Solid(16).ID = 'HN07-N101*:*U';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(17).mass = 0.00043951886533370363;  % kg
smiData.Solid(17).CoM = [0 1.4116257526632701 0];  % mm
smiData.Solid(17).MoI = [0.0042663618250351528 0.0078337000647232188 0.0042663618250351528];  % kg*mm^2
smiData.Solid(17).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(17).color = [0.89411764705882346 0.9137254901960784 0.92941176470588238];
smiData.Solid(17).opacity = 1;
smiData.Solid(17).ID = 'MF106ZZ*:*Défaut';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(18).mass = 0.0015849248543615476;  % kg
smiData.Solid(18).CoM = [0 -1.1390452945976903 0];  % mm
smiData.Solid(18).MoI = [0.057576986024324886 0.11370744317940358 0.057576986024324928];  % kg*mm^2
smiData.Solid(18).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(18).color = [0.89411764705882346 0.9137254901960784 0.92941176470588238];
smiData.Solid(18).opacity = 1;
smiData.Solid(18).ID = 'HN07-i101*:*Défaut';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(19).mass = 0.0006872121272343038;  % kg
smiData.Solid(19).CoM = [-26.831800581697721 6.9746592441737985 0.00018596379663460028];  % mm
smiData.Solid(19).MoI = [0.048050875828789599 0.052796005522565616 0.0062592447841169118];  % kg*mm^2
smiData.Solid(19).PoI = [-1.1198495967711618e-07 2.5248673716004135e-07 0.0016553316389627557];  % kg*mm^2
smiData.Solid(19).color = [0.25098039215686274 0.25098039215686274 0.25098039215686274];
smiData.Solid(19).opacity = 1;
smiData.Solid(19).ID = 'knee_bumper*:*Défaut';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(20).mass = 0.034665619045027678;  % kg
smiData.Solid(20).CoM = [-4.6759487978972327 107.0529317212239 -0.005058224673118253];  % mm
smiData.Solid(20).MoI = [122.01558470137722 22.245733290527287 122.61698814455868];  % kg*mm^2
smiData.Solid(20).PoI = [0.0062642511204847326 -0.0034781937720638903 5.6240156874842988];  % kg*mm^2
smiData.Solid(20).color = [0.73999999999999999 0.73999999999999999 0.73999999999999999];
smiData.Solid(20).opacity = 1;
smiData.Solid(20).ID = 'shin*:*MX28 - MX28';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(21).mass = 0.046775325452633187;  % kg
smiData.Solid(21).CoM = [0.4305571876447441 11.659884576939712 20.961196165812758];  % mm
smiData.Solid(21).MoI = [81.398916244128884 88.593803410368253 17.923243376486901];  % kg*mm^2
smiData.Solid(21).PoI = [3.2136662512471696 -2.4150277277500427 0.17632790745775204];  % kg*mm^2
smiData.Solid(21).color = [0.73999999999999999 0.73999999999999999 0.73999999999999999];
smiData.Solid(21).opacity = 1;
smiData.Solid(21).ID = 'simple_foot*:*left';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(4).Rz.Pos = 0.0;
smiData.RevoluteJoint(4).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = 13.205988831087717;  % deg
smiData.RevoluteJoint(1).ID = '[hip_main_motor-2:-:thigh-2]';

smiData.RevoluteJoint(2).Rz.Pos = -100.88471190340495;  % deg
smiData.RevoluteJoint(2).ID = '[shin-2:-:simple_foot-2]';

smiData.RevoluteJoint(3).Rz.Pos = -73.044099180277442;  % deg
smiData.RevoluteJoint(3).ID = '[thigh-2:-:shin-2]';

smiData.RevoluteJoint(4).Rz.Pos = -12.026466892289676;  % deg
smiData.RevoluteJoint(4).ID = '[hip-2:-:hip_main_motor-2]';

