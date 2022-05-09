LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY full_adder_1 IS
  PORT(
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    co : OUT STD_LOGIC;
    z : OUT STD_LOGIC
  );
END full_adder_1;

ARCHITECTURE structural OF full_adder_1 IS
  
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
    a => a,
    b => b,
    c => c,
    z => z
  );
  
  U2: and_gate PORT MAP (
    a => a,
    b => b,
    z => U2_OUT
  );
  
  U3: and_gate PORT MAP (
    a => a,
    b => c,
    z => U3_OUT
  );
  
  U4: and_gate PORT MAP (
    a => b,
    b => c,
    z => U4_OUT
  );
  
  U5: or_gate_3 PORT MAP (
    a => U2_OUT,
    b => U3_OUT,
    c => U4_OUT,
    z => co
  );
    
END structural;

-------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY full_adder IS
  PORT(
      A : IN STD_LOGIC_VECTOR (3 downto 0);
      B : IN STD_LOGIC_VECTOR (3 downto 0);
      Ci : IN STD_LOGIC;
      Co : OUT STD_LOGIC;
      SUM : OUT STD_LOGIC_VECTOR (3 downto 0)
    );
END full_adder;

ARCHITECTURE structural OF full_adder IS
  SIGNAL carry : STD_LOGIC_VECTOR (2 downto 0);
  
  COMPONENT full_adder_1 IS
    PORT(
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      c : IN STD_LOGIC;
      co : OUT STD_LOGIC;
      z : OUT STD_LOGIC
    );
  END COMPONENT;
  
BEGIN
  U0: full_adder_1 PORT MAP (
    a => A(0),
    b => B(0),
    c => Ci,
    co => carry(0),
    z => SUM(0)
  );
  
  U1: full_adder_1 PORT MAP (
    a => A(1),
    b => B(1),
    c => carry(0),
    co => carry(1),
    z => SUM(1)
  );
  
  U2: full_adder_1 PORT MAP (
    a => A(2),
    b => B(2),
    c => carry(1),
    co => carry(2),
    z => SUM(2)
  );
  
  U3: full_adder_1 PORT MAP (
    a => A(3),
    b => B(3),
    c => carry(2),
    co => Co,
    z => SUM(0)
  );
  
END structural;