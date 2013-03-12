SDDS1
&description text="Error log--input: flash_dfs1.ele  lattice: FLASH_2012_1200MeV.lte", contents="error log, elegant output" &end
&associate filename="flash_dfs1.ele", path="/cygdrive/e/GitHub/flashdfs/flashgu", contents="elegant input, parent" &end
&associate filename="FLASH_2012_1200MeV.lte", path="/cygdrive/e/GitHub/flashdfs/flashgu", contents="elegant lattice, parent" &end
&parameter name=Step, type=long, description="simulation step" &end
&parameter name=When, type=string, description="phase of simulation when errors were asserted" &end
&column name=ParameterValue, type=double, description="Perturbed value" &end
&column name=ParameterError, type=double, description="Perturbation value" &end
&column name=ElementParameter, type=string, description="Parameter name" &end
&column name=ElementName, type=string, description="Element name" &end
&column name=ElementOccurence, type=long, description="Element occurence" &end
&column name=ElementType, type=string, description="Element type" &end
&data mode=ascii, lines_per_row=1, no_row_counts=1 &end
0              ! simulation step
pre-correction
-2.565163309741821e-005 -2.565163309741821e-005         DX     Q5UND1 1       QUAD
1.413731893871579e-004 1.413731893871579e-004         DX     Q6UND1 1       QUAD
-1.128041870031320e-004 -1.128041870031320e-004         DX     Q5UND2 1       QUAD
-2.577324257369242e-004 -2.577324257369242e-004         DX     Q6UND2 1       QUAD
3.210911252042014e-004 3.210911252042014e-004         DX     Q5UND3 1       QUAD
-8.326316834346621e-005 -8.326316834346621e-005         DX     Q6UND3 1       QUAD
1.798944387277499e-004 1.798944387277499e-004         DX     Q5UND4 1       QUAD
-8.746002450959523e-005 -8.746002450959523e-005         DX     Q6UND4 1       QUAD
-1.476584754610755e-004 -1.476584754610755e-004         DX     Q5UND5 1       QUAD
1.212871880561071e-004 1.212871880561071e-004         DX     Q6UND5 1       QUAD
3.015084256635090e-004 3.015084256635090e-004         DX     Q5UND6 1       QUAD
8.389770579399570e-005 8.389770579399570e-005         DX     Q6UND6 1       QUAD
-7.627338470493165e-005 -7.627338470493165e-005         DX      Q9EXP 1       QUAD
-5.121701224168469e-005 -5.121701224168469e-005         DX     Q10EXP 1       QUAD
-3.235536670118828e-004 -3.235536670118828e-004         DX     Q11EXP 1       QUAD
-2.533803658420082e-005 -2.533803658420082e-005         DY     Q5UND1 1       QUAD
2.152366912026007e-004 2.152366912026007e-004         DY     Q6UND1 1       QUAD
-4.190059667421550e-005 -4.190059667421550e-005         DY     Q5UND2 1       QUAD
1.786509137555036e-004 1.786509137555036e-004         DY     Q6UND2 1       QUAD
8.191190176972657e-005 8.191190176972657e-005         DY     Q5UND3 1       QUAD
6.333670871902031e-005 6.333670871902031e-005         DY     Q6UND3 1       QUAD
-1.187502395481279e-004 -1.187502395481279e-004         DY     Q5UND4 1       QUAD
-1.336378443147459e-004 -1.336378443147459e-004         DY     Q6UND4 1       QUAD
-1.772076381383310e-004 -1.772076381383310e-004         DY     Q5UND5 1       QUAD
2.013268639091145e-004 2.013268639091145e-004         DY     Q6UND5 1       QUAD
-9.855607052480816e-006 -9.855607052480816e-006         DY     Q5UND6 1       QUAD
-2.180068749462275e-005 -2.180068749462275e-005         DY     Q6UND6 1       QUAD
9.343547124331053e-005 9.343547124331053e-005         DY      Q9EXP 1       QUAD
1.492047572292555e-004 1.492047572292555e-004         DY     Q10EXP 1       QUAD
-3.527589981377139e-004 -3.527589981377139e-004         DY     Q11EXP 1       QUAD
-1.889317947945432e-004 -1.889317947945432e-004         DX   BPM2UND1 1       MONI
6.018037670569348e-005 6.018037670569348e-005         DX   BPM4UND1 1       MONI
-2.251664017333297e-004 -2.251664017333297e-004         DX   BPM5UND1 1       MONI
3.542626352511791e-004 3.542626352511791e-004         DX   BPM2UND2 1       MONI
-1.219265929369876e-004 -1.219265929369876e-004         DX   BPM4UND2 1       MONI
7.104540465238111e-005 7.104540465238111e-005         DX   BPM5UND2 1       MONI
-4.469704550713588e-006 -4.469704550713588e-006         DX   BPM2UND3 1       MONI
-2.265975433576445e-004 -2.265975433576445e-004         DX   BPM4UND3 1       MONI
2.423613879525505e-005 2.423613879525505e-005         DX   BPM5UND3 1       MONI
4.139816534583232e-004 4.139816534583232e-004         DX   BPM2UND4 1       MONI
-1.143931630390495e-004 -1.143931630390495e-004         DX   BPM4UND4 1       MONI
2.292765469507517e-004 2.292765469507517e-004         DX   BPM5UND4 1       MONI
4.277414953181229e-005 4.277414953181229e-005         DX   BPM2UND5 1       MONI
2.606549585944878e-004 2.606549585944878e-004         DX   BPM4UND5 1       MONI
-1.538723427428835e-004 -1.538723427428835e-004         DX   BPM5UND5 1       MONI
1.826943950253900e-004 1.826943950253900e-004         DX   BPM2UND6 1       MONI
2.344263146856791e-005 2.344263146856791e-005         DX   BPM4UND6 1       MONI
1.315316378736692e-004 1.315316378736692e-004         DX   BPM5UND6 1       MONI
4.814859811548847e-005 4.814859811548847e-005         DX    BPM3EXP 1       MONI
1.506853839503856e-004 1.506853839503856e-004         DX    BPM9EXP 1       MONI
-7.481715413217924e-005 -7.481715413217924e-005         DY   BPM2UND1 1       MONI
3.242936487827800e-004 3.242936487827800e-004         DY   BPM4UND1 1       MONI
-4.595998908307569e-005 -4.595998908307569e-005         DY   BPM5UND1 1       MONI
3.407450099928033e-004 3.407450099928033e-004         DY   BPM2UND2 1       MONI
2.775158706762635e-004 2.775158706762635e-004         DY   BPM4UND2 1       MONI
-4.337428932971444e-005 -4.337428932971444e-005         DY   BPM5UND2 1       MONI
-7.486293730011739e-005 -7.486293730011739e-005         DY   BPM2UND3 1       MONI
-6.384971282523264e-005 -6.384971282523264e-005         DY   BPM4UND3 1       MONI
1.162875968305641e-004 1.162875968305641e-004         DY   BPM5UND3 1       MONI
-1.144360457580602e-004 -1.144360457580602e-004         DY   BPM2UND4 1       MONI
-3.639310996911312e-005 -3.639310996911312e-005         DY   BPM4UND4 1       MONI
-1.991375913142331e-004 -1.991375913142331e-004         DY   BPM5UND4 1       MONI
-1.907469190229160e-004 -1.907469190229160e-004         DY   BPM2UND5 1       MONI
-1.491471520066922e-004 -1.491471520066922e-004         DY   BPM4UND5 1       MONI
-1.267093618339871e-004 -1.267093618339871e-004         DY   BPM5UND5 1       MONI
1.156011387639498e-004 1.156011387639498e-004         DY   BPM2UND6 1       MONI
2.305881453915015e-004 2.305881453915015e-004         DY   BPM4UND6 1       MONI
6.158460269869530e-005 6.158460269869530e-005         DY   BPM5UND6 1       MONI
2.138205292886512e-004 2.138205292886512e-004         DY    BPM3EXP 1       MONI
2.978588138973135e-005 2.978588138973135e-005         DY    BPM9EXP 1       MONI
-3.000000000000000e-004 -3.000000000000000e-004         DX      MALIN 1     MALIGN
5.000000000000000e-005 5.000000000000000e-005        DXP      MALIN 1     MALIGN

