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
   
begin
   
  alu_INST : alu
    port map (
      A    => r_SIG1,
      B    => r_SIG2,
      Sel => selector,
      Z => w_RESULT
      );
 
  process is
  begin
    r_SIG1 <= "1101";
    r_SIG2 <= "0101";
    selector <= "0111";
    wait for 50 ns;
    r_SIG1 <= "1010";
    r_SIG2 <= "1100";
    selector <= "0110";
    wait for 50 ns;
    r_SIG1 <= "1111";
    r_SIG2 <= "0001";
    selector <= "1100";
    wait for 50 ns;
    r_SIG1 <= "0110";
    r_SIG2 <= "1011";
    selector <= "1001";
    wait for 50 ns;    
  end process;
     
end behave;
