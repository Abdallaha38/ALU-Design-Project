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
    
----------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2_4 IS
  PORT(
    a : IN STD_LOGIC_VECTOR (3 downto 0);
    b : IN STD_LOGIC_VECTOR (3 downto 0);
    s : IN STD_LOGIC;
    z : OUT STD_LOGIC_VECTOR (3 downto 0)
  );
END mux2_4;

ARCHITECTURE structural OF mux2_4 IS
  COMPONENT mux2_1 IS
    PORT (
    A : IN STD_LOGIC;
    B : IN STD_LOGIC;
    Sel : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END COMPONENT; 

BEGIN
  m0: mux2_1 PORT MAP (
    A => a(0),
    B => b(0),
    Sel => s,
    z => z(0)
  );
  
  m1: mux2_1 PORT MAP (
    A => a(1),
    B => b(1),
    Sel => s,
    z => z(1)
  );
  
  m2: mux2_1 PORT MAP (
    A => a(2),
    B => b(2),
    Sel => s,
    z => z(2)
  );
  
  m3: mux2_1 PORT MAP (
    A => a(3),
    B => b(3),
    Sel => s,
    z => z(3)
  );
  
END structural;

---------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux4_1 IS
  PORT (
    A : IN STD_LOGIC;
    B : IN STD_LOGIC;
    C : IN STD_LOGIC;
    D : IN STD_LOGIC;
    Sel : IN STD_LOGIC_VECTOR (1 downto 0);
    z : OUT STD_LOGIC
  );
END mux4_1;

ARCHITECTURE structural OF mux4_1 IS
  SIGNAL ISel: STD_LOGIC_VECTOR (1 downto 0);
  SIGNAL AND_OUT: STD_LOGIC_VECTOR (3 downto 0);

  Component and_gate_3 IS
    PORT (
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      c : IN STD_LOGIC;
      z : OUT STD_LOGIC
    ); 
  END COMPONENT;
    
   Component or_gate_4 IS
    PORT (
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      c : IN STD_LOGIC;
      d : IN STD_LOGIC;
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
  
  Invert0: not_gate PORT MAP (
    Sel(0), ISel(0)
  );
  
  Invert1: not_gate PORT MAP (
    Sel(1), ISel(1)
  );
    
  U0: and_gate_3 PORT MAP (
    A, ISel(0), ISel(1), AND_OUT(0)
  );
    
  U1: and_gate_3 PORT MAP (
    B, Sel(0), ISel(1), AND_OUT(1)
  );
    
  U2: and_gate_3 PORT MAP (
    C, ISel(0), Sel(1), AND_OUT(2)
  );
  
  U3: and_gate_3 PORT MAP (
    D, Sel(0), Sel(1), AND_OUT(3)
  );
  
  U4: or_gate_4 PORT MAP (
    AND_OUT(0), AND_OUT(1), AND_OUT(2), AND_OUT(3), z
  );
    
END structural;
    
----------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux4_4 IS
  PORT(
    a : IN STD_LOGIC_VECTOR (3 downto 0);
    b : IN STD_LOGIC_VECTOR (3 downto 0);
    c : IN STD_LOGIC_VECTOR (3 downto 0);
    d : IN STD_LOGIC_VECTOR (3 downto 0);
    s : IN STD_LOGIC_VECTOR (1 downto 0);
    z : OUT STD_LOGIC_VECTOR (3 downto 0)
  );
END mux4_4;

ARCHITECTURE structural OF mux4_4 IS
  COMPONENT mux4_1 IS
    PORT (
    A : IN STD_LOGIC;
    B : IN STD_LOGIC;
    C : IN STD_LOGIC;
    D : IN STD_LOGIC;
    Sel : IN STD_LOGIC_VECTOR (1 downto 0);
    z : OUT STD_LOGIC
  );
END COMPONENT; 

BEGIN
  m0: mux4_1 PORT MAP (
    A => a(0),
    B => b(0),
    C => c(0),
    D => d(0),
    Sel => s,
    z => z(0)
  );
  
  m1: mux4_1 PORT MAP (
    A => a(1),
    B => b(1),
    C => c(1),
    D => d(1),
    Sel => s,
    z => z(1)
  );
  
  m2: mux4_1 PORT MAP (
    A => a(2),
    B => b(2),
    C => c(2),
    D => d(2),
    Sel => s,
    z => z(2)
  );
  
  m3: mux4_1 PORT MAP (
    A => a(3),
    B => b(3),
    C => c(3),
    D => d(3),
    Sel => s,
    z => z(3)
  );
  
END structural;

---------------------------------------------------------------------------------------------------------
