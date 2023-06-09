%crear FIS
tipFIS=mamfis(...
    'name','fuzzy tipping',...
    'numinputs',2,'numinputMFs',3,...
    'numoutputs',1,'numoutputMFs',3,...
    'addrule','none'...
    );

%actualizar entrada 1
tipFIS.Inputs(1).name='creatinina';
tipFIS.Inputs(1).Range=[0.6 8];
tipFIS.Inputs(1).MembershipFunctions(1).Name='bajo';
tipFIS.Inputs(1).MembershipFunctions(1).Type='gaussmf';
tipFIS.Inputs(1).MembershipFunctions(1).Parameters=[0.5 0.6];
tipFIS.Inputs(1).MembershipFunctions(2).Name='medio_bajo';
tipFIS.Inputs(1).MembershipFunctions(2).Type='gauss2mf';
tipFIS.Inputs(1).MembershipFunctions(2).Parameters=[0.5 0.6 0.5 2];
tipFIS.Inputs(1).MembershipFunctions(3).Name='medio';
tipFIS.Inputs(1).MembershipFunctions(3).Type='gauss2mf';
tipFIS.Inputs(1).MembershipFunctions(3).Parameters=[0.5 2.1 0.5 3];
tipFIS.Inputs(1).MembershipFunctions(4).Name='medio_alto';
tipFIS.Inputs(1).MembershipFunctions(4).Type='gauss2mf';
tipFIS.Inputs(1).MembershipFunctions(4).Parameters=[0.5 3.1 0.5 4];
tipFIS.Inputs(1).MembershipFunctions(5).Name='alto';
tipFIS.Inputs(1).MembershipFunctions(5).Type='gauss2mf';
tipFIS.Inputs(1).MembershipFunctions(5).Parameters=[0.8 5 0.5 8];

%actualizar entrada 2
tipFIS.Inputs(2).name='filtrado_glomerular';
tipFIS.Inputs(2).Range=[0 150];
tipFIS.Inputs(1).MembershipFunctions(1).Name='bajo';
tipFIS.Inputs(1).MembershipFunctions(1).Type='gauss2mf';
tipFIS.Inputs(1).MembershipFunctions(1).Parameters=[100 0 100 90];
tipFIS.Inputs(1).MembershipFunctions(2).Name='medio_bajo';
tipFIS.Inputs(1).MembershipFunctions(2).Type='gauss2mf';
tipFIS.Inputs(1).MembershipFunctions(2).Parameters=[0.001 60 0.001 89];
tipFIS.Inputs(1).MembershipFunctions(3).Name='medio';
tipFIS.Inputs(1).MembershipFunctions(3).Type='gauss2mf';
tipFIS.Inputs(1).MembershipFunctions(3).Parameters=[1 30 1 59];
tipFIS.Inputs(1).MembershipFunctions(4).Name='medio_alto';
tipFIS.Inputs(1).MembershipFunctions(4).Type='gauss2mf';
tipFIS.Inputs(1).MembershipFunctions(4).Parameters=[1 60 1 89];
tipFIS.Inputs(1).MembershipFunctions(5).Name='alto';
tipFIS.Inputs(1).MembershipFunctions(5).Type='gauss2mf';
tipFIS.Inputs(1).MembershipFunctions(5).Parameters=[1 90 1 150];

%actualizar entrada 3
tipFIS.Inputs(3).name='presion_sistolica';
tipFIS.Inputs(3).Range=[90 200];
tipFIS.Inputs(3).MembershipFunctions(1).Name='normal';
tipFIS.Inputs(3).MembershipFunctions(1).Type='trapmf';
tipFIS.Inputs(3).MembershipFunctions(1).Parameters=[90 90 120 125];
tipFIS.Inputs(3).MembershipFunctions(2).Name='ligeramente_alto';
tipFIS.Inputs(3).MembershipFunctions(2).Type='trapmf';
tipFIS.Inputs(3).MembershipFunctions(2).Parameters=[120 127 139 145];
tipFIS.Inputs(3).MembershipFunctions(3).Name='elevado';
tipFIS.Inputs(3).MembershipFunctions(3).Type='trapmf';
tipFIS.Inputs(3).MembershipFunctions(3).Parameters=[135 140 159 165];
tipFIS.Inputs(3).MembershipFunctions(4).Name='hipertension_moderada';
tipFIS.Inputs(3).MembershipFunctions(4).Type='trapmf';
tipFIS.Inputs(3).MembershipFunctions(4).Parameters=[155 160 179 185];
tipFIS.Inputs(3).MembershipFunctions(5).Name='hipertension_severa';
tipFIS.Inputs(3).MembershipFunctions(5).Type='trapmf';
tipFIS.Inputs(3).MembershipFunctions(5).Parameters=[175 180 200 200];


