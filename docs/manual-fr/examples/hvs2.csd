<CsoundSynthesizer>
sr=44100
0dbfs = 1
ginumLinesX init	4
giOutTab	ftgen	5,0,8, -2,      0
tb0_init	giOutTab
        FLpanel	"Prova HVS2",600,400,10,100,0
gk1,    gk2,   ih1, ih2  FLjoy   "HVS controller XY", 0,    1,     1,     0,     0,     0,     -1,     -1,     300,    300,     0, 50 
; *ihandle,                      *numlinesX,   *numlinesY, *iwidth, *iheight, *ix, *iy,*image;
        FLpanel_end

	instr	1
; Smooth control signals to avoid clicks
;              kx,  ky,  inumParms,  inumlinesX,  inumlinesY,  iOutTab,  iPosTab,  iSnapTab [, iConfigTab]
;                       *kx, *ky, *ihandle;
k0	init	0
printk2	tb0(k0)
  kris init 0.003
; Make parameters of synthesis depend on the table values produced by hvs
outs ares1, ares2
</CsInstruments>
f0 3600
i1 0 3600
</CsScore>