LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ALU IS
  PORT (
    A : IN STD_LOGIC_VECTOR (3 downto 0);
    B : IN STD_LOGIC_VECTOR (3 downto 0);
    Sel : IN STD_LOGIC_VECTOR (3 downto 0);
    Z : OUT STD_LOGIC_VECTOR (4 downto 0)
  );
END ALU;

ARCHITECTURE structural OF ALU IS
  SIGNAL AU_OUT: STD_LOGIC_VECTOR (4 downto 0);
  SIGNAL LU_OUT: STD_LOGIC_VECTOR (3 downto 0);

  Component AU IS
    PORT (
    A : IN STD_LOGIC_VECTOR (3 downto 0);
    B : IN STD_LOGIC_VECTOR (3 downto 0);
    OpSel : IN STD_LOGIC_VECTOR (2 downto 0);
    A_OUT : OUT STD_LOGIC_VECTOR (4 downto 0)
  ); 
  END COMPONENT;
    
   Component mux2_1 IS
    PORT (
    mux1 : IN STD_LOGIC;
    mux2 : IN STD_LOGIC;
    muxSel : IN STD_LOGIC;
    muxOut : OUT STD_LOGIC
  );
  END COMPONENT;
    
BEGIN
  
  A_U: AU PORT MAP (
    A => A,
    B => B,
    OpSel => Sel(2 downto 0),
    A_OUT => AU_OUT
  );
    
  mux0: mux2_1 PORT MAP (
    mux1 => AU_OUT(0),
    mux2 => LU_OUT(0),
    muxSel => Sel(3),
    muxOut => Z(0)
  );
    
  mux1: mux2_1 PORT MAP (
    mux1 => AU_OUT(1),
    mux2 => LU_OUT(1),
    muxSel => Sel(3),
    muxOut => Z(1)
  );  
    
    mux2: mux2_1 PORT MAP (
    mux1 => AU_OUT(2),
    mux2 => LU_OUT(2),
    muxSel => Sel(3),
    muxOut => Z(2)
  );
  
  mux3: mux2_1 PORT MAP (
    mux1 => AU_OUT(3),
    mux2 => LU_OUT(3),
    muxSel => Sel(3),
    muxOut => Z(3)
  );
  
  mux4: mux2_1 PORT MAP (
    mux1 => AU_OUT(4),
    mux2 => '0',
    muxSel => Sel(3),
    muxOut => Z(4)
  );
    
END structural;