%actualizar entrada 4
tipFIS.Inputs(4).name='presion_diastolica';
tipFIS.Inputs(4).Range=[70 130];
tipFIS.Inputs(4).MembershipFunctions(1).Name='normal';
tipFIS.Inputs(4).MembershipFunctions(1).Type='trapmf';
tipFIS.Inputs(4).MembershipFunctions(1).Parameters=[70 70 80 82];
tipFIS.Inputs(4).MembershipFunctions(2).Name='ligeramente_alto';
tipFIS.Inputs(4).MembershipFunctions(2).Type='trapmf';
tipFIS.Inputs(4).MembershipFunctions(2).Parameters=[80 82 89 90];
tipFIS.Inputs(4).MembershipFunctions(3).Name='elevado';
tipFIS.Inputs(4).MembershipFunctions(3).Type='trapmf';
tipFIS.Inputs(4).MembershipFunctions(3).Parameters=[89 90  99 100];
tipFIS.Inputs(4).MembershipFunctions(4).Name='hipertension_moderada';
tipFIS.Inputs(4).MembershipFunctions(4).Type='trapmf';
tipFIS.Inputs(4).MembershipFunctions(4).Parameters=[99 100 108 110];
tipFIS.Inputs(4).MembershipFunctions(5).Name='hipertension_severa';
tipFIS.Inputs(4).MembershipFunctions(5).Type='trapmf';
tipFIS.Inputs(4).MembershipFunctions(5).Parameters=[108 110 130 130];

%actualizar salida
tipFIS.Outputs(1).Name='diagnostico';
tipFIS.Outputs(1).Range=[0 100];
tipFIS.Outputs(1).MembershipFunctions(1).Name='rinon_sano';
tipFIS.Outputs(1).MembershipFunctions(1).Type='trimf';
tipFIS.Outputs(1).MembershipFunctions(1).Parameters=[0 15 30];
tipFIS.Outputs(1).MembershipFunctions(2).Name='etapa_1';
tipFIS.Outputs(1).MembershipFunctions(2).Type='trimf';
tipFIS.Outputs(1).MembershipFunctions(2).Parameters=[15 30 45];
tipFIS.Outputs(1).MembershipFunctions(3).Name='etapa_2';
tipFIS.Outputs(1).MembershipFunctions(3).Type='trimf';
tipFIS.Outputs(1).MembershipFunctions(3).Parameters=[30 45 60];
tipFIS.Outputs(1).MembershipFunctions(4).Name='etapa_3';
tipFIS.Outputs(1).MembershipFunctions(4).Type='trimf';
tipFIS.Outputs(1).MembershipFunctions(4).Parameters=[45 60 75];
tipFIS.Outputs(1).MembershipFunctions(5).Name='etapa_4';
tipFIS.Outputs(1).MembershipFunctions(5).Type='trimf';
tipFIS.Outputs(1).MembershipFunctions(5).Parameters=[60 75 90];
tipFIS.Outputs(1).MembershipFunctions(6).Name='etapa_5';
tipFIS.Outputs(1).MembershipFunctions(6).Type='trimf';
tipFIS.Outputs(1).MembershipFunctions(6).Parameters=[75 90 100];

subplot(3,2,1)
plotmf(tipFIS,'input',1,1000);
subplot(3,2,2)
plotmf(tipFIS,'input',2,1000);
subplot(3,2,3)
plotmf(tipFIS,'input',3,1000);
subplot(3,2,4)
plotmf(tipFIS,'input',4,1000);
subplot(3,2,5)
plotmf(tipFIS,'output',1,1000);

%especificas reglas difusas
rules=[...
   "If creatinina is bajo and filtracion_glomerular is alto and presion_sistolica is normal and presion_diastolica is normal then diagnostico is rinon_sano";...
    "If creatinina is bajo and filtracion_glomerular is medio_alto and presion_sistolica is normal and presion_diastolica is normal then diagnostico is etapa_1";...
    "If creatinina is medio_bajo and filtracion_glomerular is medio_alto and presion_sistolica is normal and presion_diastolica is normal then diagnostico is etapa_1";...
    "If creatinina is bajo and filtracion_glomerular is medio_alto and presion_sistolica is ligeramente_alto and presion_diastolica is ligeramente_alto then diagnostico is etapa_1";...
    "If creatinina is medio_bajo and filtracion_glomerular is medio_alto and presion_sistolica is ligeramente_alto and presion_diastolica is ligeramente_alto then diagnostico is etapa_1";...
    "If creatinina is medio and filtracion_glomerular is medio and presion_sistolica is elevado and presion_diastolica is elevado then diagnostico is etapa_2";...
    "If creatinina is medio and filtracion_glomerular is medio and presion_sistolica is hipertension_moderada and presion_diastolica is hipertension_moderada then diagnostico is etapa_2";...
    "If creatinina is medio_alto and filtracion_glomerular is medio and presion_sistolica is hipertension_severa and presion_diastolica is hipertension_severa then diagnostico is etapa_3";...
    "If creatinina is medio_alto and filtracion_glomerular is medio_bajo and presion_sistolica is hipertension_severa and presion_diastolica is hipertension_severa then diagnostico is etapa_4";...
    "If creatinina is alto and filtracion_glomerular is medio_bajo and presion_sistolica is hipertension_severa and presion_diastolica is hipertension_severa then diagnostico is etapa_4";...
    "If creatinina is alto and filtracion_glomerular is bajo and presion_sistolica is hipertension_severa and presion_diastolica is hipertension_severa then diagnostico is etapa_5";...
    ];
figure
tipFIS=addRule(tipFIS,rules);
gensurf(tipFIS)

%agregar nuevas reglas
%new_rule="If food is bien then propina is alta";
%tipFIS=addRule(tipFIS,new_rule);
%gensurf(tipFIS);