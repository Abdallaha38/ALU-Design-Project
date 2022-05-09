LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY and_gate IS
  PORT(
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END and_gate;

ARCHITECTURE model OF and_gate IS
BEGIN
  z <= a AND b;
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY xor_gate IS
  PORT(
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END xor_gate;

ARCHITECTURE model OF xor_gate IS
BEGIN
  z <= a XOR b;
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY or_gate IS
  PORT(
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END or_gate;

ARCHITECTURE model OF or_gate IS
BEGIN
  z <= a OR b;
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nand_gate IS
  PORT(
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END nand_gate;

ARCHITECTURE model OF nand_gate IS
BEGIN
  z <= a NAND b;
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nor_gate IS
  PORT(
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END nor_gate;

ARCHITECTURE model OF nor_gate IS
BEGIN
  z <= a NOR b;
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY xnor_gate IS
  PORT(
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END xnor_gate;

ARCHITECTURE model OF xnor_gate IS
BEGIN
  z <= a XNOR b;
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY not_gate IS
  PORT(
    a : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END not_gate;

ARCHITECTURE model OF not_gate IS
BEGIN
  z <= NOT a;
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
 
ENTITY and_gate_3 IS
  PORT (
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END and_gate_3;
 
ARCHITECTURE model OF and_gate_3 IS
BEGIN
  z <= a AND b AND c;
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY and_gate_4 IS
  PORT (
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    d : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END and_gate_4;
 
ARCHITECTURE model OF and_gate_4 IS
BEGIN
  z <= a AND b AND c AND d;
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY and_gate_5 IS
  PORT (
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    d : IN STD_LOGIC;
    e : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END and_gate_5;
 
ARCHITECTURE model OF and_gate_5 IS
BEGIN
  z <= a AND b AND c AND d AND e;
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
 
ENTITY or_gate_3 IS
  PORT (
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END or_gate_3;
 
ARCHITECTURE model OF or_gate_3 IS
BEGIN
  z <= a OR b OR c;
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY or_gate_4 IS
  PORT (
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    d : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END or_gate_4;
 
ARCHITECTURE model OF or_gate_4 IS
BEGIN
  z <= a OR b OR c OR d;
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY or_gate_5 IS
  PORT (
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    d : IN STD_LOGIC;
    e : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END or_gate_5;
 
ARCHITECTURE model OF or_gate_5 IS
BEGIN
  z <= a OR b OR c OR d OR e;
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY or_gate_8 IS
  PORT (
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    d : IN STD_LOGIC;
    e : IN STD_LOGIC;
    f : IN STD_LOGIC;
    g : IN STD_LOGIC;
    h : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END or_gate_8;
 
ARCHITECTURE model OF or_gate_8 IS
BEGIN
  z <= a OR b OR c OR d OR e OR f OR g OR h;
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
 
ENTITY xor_gate_3 IS
  PORT (
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END xor_gate_3;
 
ARCHITECTURE model OF xor_gate_3 IS
BEGIN
  z <= a XOR b XOR c;  
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
 
ENTITY xor_gate_4 IS
  PORT (
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    d : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END xor_gate_4;
 
ARCHITECTURE model OF xor_gate_4 IS
BEGIN
  z <= a XOR b XOR c XOR d;  
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
 
ENTITY xor_gate_5 IS
  PORT (
    a : IN STD_LOGIC;
    b : IN STD_LOGIC;
    c : IN STD_LOGIC;
    d : IN STD_LOGIC;
    e : IN STD_LOGIC;
    z : OUT STD_LOGIC
  );
END xor_gate_5;
 
ARCHITECTURE model OF xor_gate_5 IS
BEGIN
  z <= a XOR b XOR c XOR d XOR e;  
END model;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
 
ENTITY and_gate_2Q IS
  PORT (
    a : IN STD_LOGIC_VECTOR (3 downto 0);
    b : IN STD_LOGIC_VECTOR (3 downto 0);
    z : OUT STD_LOGIC_VECTOR (3 downto 0)
  );
END and_gate_2Q;
 
ARCHITECTURE structural OF and_gate_2Q IS
  COMPONENT and_gate IS
    PORT(
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      z : OUT STD_LOGIC
    );
  END COMPONENT;

BEGIN

  U0: and_gate PORT MAP (
    a => a(0),
    b => b(0),
    z => z(0)
  );
  
  U1: and_gate PORT MAP (
    a => a(1),
    b => b(1),
    z => z(1)
  );
  
  U2: and_gate PORT MAP (
    a => a(2),
    b => b(2),
    z => z(2)
  );

  U3: and_gate PORT MAP (
    a => a(3),
    b => b(3),
    z => z(3)
  );
  
END structural;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
 
ENTITY or_gate_2Q IS
  PORT (
    a : IN STD_LOGIC_VECTOR (3 downto 0);
    b : IN STD_LOGIC_VECTOR (3 downto 0);
    z : OUT STD_LOGIC_VECTOR (3 downto 0)
  );
END or_gate_2Q;
 
ARCHITECTURE structural OF or_gate_2Q IS
  COMPONENT or_gate IS
    PORT(
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      z : OUT STD_LOGIC
    );
  END COMPONENT;

BEGIN

  U0: or_gate PORT MAP (
    a => a(0),
    b => b(0),
    z => z(0)
  );
  
  U1: or_gate PORT MAP (
    a => a(1),
    b => b(1),
    z => z(1)
  );
  
  U2: or_gate PORT MAP (
    a => a(2),
    b => b(2),
    z => z(2)
  );

  U3: or_gate PORT MAP (
    a => a(3),
    b => b(3),
    z => z(3)
  );
  
END structural;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
 
ENTITY xor_gate_2Q IS
  PORT (
    a : IN STD_LOGIC_VECTOR (3 downto 0);
    b : IN STD_LOGIC_VECTOR (3 downto 0);
    z : OUT STD_LOGIC_VECTOR (3 downto 0)
  );
END xor_gate_2Q;
 
ARCHITECTURE structural OF xor_gate_2Q IS
  COMPONENT xor_gate IS
    PORT(
      a : IN STD_LOGIC;
      b : IN STD_LOGIC;
      z : OUT STD_LOGIC
    );
  END COMPONENT;

BEGIN

  U0: xor_gate PORT MAP (
    a => a(0),
    b => b(0),
    z => z(0)
  );
  
  U1: xor_gate PORT MAP (
    a => a(1),
    b => b(1),
    z => z(1)
  );
  
  U2: xor_gate PORT MAP (
    a => a(2),
    b => b(2),
    z => z(2)
  );

  U3: xor_gate PORT MAP (
    a => a(3),
    b => b(3),
    z => z(3)
  );
  
END structural;

--------------------------------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
 
ENTITY not_gate_Q IS
  PORT (
    a : IN STD_LOGIC_VECTOR (3 downto 0);
    z : OUT STD_LOGIC_VECTOR (3 downto 0)
  );
END not_gate_Q;
 
ARCHITECTURE structural OF not_gate_Q IS
  COMPONENT not_gate IS
    PORT(
      a : IN STD_LOGIC;
      z : OUT STD_LOGIC
    );
  END COMPONENT;

BEGIN

  U0: not_gate PORT MAP (
    a => a(0),
    z => z(0)
  );
  
  U1: not_gate PORT MAP (
    a => a(1),
    z => z(1)
  );
  
  U2: not_gate PORT MAP (
    a => a(2),
    z => z(2)
  );

  U3: not_gate PORT MAP (
    a => a(3),
    z => z(3)
  );
  
END structural;
