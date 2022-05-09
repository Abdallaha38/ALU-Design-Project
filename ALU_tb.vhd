LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ALU_tb IS
END ALU_tb;

ARCHITECTURE behave OF ALU_tb IS
  signal r_SIG1   : std_logic_vector (3 downto 0) := "0000";
  signal r_SIG2   : std_logic_vector (3 downto 0) := "0000";
  signal selector : std_logic_vector (3 downto 0) := "0000";
  signal w_RESULT : std_logic_vector (4 downto 0) := "00000";
   
  component ALU is
    PORT (
    A : IN STD_LOGIC_VECTOR (3 downto 0);
    B : IN STD_LOGIC_VECTOR (3 downto 0);
    Sel : IN STD_LOGIC_VECTOR (3 downto 0);
    Z : OUT STD_LOGIC_VECTOR (4 downto 0)
  );
  end component;
  
  component full_adder is
    PORT (
      A : IN STD_LOGIC_VECTOR (3 downto 0);
      B : IN STD_LOGIC_VECTOR (3 downto 0);
      Ci : IN STD_LOGIC;
      Co : OUT STD_LOGIC;
      Sum : OUT STD_LOGIC_VECTOR (3 downto 0)
    );
  end component;
   
begin
   
  alu_INST : ALU
    port map (
      A    => r_SIG1,
      B    => r_SIG2,
      Sel => selector,
      Z => w_RESULT
      );
 
  process is
  begin
    r_SIG1 <= "0000";
    r_SIG2 <= "0011";
    selector <= "0001";
    wait for 10 ns;
    r_SIG1 <= "1111";
    r_SIG2 <= "1000";
    selector <= "0000";
    wait for 10 ns;
    r_SIG1 <= "1110";
    r_SIG2 <= "0010";
    selector <= "0110";
    wait for 10 ns;  
  end process;
     
end behave;
