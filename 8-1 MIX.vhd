LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MUX_8 IS
  PORT(
    D0 : IN STD_LOGIC;
    D1 : IN STD_LOGIC;
    D2 : IN STD_LOGIC;
    D3 : IN STD_LOGIC;
    D4 : IN STD_LOGIC;
    D5 : IN STD_LOGIC;
    D6 : IN STD_LOGIC;
    D7 : IN STD_LOGIC;
    S0 : IN STD_LOGIC;
    S1 : IN STD_LOGIC;
    S2 : IN STD_LOGIC;
    Y : OUT STD_LOGIC
  );
END MUX_8;

ARCHITECTURE structural OF MUX_8 IS
  
  SIGNAL U0_OUT: STD_LOGIC;
  SIGNAL U1_OUT: STD_LOGIC;
  SIGNAL U2_OUT: STD_LOGIC;
  SIGNAL U3_OUT: STD_LOGIC;
  SIGNAL U4_OUT: STD_LOGIC;
  SIGNAL U5_OUT: STD_LOGIC;  
  SIGNAL U6_OUT: STD_LOGIC;
  SIGNAL U7_OUT: STD_LOGIC;

  COMPONENT and_gate0 IS
  PORT(
    d0 : IN STD_LOGIC;
    s0~ : IN STD_LOGIC;
    s1~ : IN STD_LOGIC;
    s2~ : IN STD_LOGIC;
    z0 : OUT STD_LOGIC
  );
END and_gate0;

COMPONENT and_gate1 IS
  PORT(
    d1 : IN STD_LOGIC;
    s0~ : IN STD_LOGIC;
    s1~ : IN STD_LOGIC;
    s2 : IN STD_LOGIC;
    z1 : OUT STD_LOGIC
  );
END and_gate1;

COMPONENT and_gate2 IS
  PORT(
    d2 : IN STD_LOGIC;
    s0~ : IN STD_LOGIC;
    s1 : IN STD_LOGIC;
    s2~ : IN STD_LOGIC;
    z2 : OUT STD_LOGIC
  );
END and_gate2;

COMPONENT and_gate3 IS
  PORT(
    d3 : IN STD_LOGIC;
    s0~ : IN STD_LOGIC;
    s1 : IN STD_LOGIC;
    s2 : IN STD_LOGIC;
    z3 : OUT STD_LOGIC
  );
END and_gate3;

COMPONENT and_gate4 IS
  PORT(
    d4 : IN STD_LOGIC;
    s0 : IN STD_LOGIC;
    s1~ : IN STD_LOGIC;
    s2~ : IN STD_LOGIC;
    z4 : OUT STD_LOGIC
  );
END and_gate4;

COMPONENT and_gate5 IS
  PORT(
    d5 : IN STD_LOGIC;
    s0 : IN STD_LOGIC;
    s1~ : IN STD_LOGIC;
    s2 : IN STD_LOGIC;
    z5 : OUT STD_LOGIC
  );
END and_gate5;

COMPONENT and_gate6 IS
  PORT(
    d6 : IN STD_LOGIC;
    s0 : IN STD_LOGIC;
    s1 : IN STD_LOGIC;
    s2~ : IN STD_LOGIC;
    z6 : OUT STD_LOGIC
  );
END and_gate6;

COMPONENT and_gate7 IS
  PORT(
    d7 : IN STD_LOGIC;
    s0 : IN STD_LOGIC;
    s1 : IN STD_LOGIC;
    s2 : IN STD_LOGIC;
    z7 : OUT STD_LOGIC
  );
END and_gate7;

COMPONENT OR_GATE8 IS
  PORT(
    z0 : IN STD_LOGIC;
    z1 : IN STD_LOGIC;
    z2 : IN STD_LOGIC;
    z3 : IN STD_LOGIC;
    z4 : IN STD_LOGIC;
    z5 : IN STD_LOGIC;
    z6 : IN STD_LOGIC;
    z7 : IN STD_LOGIC;
    y : OUT STD_LOGIC
  );
END OR_GATE8;

BEGIN
  U0: and_gate0 PORT MAP (
    d0 => D0,
    s0~ => S0,
    s1~ => S1,
    s2~ => S2,
    z0 => U0_OUT
  );

BEGIN
  U1: and_gate1 PORT MAP (
    d1 => D1,
    s0~ => S0,
    s1~ => S1,
    s2 => S2,
    z1 => U1_OUT
  );

BEGIN
  U2: and_gate2 PORT MAP (
    d2 => D2,
    s0~ => S0,
    s1 => S1,
    s2~ => S2,
    z2 => U2_OUT
  );

BEGIN
  U3: and_gate3 PORT MAP (
    d0 => D3,
    s0~ => S0,
    s1 => S1,
    s2 => S2,
    z3 => U3_OUT
  );

BEGIN
  U4: and_gate4 PORT MAP (
    d4 => D0,
    s0 => S0,
    s1~ => S1,
    s2~ => S2,
    z0 => U4_OUT
  );

BEGIN
  U5: and_gate5 PORT MAP (
    d5 => D5,
    s0 => S0,
    s1~ => S1,
    s2 => S2,
    z5 => U5_OUT
  );

BEGIN
  U6: and_gate6 PORT MAP (
    d6 => D6,
    s0 => S0,
    s1 => S1,
    s2~ => S2,
    z6 => U6_OUT
  );

BEGIN
  U7: and_gate7 PORT MAP (
    d0 => D0,
    s0 => S0,
    s1 => S1,
    s2 => S2,
    z7 => U7_OUT
  );

BEGIN
  U8: OR_GATE8 PORT MAP (
    z0 => U0_OUT,
    z1 => U1_OUT,
    z2 => U2_OUT,
    z3 => U3_OUT,
    z4 => U4_OUT,
    z5 => U5_OUT,
    z6 => U6_OUT,
    z7 => U7_OUT,
    y => Y
  );
END structural;




