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

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux8_1 IS
  PORT(
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    d : IN STD_LOGIC;
    e : IN STD_LOGIC;
    f : IN STD_LOGIC;
    g : IN STD_LOGIC;
    h : IN STD_LOGIC;
    Sel : IN STD_LOGIC_VECTOR (2 downto 0);
    z : OUT STD_LOGIC
  );
END mux8_1;

ARCHITECTURE structural OF mux8_1 IS
  
  SIGNAL U0_OUT: STD_LOGIC;
  SIGNAL U1_OUT: STD_LOGIC;
  SIGNAL U2_OUT: STD_LOGIC;
  SIGNAL U3_OUT: STD_LOGIC;
  SIGNAL U4_OUT: STD_LOGIC;
  SIGNAL U5_OUT: STD_LOGIC;  
  SIGNAL U6_OUT: STD_LOGIC;
  SIGNAL U7_OUT: STD_LOGIC;
  SIGNAL ISel: STD_LOGIC_VECTOR (2 downto 0);

  COMPONENT and_gate_4 IS
  PORT(
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    d : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END COMPONENT;

  COMPONENT not_gate IS
  PORT(
    a : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END COMPONENT;

COMPONENT or_gate_8 IS
  PORT(
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    d : IN STD_LOGIC;
    e : IN STD_LOGIC;
    f : IN STD_LOGIC;
    g : IN STD_LOGIC;
    h : IN STD_LOGIC;
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

  Invert2: not_gate PORT MAP (
    Sel(2), ISel(2)
  );

  U0: and_gate_4 PORT MAP (
    a => a,
    b => ISel(0),
    c => ISel(1),
    d => ISel(2),
    z => U0_OUT
  );

  U1: and_gate_4 PORT MAP (
    a => b,
    b => Sel(0),
    c => ISel(1),
    d => ISel(2),
    z => U1_OUT
  );

  U2: and_gate_4 PORT MAP (
    a => c,
    b => ISel(0),
    c => Sel(1),
    d => ISel(2),
    z => U2_OUT
  );

  U3: and_gate_4 PORT MAP (
    a => d,
    b => Sel(0),
    c => Sel(1),
    d => ISel(2),
    z => U3_OUT
  );

  U4: and_gate_4 PORT MAP (
    a => e,
    b => ISel(0),
    c => ISel(1),
    d => Sel(2),
    z => U4_OUT
  );

  U5: and_gate_4 PORT MAP (
    a => f,
    b => Sel(0),
    c => ISel(1),
    d => Sel(2),
    z => U5_OUT
  );

  U6: and_gate_4 PORT MAP (
    a => g,
    b => ISel(0),
    c => Sel(1),
    d => Sel(2),
    z => U6_OUT
  );

  U7: and_gate_4 PORT MAP (
    a => h,
    b => Sel(0),
    c => Sel(1),
    d => Sel(2),
    z => U7_OUT
  );

  U8: or_gate_8 PORT MAP (
    a => U0_OUT,
    b => U1_OUT,
    c => U2_OUT,
    d => U3_OUT,
    e => U4_OUT,
    f => U5_OUT,
    g => U6_OUT,
    h => U7_OUT,
    z => z
  );
  
END structural;

----------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux8_4 IS
  PORT(
    a : IN STD_LOGIC_VECTOR (3 downto 0);
    b : IN STD_LOGIC_VECTOR (3 downto 0);
    c : IN STD_LOGIC_VECTOR (3 downto 0);
    d : IN STD_LOGIC_VECTOR (3 downto 0);
    e : IN STD_LOGIC_VECTOR (3 downto 0);
    f : IN STD_LOGIC_VECTOR (3 downto 0);
    g : IN STD_LOGIC_VECTOR (3 downto 0);
    h : IN STD_LOGIC_VECTOR (3 downto 0);
    s : IN STD_LOGIC_VECTOR (2 downto 0);
    z : OUT STD_LOGIC_VECTOR (3 downto 0)
  );
END mux8_4;

ARCHITECTURE structural OF mux8_4 IS
  COMPONENT mux8_1 IS
    PORT (
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    d : IN STD_LOGIC;
    e : IN STD_LOGIC;
    f : IN STD_LOGIC;
    g : IN STD_LOGIC;
    h : IN STD_LOGIC;
    Sel : IN STD_LOGIC_VECTOR (2 downto 0);
    z : OUT STD_LOGIC
  );
END COMPONENT; 

BEGIN
  m0: mux8_1 PORT MAP (
    a => a(0),
    b => b(0),
    c => c(0),
    d => d(0),
    e => e(0),
    f => f(0),
    g => g(0),
    h => h(0),
    Sel => s,
    z => z(0)
  );
  
  m1: mux8_1 PORT MAP (
    a => a(1),
    b => b(1),
    c => c(1),
    d => d(1),
    e => e(1),
    f => f(1),
    g => g(1),
    h => h(1),
    Sel => s,
    z => z(1)
  );
  
  m2: mux8_1 PORT MAP (
    a => a(2),
    b => b(2),
    c => c(2),
    d => d(2),
    e => e(2),
    f => f(2),
    g => g(2),
    h => h(2),
    Sel => s,
    z => z(2)
  );
  
  m3: mux8_1 PORT MAP (
    a => a(3),
    b => b(3),
    c => c(3),
    d => d(3),
    e => e(3),
    f => f(3),
    g => g(3),
    h => h(3),
    Sel => s,
    z => z(3)
  );
  
END structural;
