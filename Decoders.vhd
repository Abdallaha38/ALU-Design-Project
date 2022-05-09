LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decoder IS
  PORT (
    Sel : IN STD_LOGIC_VECTOR (2 downto 0);
    DOut : OUT STD_LOGIC_VECTOR (7 downto 0)
  );
END decoder;
    
ARCHITECTURE structural OF decoder IS
  SIGNAL ISel : STD_LOGIC_VECTOR (2 downto 0);
  
  COMPONENT and_gate_3 IS
    PORT(
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      c : IN STD_LOGIC;
      z : OUT STD_LOGIC
    );
  END COMPONENT;

  COMPONENT not_gate IS
    PORT(
      a : IN STD_LOGIC;
      z : OUT STD_LOGIC
    );
  END COMPONENT;
  
BEGIN
  not0: not_gate PORT MAP (
    a => Sel(0),
    z => ISel(0)
  );
  
  not1: not_gate PORT MAP (
    a => Sel(1),
    z => ISel(1)
  );
  
  not2: not_gate PORT MAP (
    a => Sel(2),
    z => ISel(2)
  );
  
  and0: and_gate_3 PORT MAP (
    a => ISel(0),
    b => ISel(1),
    c => ISel(2),
    z => DOut(0)
  );
  
  and1: and_gate_3 PORT MAP (
    a => Sel(0),
    b => ISel(1),
    c => ISel(2),
    z => DOut(1)
  );
  
  and2: and_gate_3 PORT MAP (
    a => ISel(0),
    b => Sel(1),
    c => ISel(2),
    z => DOut(2)
  );
  
  and3: and_gate_3 PORT MAP (
    a => Sel(0),
    b => Sel(1),
    c => ISel(2),
    z => DOut(3)
  );
  
  and4: and_gate_3 PORT MAP (
    a => ISel(0),
    b => ISel(1),
    c => Sel(2),
    z => DOut(4)
  );
  
  and5: and_gate_3 PORT MAP (
    a => Sel(0),
    b => ISel(1),
    c => Sel(2),
    z => DOut(5)
  );
  
  and6: and_gate_3 PORT MAP (
    a => ISel(0),
    b => Sel(1),
    c => Sel(2),
    z => DOut(6)
  );
  
  and7: and_gate_3 PORT MAP (
    a => Sel(0),
    b => Sel(1),
    c => Sel(2),
    z => DOut(7)
  );
  
END structural;