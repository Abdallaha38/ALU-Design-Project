LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY LU IS
  PORT (
    A : IN STD_LOGIC_VECTOR (3 downto 0);
    B : IN STD_LOGIC_VECTOR (3 downto 0);
    Sel : IN STD_LOGIC_VECTOR (2 downto 0);
    Res : OUT STD_LOGIC_VECTOR (3 downto 0)
  );
END LU;

ARCHITECTURE structural OF LU IS
    SIGNAL notA_out : STD_LOGIC_VECTOR (3 downto 0);  
    SIGNAL notB_out : STD_LOGIC_VECTOR (3 downto 0);  
    SIGNAL and_out : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL nand_out : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL or_out : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL nor_out : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL xor_out : STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL xnor_out : STD_LOGIC_VECTOR (3 downto 0);

  COMPONENT and_gate_2Q IS
    PORT(
      a : IN STD_LOGIC_VECTOR (3 downto 0);
      b : IN STD_LOGIC_VECTOR (3 downto 0);
      z : OUT STD_LOGIC_VECTOR (3 downto 0)
    );
  END COMPONENT;

  COMPONENT or_gate_2Q IS
    PORT(
      a : IN STD_LOGIC_VECTOR (3 downto 0);
      b : IN STD_LOGIC_VECTOR (3 downto 0);
      z : OUT STD_LOGIC_VECTOR (3 downto 0)
    );
  END COMPONENT;

  COMPONENT xor_gate_2Q IS
    PORT(
      a : IN STD_LOGIC_VECTOR (3 downto 0);
      b : IN STD_LOGIC_VECTOR (3 downto 0);
      z : OUT STD_LOGIC_VECTOR (3 downto 0)
    );
  END COMPONENT;

  COMPONENT not_gate_Q IS
    PORT(
      a : IN STD_LOGIC_VECTOR (3 downto 0);
      z : OUT STD_LOGIC_VECTOR (3 downto 0)
    );
  END COMPONENT;

  COMPONENT mux8_4 IS
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
  END COMPONENT;

BEGIN
    notA_mux: not_gate_Q PORT MAP (
        a => A,
        z => notA_out
    );

    notB_mux: not_gate_Q PORT MAP (
        a => B,
        z => notB_out
    );

    and_mux: and_gate_2Q PORT MAP (
        a => A,
        b => B,
        z => and_out
    );

    nand_mux: not_gate_Q PORT MAP (
        a => and_out,
        z => nand_out
    );

    or_mux: or_gate_2Q PORT MAP (
        a => A,
        b => B,
        z => or_out
    );

    nor_mux: not_gate_Q PORT MAP (
        a => or_out,
        z => nor_out
    );

    xor_mux: xor_gate_2Q PORT MAP (
        a => A,
        b => B,
        z => xor_out
    );

    xnor_mux: not_gate_Q PORT MAP (
        a => xor_out,
        z => xnor_out
    );

    mux_out: mux8_4 PORT MAP (
        a : notA_out,
        b : notB_out,
        c : and_out,
        d : nand_out,
        e : or_out,
        f : nor_out,
        g : xor_out,
        h : xnor_out,
        s : Sel,
        z : Res
    );



