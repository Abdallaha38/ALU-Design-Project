LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY full_adder IS
  PORT(
    A : IN STD_LOGIC;
    B : IN STD_LOGIC;
    Ci : IN STD_LOGIC;
    Co : OUT STD_LOGIC;
    SUM : OUT STD_LOGIC
  );
END full_adder;

ARCHITECTURE structural OF full_adder IS
  
  SIGNAL U2_OUT: STD_LOGIC;
  SIGNAL U3_OUT: STD_LOGIC;
  SIGNAL U4_OUT: STD_LOGIC;
  
  COMPONENT and_gate IS
    PORT(
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      z : OUT STD_LOGIC
    );
  END COMPONENT;
  
  COMPONENT xor_gate_3 IS
    PORT(
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      c : IN STD_LOGIC;
      z : OUT STD_LOGIC
    );
  END COMPONENT;
  
  COMPONENT or_gate_3 IS
    PORT(
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      c : IN STD_LOGIC;
      z : OUT STD_LOGIC
    );
  END COMPONENT;
  
BEGIN
  U1: xor_gate_3 PORT MAP (
    a => A,
    b => B,
    c => Ci,
    z => SUM
  );
  
  U2: and_gate PORT MAP (
    a => A,
    b => B,
    z => U2_OUT
  );
  
  U3: and_gate PORT MAP (
    a => A,
    b => Ci,
    z => U3_OUT
  );
  
  U4: and_gate PORT MAP (
    a => B,
    b => Ci,
    z => U4_OUT
  );
  
  U5: or_gate_3 PORT MAP (
    a => U2_OUT,
    b => U3_OUT,
    c => U4_OUT,
    z => Co
  );
    
END structural;
