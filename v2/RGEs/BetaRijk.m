{{Tdp[i1, i2], 
  (Tdp[i1, i2]*(2*g1^2 - 5*(16*g3^2 + 6*gp^2*(Qd^2 - QHu^2 + Qq^2) - 
        3*\[Lambda]^2) + 45*trace[Yu, Adj[Yu]]))/15 + 
   2*Tep*conj[Ye11]*Yd[i1, i2] + 2*Tmup*conj[Ye22]*Yd[i1, i2] + 
   6*trace[Tdp, Adj[Yd]]*Yd[i1, i2] + MatMul[Tdp, Adj[Yd], Yd][i1, i2] + 
   3*MatMul[Tdp, Adj[Yu], Yu][i1, i2] + 2*MatMul[Yd, Adj[Yd], Tdp][i1, i2], 
  0}, {Tep, (-6*g1^2*Tep)/5 - 2*gp^2*Qe1^2*Tep + 2*gp^2*QHu^2*Tep - 
   2*gp^2*Ql1^2*Tep + Tep*\[Lambda]^2 + 5*Tep*Ye11*conj[Ye11] + 
   2*Tmup*Ye11*conj[Ye22] + 6*Ye11*trace[Tdp, Adj[Yd]] + 
   3*Tep*trace[Yu, Adj[Yu]], 0}, 
 {Tmup, (-6*g1^2*Tmup)/5 - 2*gp^2*Qe2^2*Tmup + 2*gp^2*QHu^2*Tmup - 
   2*gp^2*Ql2^2*Tmup + Tmup*\[Lambda]^2 + 2*Tep*Ye22*conj[Ye11] + 
   5*Tmup*Ye22*conj[Ye22] + 6*Ye22*trace[Tdp, Adj[Yd]] + 
   3*Tmup*trace[Yu, Adj[Yu]], 0}}
