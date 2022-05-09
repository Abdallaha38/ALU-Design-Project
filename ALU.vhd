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

  Component LU IS
    PORT (
    A : IN STD_LOGIC_VECTOR (3 downto 0);
    B : IN STD_LOGIC_VECTOR (3 downto 0);
    OpSel : IN STD_LOGIC_VECTOR (2 downto 0);
    L_OUT : OUT STD_LOGIC_VECTOR (3 downto 0)
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

   Component mux2_4 IS
    PORT (
    mux1 : IN STD_LOGIC_VECTOR (3 downto 0);
    mux2 : IN STD_LOGIC_VECTOR (3 downto 0);
    muxSel : IN STD_LOGIC;
    muxOut : OUT STD_LOGIC_VECTOR (3 downto 0)
  );
  END COMPONENT;
    
BEGIN
  
  A_U: AU PORT MAP (
    A => A,
    B => B,
    OpSel => Sel(2 downto 0),
    A_OUT => AU_OUT
  );

  L_U: LU PORT MAP (
    A => A,
    B => B,
    OpSel => Sel(2 downto 0),
    L_OUT => LU_OUT
  );
    
  mux0: mux2_4 PORT MAP (
    mux1 => AU_OUT(3 downto 0),
    mux2 => LU_OUT,
    muxSel => Sel(3),
    muxOut => Z(3 downto 0)
  );

  mux1: mux2_1 PORT MAP (
    mux1 => AU_OUT(4),
    mux2 => '0',
    muxSel => Sel(3),
    muxOut => Z(4)
  );
     
END structural;
