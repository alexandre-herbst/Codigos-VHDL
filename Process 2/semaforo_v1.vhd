LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
----------------------------------------------------------
ENTITY semaforo_v1 IS
PORT (
clk, rst : IN STD_LOGIC;
G : IN integer range 0 to 1;
l1_vd, l2_vm, l1_am, l2_vd, l1_vm, l2_am : OUT std_LOGIC);
END entity;
----------------------------------------------------------
ARCHITECTURE v1 OF semaforo_v1 IS
TYPE state IS (vd1, am1, vm1, vd2, am2, vm2, vd1b, am1b, vm1b, vd2b, am2b, vm2b);
SIGNAL pr_state, nx_state : state;
--ATTRIBUTE ENUM_ENCODING : STRING; --optional attribute
--ATTRIBUTE ENUM_ENCODING OF state : TYPE IS "sequential";
BEGIN
------Logica Sequencial da FSM:------------
PROCESS (clk, rst)
BEGIN
IF (rst = '1') THEN
pr_state <= vm1;
ELSIF (clk'EVENT AND clk = '1') THEN
pr_state <= nx_state;
END IF;
END PROCESS;
------Logica Combinacional da FSM:------------
PROCESS (pr_state, G)
BEGIN
--valor default das saidas

l1_vd <= '0';
l1_am <= '0';
l1_vm <= '0';
l2_vd <= '0';
l2_am <= '0';
l2_vm <= '0';

CASE pr_state IS
	WHEN vd1 =>
		l1_vd <= '1';
		l2_am <= '1';
		IF (G = 1) THEN
			nx_state <= vd1b;
		ELSE
			nx_state <= vd1;
		END IF;
	
	WHEN am1 =>
		l1_am <= '1';
		l2_vm <= '1';
		IF (G = 1) THEN
			nx_state <= am1b;
		ELSE
			nx_state <= am1;
		END IF;
		
	WHEN vm1 =>
		l1_vm <= '1';
		l2_vm <= '1';
		IF (G =1) THEN	
			nx_state <= vm1b;
		ELSE
			nx_state <= vm1;
		END IF;
	WHEN vd2 =>
		l1_vm <= '1';
		l2_vd <= '1';
		IF (G =1) THEN	
			nx_state <= vd2b;
		ELSE
			nx_state <= vd2;
		END IF;
		
	WHEN am2 =>
		l1_vm <= '1';
		l2_am <= '1';
		IF (G =1) THEN	
			nx_state <= am2b;
		ELSE
			nx_state <= am2;
		END IF;
		
	WHEN vm2 =>
		l1_vm <= '1';
		l2_vm <= '1';
		IF (G =1) THEN	
			nx_state <= vm2b;
		ELSE
			nx_state <= vm2;
		END IF;
		
		
		
		WHEN vd1b =>
		l1_vd <= '1';
		l2_am <= '1';
		IF (G = 0) THEN
			nx_state <= am1;
		ELSE
			nx_state <= vd1b;
		END IF;
	
	WHEN am1b =>
		l1_am <= '1';
		l2_vm <= '1';
		IF (G = 0) THEN
			nx_state <= vm1;
		ELSE
			nx_state <= am1b;
		END IF;
		
	WHEN vm1b =>
		l1_vm <= '1';
		l2_vm <= '1';
		IF (G =0) THEN	
			nx_state <= vd2;
		ELSE
			nx_state <= vm1b;
		END IF;
	WHEN vd2b =>
		l1_vm <= '1';
		l2_vd <= '1';
		IF (G =0) THEN	
			nx_state <= am2;
		ELSE
			nx_state <= vd2b;
		END IF;
		
	WHEN am2b =>
		l1_vm <= '1';
		l2_am <= '1';
		IF (G =0) THEN	
			nx_state <= vm2;
		ELSE
			nx_state <= am2b;
		END IF;
		
	WHEN vm2b =>
		l1_vm <= '1';
		l2_vm <= '1';
		IF (G =0) THEN	
			nx_state <= vd1;
		ELSE
			nx_state <= vm2b;
		END IF;
END CASE;
END PROCESS;

END architecture;