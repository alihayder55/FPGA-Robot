library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity roobot is
  port( MAX10_CLK1_50: in std_logic;
  MIPI_PIXEL_D : in std_logic_vector(2 downto 0);
  MIPI_PIXEL_D : out std_logic_vector(5 downto 3);
  LEDR : out std_logic_vector(3 downto 0);
  SW : in std_logic_vector(0 downto 0);

  );
end roobot;

architecture rtl of roobot is

component ultrasonic is
  port(
  MAX10_CLK1_50: in std_logic;
  LEDR: out std_logic_vector(0 downto 0);
  TRIG: out std_logic;
  ECHO: in std_logic
  );
end component;


begin

 Ultrasonic1: ultrasonic port map ( MAX10_CLK1_50,LEDR(0) ,MIPI_PIXEL_D(3) , MIPI_PIXEL_D(0));
 Ultrasonic2: ultrasonic port map ( MAX10_CLK1_50,LEDR(1) ,MIPI_PIXEL_D(4) , MIPI_PIXEL_D(1));
 Ultrasonic3: ultrasonic port map ( MAX10_CLK1_50,LEDR(2) ,MIPI_PIXEL_D(5) , MIPI_PIXEL_D(2));
 LEDR(3) <= SW(0);
  
end rtl;