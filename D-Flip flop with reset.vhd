library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dff_reset is
    Port (
        D      : in  STD_LOGIC;  -- Data input
        Clock  : in  STD_LOGIC;  -- Clock input
        Resetn : in  STD_LOGIC;  -- Asynchronous reset (active low)
        Q      : out STD_LOGIC   -- Output
    );
end dff_reset;

architecture Behavioral of dff_reset is
begin
    process(Resetn, Clock)
    begin
        if (Resetn = '0') then
            Q <= '0';  -- Asynchronous reset
        elsif rising_edge(Clock) then
            Q <= D;    -- Data transfer on clock edge
        end if;
    end process;
end Behavioral;
