library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ultrasonic is
  port(
  MAX10_CLK1_50: in std_logic;
  LEDR: out std_logic_vector(0 downto 0);
  TRIG: out std_logic;
  ECHO: in std_logic
  );
end ultrasonic;

architecture rtl of ultrasonic is

signal microseconds: std_logic;
signal counter: std_logic_vector(17 downto 0);
signal leds: std_logic;
signal trigger: std_logic;

begin
 -- LEDR<=SW;
  process(MAX10_CLK1_50)
  variable count0: integer range 0 to 7;
  begin
  
    if rising_edge(MAX10_CLK1_50) then
      if count0 = 5 then
        count0 := 0;
      else
        count0 := count0 + 1;
      end if;
      if count0 = 0 then
        microseconds <= not microseconds;
      end if;
    end if;
  end process;
  
  process(microseconds)
  variable count1: integer range 0 to 262143;
  begin
    if rising_edge(microseconds) then
      if count1 = 0 then
        counter <= "000000000000000000";
        trigger <= '1';
      elsif count1 = 10 then
        trigger <= '0';
      end if;
      if ECHO = '1' then
        counter <= counter + 1;
      end if;
      if count1 = 249999 then
        count1 := 0;
      else
        count1 := count1 + 1;
      end if;
    end if;
  end process;
  
  process(ECHO)
  begin
    if falling_edge(ECHO) then
      if counter < 1741 then
        leds <= '1';
 
      else
        leds <= '0';
      end if;
    end if;
  end process;
  
  LEDR <= leds;
  TRIG <= trigger;
  
end rtl;