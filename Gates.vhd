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
