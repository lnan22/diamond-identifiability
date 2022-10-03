--------------------------------------------------------
-- Topology identifiability N_down vs N_left         --
--------------------------------------------------------
-- To run in console: cat ndown-nleft.m2 | M2 &> ndown-nleft_out.txt
-- we call z's the variables on N_down, and v's the variables in N_left
-- gz: gamma for N_down; gv: gamma for N_left
-- Note that we only include one (or 2) equation per quartet (as all three CF sum up to 1)

R = QQ[gz, z23, z3, z13, z1, z01, gv, v0, v02, v23, v13, v1, v01]

I = ideal(
z3 - (1 - gv)* v1 - gv*v13*v1,
z13*z1 - (1 - gv)^2*v0*v01 - gv*(1 - gv)*v0*(3-v13)- gv^2*v0*v02*v23,
z3*z13*z1 - (1 - gv)^2*v1*v0*v01 - 2*gv*(1 - gv)*v1*v0 - gv^2*v1*v0*v02*v23*v13,
(1 - gz)*z3 + gz*z23*z3 - v13*v1,
(1 - gz)*z13*z3 + gz*z3 - (1 - gv)*v1 - gv*v23*v13*v1,
(1 - gz)*z1 + gz*z23*z13*z1 - (1 - gv)^2*v0*v13*v01 - gv*(1 - gv)*v0*(3-v23) - gv^2*v0*v02,
(1 - gz)*z1 + gz*z13*z1 - (1 - gv)^2*v0*v01 - gv*(1 - gv)*v0*(3-v23*v13) - gv^2*v0*v02,
(1 - gz)*(3 - 2*z13) + gz*z23 - (1 - gv)*v23 - gv*(3 - 2*v02),
(1 - gz)*z13 + gz*(3-2*z23) - (1 - gv)*(3-2*v23) - gv*v02)


G = eliminate(I,{gv, v0, v02, v23, v13, v1, v01})


