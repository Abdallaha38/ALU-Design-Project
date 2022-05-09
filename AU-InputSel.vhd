LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY I1_Sel IS
  PORT (
    Sel : IN STD_LOGIC_VECTOR (2 downto 0);
    Z : OUT STD_LOGIC
  );
END I1_Sel;
    
ARCHITECTURE structural OF I1_Sel IS
  SIGNAL ISel : STD_LOGIC_VECTOR (2 downto 0);
  SIGNAL ac : STD_LOGIC_VECTOR (1 downto 0);
  SIGNAL bc : STD_LOGIC_VECTOR (1 downto 0);
  SIGNAL cc : STD_LOGIC_VECTOR (2 downto 0);
  
  COMPONENT and_gate IS
    PORT(
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      z : OUT STD_LOGIC
    );
  END COMPONENT;
  
  COMPONENT and_gate_3 IS
    PORT(
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      c : IN STD_LOGIC;
      z : OUT STD_LOGIC
    );
  END COMPONENT;
  
  COMPONENT or_gate IS
    PORT(
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
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
  Invert0: not_gate PORT MAP (
    a => Sel(0),
    z => ISel(0)
  );
  
  Invert1: not_gate PORT MAP (
    a => Sel(1),
    z => ISel(1)
  );
  
  Invert2: not_gate PORT MAP (
    a => Sel(2),
    z => ISel(2)
  );

  a1: and_gate PORT MAP (
    a => ISel(1),
    b => ISel(2),
    z => ac(0)
  );
  
  a2: and_gate PORT MAP (
    a => Sel(0),
    b => Sel(2),
    z => ac(1)
  );
  
  a3: or_gate PORT MAP (
    a => ac(0),
    b => ac(1),
    z => cc(0)
  );
  
  a4: not_gate PORT MAP (
    a => cc(0),
    z => cc(1)
  );
  
  b1: and_gate PORT MAP (
    a => Sel(1),
    b => ISel(2),
    z => bc(0)
  );
  
  b2: and_gate PORT MAP (
    a => ISel(0),
    b => Sel(2),
    z => bc(1)
  );
  
  b3: or_gate PORT MAP (
    a => bc(0),
    b => bc(1),
    z => cc(2)
  );
  
  b4: or_gate PORT MAP (
    a => cc(1),
    b => cc(2),
    z => Z
  );
  
END structural;

---------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY I2_Sel IS
  PORT (
    Sel : IN STD_LOGIC_VECTOR (2 downto 0);
    Z : OUT STD_LOGIC_VECTOR (1 downto 0)
  );
END I2_Sel;
    
ARCHITECTURE structural OF I2_Sel IS
  SIGNAL ISel : STD_LOGIC_VECTOR (2 downto 0);
  SIGNAL hc : STD_LOGIC_VECTOR (1 downto 0);
  SIGNAL lc : STD_LOGIC_VECTOR (1 downto 0);
  SIGNAL cc : STD_LOGIC_VECTOR (2 downto 0);
  SIGNAL ic : STD_LOGIC_VECTOR (2 downto 0);
  
  COMPONENT and_gate IS
    PORT(
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      z : OUT STD_LOGIC
    );
  END COMPONENT;
  
  COMPONENT and_gate_3 IS
    PORT(
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      c : IN STD_LOGIC;
      z : OUT STD_LOGIC
    );
  END COMPONENT;
  
  COMPONENT or_gate IS
    PORT(
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
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
  Invert0: not_gate PORT MAP (
    a => Sel(0),
    z => ISel(0)
  );
  
  Invert1: not_gate PORT MAP (
    a => Sel(1),
    z => ISel(1)
  );
  
  Invert2: not_gate PORT MAP (
    a => Sel(2),
    z => ISel(2)
  );

  a1: and_gate PORT MAP (
    a => Sel(1),
    b => Sel(2),
    z => cc(0)
  );
  
  a2: not_gate PORT MAP (
    a => cc(0),
    z => ic(1)
  );
  
  h1: and_gate PORT MAP (
    a => ISel(0),
    b => ISel(1),
    z => hc(0)
  );
  
  h2: and_gate PORT MAP (
    a => Sel(0),
    b => ISel(2),
    z => hc(1)
  );
  
  h3: or_gate PORT MAP (
    a => hc(0),
    b => hc(1),
    z => cc(1)
  );
  
  h4: not_gate PORT MAP (
    a => cc(1),
    z => ic(1)
  );
  
  l1: and_gate_3 PORT MAP (
    a => ISel(0),
    b => Sel(1),
    c => ISel(2),
    z => lc(0)
  );
  
  l2: and_gate_3 PORT MAP (
    a => Sel(0),
    b => ISel(1),
    c => Sel(2),
    z => lc(1)
  );
  
  l3: or_gate PORT MAP (
    a => lc(0),
    b => lc(1),
    z => cc(2)
  );
  
  l4: not_gate PORT MAP (
    a => cc(2),
    z => ic(2)
  );
  
  s0: and_gate_3 PORT MAP (
    a => ic(0),
    b => cc(1),
    c => ic(2),
    z => Z(0)
  );
  
  s1: and_gate_3 PORT MAP (
    a => ic(0),
    b => ic(1),
    c => cc(2),
    z => Z(1)
  );
  
END structural;

---------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY subSel IS
  PORT (
    Sel : IN STD_LOGIC_VECTOR (2 downto 0);
    Z : OUT STD_LOGIC
  );
END subSel;

ARCHITECTURE structural OF subSel IS
  SIGNAL ISel : STD_LOGIC_VECTOR (2 downto 0);
  SIGNAL ac : STD_LOGIC_VECTOR (1 downto 0);
  
  COMPONENT and_gate IS
    PORT(
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      z : OUT STD_LOGIC
    );
  END COMPONENT;
  
  COMPONENT or_gate IS
    PORT(
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
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
  Invert0: not_gate PORT MAP (
    a => Sel(0),
    z => ISel(0)
  );
  
  Invert1: not_gate PORT MAP (
    a => Sel(1),
    z => ISel(1)
  );
  
  Invert2: not_gate PORT MAP (
    a => Sel(2),
    z => ISel(2)
  );
  
  a0: and_gate PORT MAP (
    a => Sel(0),
    b => ISel(1),
    z => ac(0)
  );
  
  a1: and_gate PORT MAP (
    a => ISel(1),
    b => Sel(2),
    z => ac(1)
  );
  
  a2: or_gate PORT MAP (
    a => ac(0),
    b => ac(0),
    z => Z
  );
  
END structural;