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
  SIGNAL A_ctl : STD_LOGIC_VECTOR (1 downto 0);
  SIGNAL B_ctl : STD_LOGIC_VECTOR (1 downto 0);
  SIGNAL O_ctl : STD_LOGIC_VECTOR (2 downto 0);
  
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
    z => A_ctl(0)
  );
  
  a2: and_gate PORT MAP (
    a => Sel(0),
    b => Sel(2),
    z => A_ctl(1)
  );
  
  a3: or_gate PORT MAP (
    a => A_ctl(0),
    b => A_ctl(1),
    z => O_ctl(0)
  );
  
  a4: not_gate PORT MAP (
    a => O_ctl(0),
    z => O_ctl(1)
  );
  
  b1: and_gate PORT MAP (
    a => Sel(1),
    b => ISel(2),
    z => B_ctl(0)
  );
  
  b2: and_gate PORT MAP (
    a => ISel(0),
    b => Sel(2),
    z => B_ctl(1)
  );
  
  b3: or_gate PORT MAP (
    a => B_ctl(0),
    b => B_ctl(1),
    z => O_ctl(2)
  );
  
  b4: or_gate PORT MAP (
    a => O_ctl(1),
    b => O_ctl(2),
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
  SIGNAL H_ctl : STD_LOGIC_VECTOR (1 downto 0);
  SIGNAL L_ctl : STD_LOGIC_VECTOR (1 downto 0);
  SIGNAL O_ctl : STD_LOGIC_VECTOR (2 downto 0);
  SIGNAL I_ctl : STD_LOGIC_VECTOR (2 downto 0);
  
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
    z => O_ctl(0)
  );
  
  a2: not_gate PORT MAP (
    a => O_ctl(0),
    z => I_ctl(0)
  );
  
  h1: and_gate PORT MAP (
    a => ISel(0),
    b => ISel(1),
    z => H_ctl(0)
  );
  
  h2: and_gate PORT MAP (
    a => Sel(0),
    b => ISel(2),
    z => H_ctl(1)
  );
  
  h3: or_gate PORT MAP (
    a => H_ctl(0),
    b => H_ctl(1),
    z => O_ctl(1)
  );
  
  h4: not_gate PORT MAP (
    a => O_ctl(1),
    z => I_ctl(1)
  );
  
  l1: and_gate_3 PORT MAP (
    a => ISel(0),
    b => Sel(1),
    c => ISel(2),
    z => L_ctl(0)
  );
  
  l2: and_gate_3 PORT MAP (
    a => Sel(0),
    b => ISel(1),
    c => Sel(2),
    z => L_ctl(1)
  );
  
  l3: or_gate PORT MAP (
    a => L_ctl(0),
    b => L_ctl(1),
    z => O_ctl(2)
  );
  
  l4: not_gate PORT MAP (
    a => O_ctl(2),
    z => I_ctl(2)
  );
  
  s01: and_gate_3 PORT MAP (
    a => I_ctl(0),
    b => O_ctl(1),
    c => I_ctl(2),
    z => Z(0)
  );
  
  s11: and_gate_3 PORT MAP (
    a => I_ctl(0),
    b => I_ctl(1),
    c => O_ctl(2),
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
  SIGNAL ctl : STD_LOGIC_VECTOR (1 downto 0);
  
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
    z => ctl(0)
  );
  
  a1: and_gate PORT MAP (
    a => ISel(1),
    b => Sel(2),
    z => ctl(1)
  );
  
  a2: or_gate PORT MAP (
    a => ctl(0),
    b => ctl(1),
    z => Z
  );
  
END structural;