LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AU IS
  PORT (
    A : IN STD_LOGIC_VECTOR (3 downto 0);
    B : IN STD_LOGIC_VECTOR (3 downto 0);
    Sel : IN STD_LOGIC_VECTOR (2 downto 0);
    Res : OUT STD_LOGIC_VECTOR (4 downto 0)
  );
END AU;
    
ARCHITECTURE structural OF AU IS
  SIGNAL input1 : STD_LOGIC_VECTOR (3 downto 0);
  SIGNAL input2 : STD_LOGIC_VECTOR (3 downto 0);
  SIGNAL P_input2 : STD_LOGIC_VECTOR (3 downto 0);
  SIGNAL IpSel : STD_LOGIC_VECTOR (2 downto 0);
  SIGNAL sub : STD_LOGIC;
  SIGNAL sub4 : STD_LOGIC_VECTOR (3 downto 0);
  
  COMPONENT full_adder IS
    PORT(
      A : IN STD_LOGIC_VECTOR (3 downto 0);
      B : IN STD_LOGIC_VECTOR (3 downto 0);
      Ci : IN STD_LOGIC;
      Co : OUT STD_LOGIC;
      SUM : OUT STD_LOGIC_VECTOR (3 downto 0)
    );
  END COMPONENT;
  
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
  
  COMPONENT xor_gate_2Q IS
    PORT(
      a : IN STD_LOGIC_VECTOR (3 downto 0);
      b : IN STD_LOGIC_VECTOR (3 downto 0);
      z : OUT STD_LOGIC_VECTOR (3 downto 0)
    );
  END COMPONENT;
  
  COMPONENT I1_Sel IS
    PORT(
      a : IN STD_LOGIC_VECTOR (2 downto 0);
      b : OUT STD_LOGIC
    );
  END COMPONENT;
  
  COMPONENT I2_Sel IS
    PORT(
      a : IN STD_LOGIC_VECTOR (2 downto 0);
      b : OUT STD_LOGIC_VECTOR (1 downto 0)
    );
  END COMPONENT;
  
  COMPONENT subSel IS
    PORT(
      a : IN STD_LOGIC_VECTOR (2 downto 0);
      b : OUT STD_LOGIC
    );
  END COMPONENT;
  
  COMPONENT mux2_4 IS
    PORT(
      a : IN STD_LOGIC_VECTOR (3 downto 0);
      b : IN STD_LOGIC_VECTOR (3 downto 0);
      s : IN STD_LOGIC;
      z : OUT STD_LOGIC_VECTOR (3 downto 0)
    );
  END COMPONENT;
  
  COMPONENT mux4_4 IS
    PORT(
      a : IN STD_LOGIC_VECTOR (3 downto 0);
      b : IN STD_LOGIC_VECTOR (3 downto 0);
      c : IN STD_LOGIC_VECTOR (3 downto 0);
      d : IN STD_LOGIC_VECTOR (3 downto 0);
      s : IN STD_LOGIC_VECTOR (1 downto 0);
      z : OUT STD_LOGIC_VECTOR (3 downto 0)
    );
  END COMPONENT;
  
BEGIN
  I1_Selector: I1_Sel PORT MAP (
    a => Sel,
    b => IpSel(0)
  );
    
  I1_Select: mux2_4 PORT MAP (
    a => A,
    b => B,
    s => IpSel(0),
    z => input1
  );
    
  I2_Selector: I2_Sel PORT MAP (
    a => Sel,
    b => IpSel(2 downto 1)
  );
  
  Subtract: subSel PORT MAP (
    a => Sel,
    b => sub
  );

  I2_Select: mux4_4 PORT MAP (
    a => A,
    b => "0001",
    c => "0000",
    d => "XXXX",
    s => IpSel(2 downto 1),
    z => input2
  );
   
  sub4 <= sub & sub & sub & sub;

  SubInverter: xor_gate_2Q PORT MAP (
    a => input2,
    b => sub4,
    z => P_input2
  );
  
  Arithemtic: full_adder PORT MAP (
    A => input1,
    B => P_input2,
    Ci => sub,
    Co => Res(4),
    SUM => Res(3 downto 0)
  );
  
END structural;
