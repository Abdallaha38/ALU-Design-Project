LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2_1 IS
  PORT (
    A : IN STD_LOGIC;
    B : IN STD_LOGIC;
    Sel : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END mux2_1;

ARCHITECTURE structural OF mux2_1 IS
  SIGNAL U1_OUT: STD_LOGIC;
  SIGNAL U2_OUT: STD_LOGIC;
  SIGNAL U3_OUT: STD_LOGIC;

  Component and_gate IS
    PORT (
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      z : OUT STD_LOGIC
    ); 
  END COMPONENT;
    
   Component or_gate IS
    PORT (
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      z : OUT STD_LOGIC
    ); 
  END COMPONENT;
    
   Component not_gate IS
    PORT (
      a : IN STD_LOGIC;
      z : OUT STD_LOGIC
    ); 
  END COMPONENT;
    
BEGIN
  
  U1: not_gate PORT MAP (
    Sel, U1_OUT
  );
    
  U2: and_gate PORT MAP (
    A, U1_OUT, U2_OUT
  );
    
  U3: and_gate PORT MAP (
    B, Sel, U3_OUT
  );
    
  U4: or_gate PORT MAP (
    U2_OUT, U3_OUT, Z
  );
    
END structural;
    
