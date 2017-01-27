
% XX=[0,2,4,6,8,10,12,14,16,18,20,22;];
% Ya=[2.27692298496089,2.44617139063115,3.89713178123585,4.02345782832729,4.29482862297582,4.31709948006086,49.9502220488384,55.0344460805029,51.4387443596564,57.3815584570930,63.7655167881490,69.7951999011371;];
% YY=roundn(Ya,-2)';
% X=XX;
% Y=YY;
LRP=[-0.333555045871560,-0.333555045871560,-0.333708256880734,-0.334678899082569,-0.337558715596330,-0.343563302752294,-0.353599082568807,-0.368471559633028,-0.388063302752293,-0.410980733944954,-0.435161467889908,-0.458560550458716,-0.479974311926606,-0.499552293577982,-0.518407339449541,-0.536286238532110,-0.549886238532110,-0.553041284403670,-0.539320183486239,-0.504838532110092,-0.449645871559633,-0.377566972477064,-0.296050458715597,-0.215026605504587,-0.144122018348624,-0.0905862385321100,-0.0595623853211009,-0.0551981651376147,-0.0793045871559634,-0.129416513761468,-0.198146788990826,-0.274250458715596,-0.345037614678899,-0.399089908256881,-0.428209174311927,-0.428133944954128,-0.398783486238532,-0.344485321100917,-0.272961467889908,-0.193614678899082,-0.116513761467890,-0.0521477064220184,-0.0106733944954129,0.000438532110091732,-0.0212458715596330,-0.0721807339449541,-0.143800000000000,-0.224486238532110,-0.302245871559633,-0.368039449541284,-0.417536697247706,-0.450350458715596,-0.467244036697248,-0.468028440366972,-0.451395412844037,-0.417017431192661,-0.367150458715596,-0.306528440366972,-0.240844954128440,-0.175846788990826,-0.117000917431193,-0.0690963302752293,-0.0349284403669725,-0.0141761467889909,-0.00321100917431201,0.00443027522935782,0.0168385321100917,0.0423155963302753,0.0873587155963304,0.155395412844037,0.246411009174312,0.357227522935780,0.480866055045871,0.606189908256881,0.719109174311927,0.805983486238532,0.857590825688074,0.871183486238532,0.850191743119266,0.801277064220184,0.731889908256881,0.649511009174312,0.562519266055046,0.480219266055046,0.411572477064220,0.362664220183486,0.335445871559633,0.328374311926606,0.339600000000000,0.368677064220183,0.415013761467890,0.475364220183486,0.544062385321101,0.614925688073394,0.683241284403670,0.745284403669724,0.797003669724770,0.833361467889908,0.850368807339450,0.847208256880734,0.825954128440367,0.789587155963302,0.740300000000000,0.679933944954129,0.611570642201835,0.540117431192661,0.470908256880734,0.407457798165138,0.350558715596330,0.299260550458716,0.252146788990826,0.209456880733945,0.174197247706422,0.151125688073395,0.143698165137615,0.151906422018349,0.173035779816514,0.203757798165138,0.241218348623853,0.282324770642202,0.322722018348624,0.357653211009174,0.383760550458716,0.400344036697248,0.409018348623853,0.413194495412844,0.417425688073395,0.426555963302752,0.444591743119266,0.472806422018349,0.508932110091743,0.548600000000000,0.587695412844037,0.623729357798165,0.655642201834862,0.683235779816514,0.706530275229358,0.726131192660551,0.743885321100918,0.762915596330275,0.786023853211009,0.813400000000000,0.842748623853211,0.871720183486239,0.899595412844037,0.926669724770642,0.953046788990825,0.978582568807340,1.00418715596330,1.03170642201835,1.06220275229358,1.09388256880734,1.12162110091743,1.13903853211009,1.14129724770642,1.12679816513761,1.09665321100917,1.05245321100917,0.994542201834862,0.923504587155963,0.843155963302752,0.761844036697248,0.691043119266055,0.642107339449541,0.622983486238532,0.635387155963303,0.674576146788991,0.731955963302752,0.798640366972477,0.866900917431193,0.929861467889908,0.981155045871560,1.01609633027523,1.03288715596330,1.03167798165138,1.01356238532110,0.980866972477064,0.938211926605505,0.892140366972478,0.849419266055046,0.814751376146789,0.788569724770642,0.766317431192661,0.740185321100918,0.702090825688073,0.645877981651376,0.568360550458715,0.469551376146789,0.352724770642202,0.223412844036697,0.0884412844036698,-0.0446495412844037,-0.167962385321101,-0.274504587155963,-0.359407339449541,-0.420711926605504,-0.459019266055046,-0.476844954128441,-0.478577064220183,-0.470255963302751,-0.457966972477064,-0.445575229357798,-0.434175229357798,-0.423152293577982,-0.410753211009175,-0.394237614678900,-0.370500917431193,-0.337233027522935,-0.294198165137615,-0.244086238532110,-0.191197247706422,-0.138900917431193,-0.0878981651376147,-0.0362935779816514,0.0199284403669725,0.0863201834862385,0.168499082568807,0.270453211009174,0.393855963302752,0.538463302752294,0.702466972477064,0.883508256880734,1.07949449541284,1.28850000000000,1.50714403669725,1.73061009174312,1.95467247706422,2.17759633027523,2.39961467889908,2.62095229357798,2.84107064220184,3.05873853211009,3.27169541284404,3.47588623853211,3.66579082568807,3.83626513761468,3.98408623853211,4.10803669724771,4.20774770642202,4.28256697247706,4.33072018348624,4.34994311926606,4.33927706422019,4.30062110091743,4.23837064220184,4.15816697247707,4.06611743119266,3.96812844036697,3.86933211009174,3.77400458715596,3.68631376146789,3.61039082568807,3.54979174311926,3.50682477064220,3.48247889908257,3.47641559633027,3.48721100917431,3.51296788990826,3.55161467889908,3.60082660550459,3.65801467889908,3.71964770642202,3.78032568807340,3.83227522935780,3.86652568807340,3.87486972477064,3.85068807339450,3.78920733944954,3.68862477064220,3.55138623853211,3.38387614678899,3.19433761467890,2.99103211009174,2.78118440366973,2.57044770642202,2.36224036697248,2.15780275229358,1.95714770642202,1.76136238532110,1.57376880733945,1.39930000000000,1.24294403669725,1.10825779816514,0.996986238532110,0.908890825688073,0.841227522935780,0.788147706422018,0.741542201834862,0.693420183486239,0.638323853211009,0.574369724770642,0.502528440366972,0.424911926605505,0.343670642201835,0.260842201834862,0.179374311926605,0.103871559633028,0.0395596330275229,-0.00952385321100927,-0.0413238532110092,-0.0554550458715596,-0.0525027522935780,-0.0342596330275229,-0.00435412844036700,0.0311266055045873,0.0643779816513764,0.0881256880733946,0.0976596330275230,0.0915706422018348,0.0708018348623853,0.0376229357798166,-0.00451009174311925,-0.0509321100917431,-0.0960972477064221,-0.135369724770642,-0.166645871559633,-0.190100917431193,-0.206449541284404,-0.216090825688073,-0.220433944954128,-0.224016513761468,-0.234440366972477,-0.260888073394496,-0.312041284403670,-0.393835779816514,-0.507486238532110,-0.649231192660550,-0.811075229357798,-0.982114678899082,-1.15005779816514,-1.30363577981651,-1.43445229357798,-1.53801100917431,-1.61268532110092,-1.65856422018349,-1.67724954128440,-1.67338532110092,-1.65633027522936,-1.63998532110092,-1.64040917431193,-1.67192385321101,-1.74323486238532,-1.85489174311927,-1.99998073394495,-2.16694311926605,-2.34252385321101,-2.51310917431193,-2.66584770642202,-2.79021100917431,-2.88003577981651,-2.93499082568807,-2.96081834862386,-2.96804954128440,-2.97054862385321,-2.98368440366972,-3.02123119266055,-3.09179174311927,-3.19626697247706,-3.32807339449541,-3.47548807339450,-3.62473211009174,-3.76209633027523,-3.87632018348624,-3.96030642201835,-4.01153394495413,-4.03109908256881,-4.02241192660551,-3.99034678899083,-3.94059357798165,-3.87934311926606,-3.81320733944954,-3.74977981651376,-3.69789449541284,-3.66677706422018,-3.66386972477064,-3.69264128440367,-3.75118623853211,-3.83193761467890,-3.92277064220184,-4.00984954128440,-4.08149449541284,-4.13044678899083,-4.15398715596330,-4.15238623853211,-4.12782110091743,-4.08406513761468,-4.02606146788991,-3.95909633027523,-3.88841284403670,-3.81940550458716,-3.75751559633028,-3.70693302752293,-3.66951009174312,-3.64480917431193,-3.63076238532110,-3.62401284403670,-3.61970550458716,-3.61130366972477,-3.59148073394496,-3.55372935779816,-3.49386055045871,-3.41111559633028,-3.30810917431193,-3.19009082568807,-3.06391834862385,-2.93703486238532,-2.81724954128440,-2.71255688073395,-2.63020733944954,-2.57435229357798,-2.54420733944954,-2.53452385321101,-2.53747431192661,-2.54449633027523,-2.54790275229358,-2.54208256880734,-2.52431467889908,-2.49462018348624,-2.45557155963303,-2.41182752293578,-2.36914220183486,-2.33303486238532,-2.30849174311927,-2.30055321100917,-2.31291834862385,-2.34513853211009,-2.39080642201835,-2.43897431192660,-2.47841100917431,-2.50095045871560,-2.50256238532110,-2.48230458715596,-2.44117706422018,-2.38042385321101,-2.30055412844037,-2.20144770642202,-2.08449174311927,-1.95450091743119,-1.81922293577982,-1.68706513761468,-1.56509633027523,-1.45889541284404,-1.37301743119266,-1.31078807339450,-1.27292660550459,-1.25710275229358,-1.25873394495413,-1.27120183486238,-1.28583577981651,-1.29284678899083,-1.28359541284404,-1.25301743119266,-1.20139633027523,-1.13505321100917,-1.06431651376147,-1.00048899082569,-0.952741284403670,-0.926642201834862,-0.923998165137615,-0.943927522935780,-0.983833944954129,-1.03991926605505,-1.10738990825688,-1.18187431192661,-1.26054220183486,-1.34191192660550,-1.42378990825688,-1.50136238532110,-1.56700550458716,-1.61206513761468,-1.62878807339450,-1.61161926605505,-1.55874220183486,-1.47368715596330,-1.36613577981651,-1.25006605504587,-1.14000458715596,-1.04718440366972,-0.978387155963303,-0.936990825688074,-0.924533027522936,-0.940511009174312,-0.982083486238532,-1.04439449541284,-1.12122568807339,-1.20511467889908,-1.28670091743119,-1.35412201834862,-1.39536330275229,-1.40291651376147,-1.37723119266055,-1.32557889908257,-1.25857706422018,-1.18644954128440,-1.11684495412844,-1.05406146788991,-0.999643119266055,-0.953111926605505,-0.912270642201835,-0.873269724770642,-0.832212844036697;];
Y=roundn(LRP(1,1:260),-2)';
n=length(Y)-1;
X = 0 : 2:2*n;
time=0:2:1000;
[onset]=regression(LRP,time);




d=1:1:length(X)
n=length(X)
gg=zeros(1,n)
for I=2:length(X)-1
[gg(1,I)]=find_g(X,Y,I);
end
[min_g,index]=min(gg(1,2:length(gg)-2))
hold on
plot(d,X,'r.')
plot(Y,'k*')
plot(gg)