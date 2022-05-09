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
    Sel : IN STD_LOGIC_VECTOR (2 downto 0);
    Res : OUT STD_LOGIC_VECTOR (4 downto 0)
  ); 
  END COMPONENT;

  Component LU IS
    PORT (
    A : IN STD_LOGIC_VECTOR (3 downto 0);
    B : IN STD_LOGIC_VECTOR (3 downto 0);
    Sel : IN STD_LOGIC_VECTOR (2 downto 0);
    Res : OUT STD_LOGIC_VECTOR (3 downto 0)
  ); 
  END COMPONENT;
    
   Component mux2_1 IS
    PORT (
    A : IN STD_LOGIC;
    B : IN STD_LOGIC;
    Sel : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
  END COMPONENT;

   Component mux2_4 IS
    PORT (
    a : IN STD_LOGIC_VECTOR (3 downto 0);
    b : IN STD_LOGIC_VECTOR (3 downto 0);
    s : IN STD_LOGIC;
    z : OUT STD_LOGIC_VECTOR (3 downto 0)
  );
  END COMPONENT;
    
BEGIN
  
  A_U: AU PORT MAP (
    A => A,
    B => B,
    Sel => Sel(2 downto 0),
    Res => AU_OUT
  );

  L_U: LU PORT MAP (
    A => A,
    B => B,
    Sel => Sel(2 downto 0),
    Res => LU_OUT
  );
    
  mux0: mux2_4 PORT MAP (
    a => AU_OUT(3 downto 0),
    b => LU_OUT,
    s => Sel(3),
    z => Z(3 downto 0)
  );

  mux1: mux2_1 PORT MAP (
    A => AU_OUT(4),
    B => '0',
    Sel => Sel(3),
    z => Z(4)
  );
     
END structural;
