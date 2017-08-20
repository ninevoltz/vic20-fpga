-- generated with romgen v3.0 by MikeJ
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library UNISIM;
use UNISIM.Vcomponents.all;

entity CART_ROM is
  port (
    CLK  : in  std_logic;
    ENA  : in  std_logic;
    ADDR : in  std_logic_vector(11 downto 0);
    DATA : out std_logic_vector(7 downto 0)
    );
end;

architecture RTL of CART_ROM is

  function romgen_str2bv (str : string) return bit_vector is
    variable result : bit_vector (str'length*4-1 downto 0);
  begin
    for i in 0 to str'length-1 loop
      case str(str'high-i) is
        when '0'    => result(i*4+3 downto i*4) := x"0";
        when '1'    => result(i*4+3 downto i*4) := x"1";
        when '2'    => result(i*4+3 downto i*4) := x"2";
        when '3'    => result(i*4+3 downto i*4) := x"3";
        when '4'    => result(i*4+3 downto i*4) := x"4";
        when '5'    => result(i*4+3 downto i*4) := x"5";
        when '6'    => result(i*4+3 downto i*4) := x"6";
        when '7'    => result(i*4+3 downto i*4) := x"7";
        when '8'    => result(i*4+3 downto i*4) := x"8";
        when '9'    => result(i*4+3 downto i*4) := x"9";
        when 'A'    => result(i*4+3 downto i*4) := x"A";
        when 'B'    => result(i*4+3 downto i*4) := x"B";
        when 'C'    => result(i*4+3 downto i*4) := x"C";
        when 'D'    => result(i*4+3 downto i*4) := x"D";
        when 'E'    => result(i*4+3 downto i*4) := x"E";
        when 'F'    => result(i*4+3 downto i*4) := x"F";
        when others => null;
      end case;
    end loop;
    return result;
  end romgen_str2bv;

  attribute INIT_00 : string;
  attribute INIT_01 : string;
  attribute INIT_02 : string;
  attribute INIT_03 : string;
  attribute INIT_04 : string;
  attribute INIT_05 : string;
  attribute INIT_06 : string;
  attribute INIT_07 : string;
  attribute INIT_08 : string;
  attribute INIT_09 : string;
  attribute INIT_0A : string;
  attribute INIT_0B : string;
  attribute INIT_0C : string;
  attribute INIT_0D : string;
  attribute INIT_0E : string;
  attribute INIT_0F : string;
  attribute INIT_10 : string;
  attribute INIT_11 : string;
  attribute INIT_12 : string;
  attribute INIT_13 : string;
  attribute INIT_14 : string;
  attribute INIT_15 : string;
  attribute INIT_16 : string;
  attribute INIT_17 : string;
  attribute INIT_18 : string;
  attribute INIT_19 : string;
  attribute INIT_1A : string;
  attribute INIT_1B : string;
  attribute INIT_1C : string;
  attribute INIT_1D : string;
  attribute INIT_1E : string;
  attribute INIT_1F : string;
  attribute INIT_20 : string;
  attribute INIT_21 : string;
  attribute INIT_22 : string;
  attribute INIT_23 : string;
  attribute INIT_24 : string;
  attribute INIT_25 : string;
  attribute INIT_26 : string;
  attribute INIT_27 : string;
  attribute INIT_28 : string;
  attribute INIT_29 : string;
  attribute INIT_2A : string;
  attribute INIT_2B : string;
  attribute INIT_2C : string;
  attribute INIT_2D : string;
  attribute INIT_2E : string;
  attribute INIT_2F : string;
  attribute INIT_30 : string;
  attribute INIT_31 : string;
  attribute INIT_32 : string;
  attribute INIT_33 : string;
  attribute INIT_34 : string;
  attribute INIT_35 : string;
  attribute INIT_36 : string;
  attribute INIT_37 : string;
  attribute INIT_38 : string;
  attribute INIT_39 : string;
  attribute INIT_3A : string;
  attribute INIT_3B : string;
  attribute INIT_3C : string;
  attribute INIT_3D : string;
  attribute INIT_3E : string;
  attribute INIT_3F : string;

  component RAMB16_S4
    --pragma translate_off
    generic (
      INIT_00 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_01 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_02 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_03 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_04 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_05 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_06 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_07 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_08 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_09 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_0A : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_0B : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_0C : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_0D : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_0E : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_0F : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_10 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_11 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_12 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_13 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_14 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_15 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_16 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_17 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_18 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_19 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_1A : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_1B : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_1C : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_1D : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_1E : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_1F : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_20 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_21 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_22 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_23 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_24 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_25 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_26 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_27 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_28 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_29 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_2A : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_2B : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_2C : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_2D : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_2E : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_2F : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_30 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_31 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_32 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_33 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_34 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_35 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_36 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_37 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_38 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_39 : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_3A : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_3B : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_3C : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_3D : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_3E : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000";
      INIT_3F : bit_vector (255 downto 0) := x"0000000000000000000000000000000000000000000000000000000000000000"
      );
    --pragma translate_on
    port (
      DO   : out std_logic_vector (3 downto 0);
      ADDR : in  std_logic_vector (11 downto 0);
      CLK  : in  std_logic;
      DI   : in  std_logic_vector (3 downto 0);
      EN   : in  std_logic;
      SSR  : in  std_logic;
      WE   : in  std_logic
      );
  end component;

  signal rom_addr : std_logic_vector(11 downto 0);

begin

  p_addr : process(ADDR)
  begin
    rom_addr              <= (others => '0');
    rom_addr(11 downto 0) <= ADDR;
  end process;

  rom0 : if true generate
    attribute INIT_00 of inst : label is "DDDDDD1000000000000000DDD11120329A72C978637A821F9668638229010901";
    attribute INIT_01 of inst : label is "000DDD229A9021F996863828C46A4C9223020602025849C30250530DDDDDDDDD";
    attribute INIT_02 of inst : label is "00001129A88873A4C9223030804C5962544520D9A09200C129A2000000000000";
    attribute INIT_03 of inst : label is "2C104170E3E90C35E9831D0000000335E9352052F4FDDF30029A218910938F00";
    attribute INIT_04 of inst : label is "B505A237A061CCA237A3CCB505A237A3CCA237A8C9511C8A8C971C8AC23A1240";
    attribute INIT_05 of inst : label is "1D06722241BA411061D0F3EF9435243E9000C111129A994B8B29051C02A061CC";
    attribute INIT_06 of inst : label is "0000229092501A395B0584D84970D2F705840549570329081406172921341B07";
    attribute INIT_07 of inst : label is "0000000000000000000000000000000005D900000000000000000000E0000000";
    attribute INIT_08 of inst : label is "4DD000000000000000000000000000000000E0BD487920465CDA290A290B20C0";
    attribute INIT_09 of inst : label is "5840498047EF4F1290C2E02000000000290B2A0B200600000000000000000E7F";
    attribute INIT_0A of inst : label is "0561805F9C1290D29052F330F40358F205840498CD1E6C5325F902F9214E5F20";
    attribute INIT_0B of inst : label is "97AB244D021430F4095B09E104980F21290E34021EB35C04FF700E34EF353006";
    attribute INIT_0C of inst : label is "E2BA9882C9884C9888C9886C9384C95528506003105172224ABA4A10F3600C00";
    attribute INIT_0D of inst : label is "8C46223A9821F966863828C429013700329384A2629284A0629184A2229084A1";
    attribute INIT_0E of inst : label is "284A23294A88873A9223023F09132A652C94482A9348226AA9A9021F99686382";
    attribute INIT_0F of inst : label is "2C1A21201329034206786321DA0C931737A8C978637A51C878637A9953264A23";
    attribute INIT_10 of inst : label is "A944CA942A1A9009822087980000052F33000E3290548027113994AC82BA1840";
    attribute INIT_11 of inst : label is "2A18C1BCAA7A18CA7AC9CC22A944CA942A1064D02A18CCC12AA7A18CA7A1BCC2";
    attribute INIT_12 of inst : label is "A92C49489232908490200000022494074E02214A01220A1218A0216A528A526A";
    attribute INIT_13 of inst : label is "48685216A5E1BA24AA2140F52023731ABA721F9861822AA6AE0946025764194B";
    attribute INIT_14 of inst : label is "A821C1D7A9082290A8ACC6A9420A18A828A16B626005F016B9484218A9484C99";
    attribute INIT_15 of inst : label is "10BA0C1D7A02972850A972850210015A00272720172BA1A72272A72262A14C02";
    attribute INIT_16 of inst : label is "D0447231390B035E018C107701310BA962850210A91484C07025F023C1077013";
    attribute INIT_17 of inst : label is "6066A09470196BA95686296A56A412290A01DCC918B256055A0427B1918BB045";
    attribute INIT_18 of inst : label is "1076D094ACC36230A1A2641B262361A2A994BC8C918B85228A3A981C918B8522";
    attribute INIT_19 of inst : label is "98524A28295688A26295686A36C382086608372313930A3882BA1A2841B28238";
    attribute INIT_1A of inst : label is "A6E01A2841B282381A84ACC36240A94ACC36230A1A2641B262361096C09918BC";
    attribute INIT_1B of inst : label is "94A28ACC262800B7E036C382A0C1D7A5E3A2D4C38A407A90C38A307A031C1D70";
    attribute INIT_1C of inst : label is "6822800D7901570356BA412B902560C750429A80295682A4295684A94A4C807A";
    attribute INIT_1D of inst : label is "2DDDDDDDDD329A94A4C807A1A323A1B4240E770494244A4A20220A9568424A95";
    attribute INIT_1E of inst : label is "96A442494A1A20220007606470214BA0C1D70F7A02AAC1D7A1B906140322A1A3";
    attribute INIT_1F of inst : label is "87A1A9841B982381A30A95688298A94ACC36230A1A9641B96236101840956862";
    attribute INIT_20 of inst : label is "A001412C103830429AA23C956827A0295686A36C382A1C94B84A3870282023C3";
    attribute INIT_21 of inst : label is "4087982DDDDDDDDDDDDD329A3C0097790098213B048E02A0C2B1D7A041C2B1D7";
    attribute INIT_22 of inst : label is "AE72E2134AF292134ABA4A1068900C8917AB2DDD002F5D1702584FE121329058";
    attribute INIT_23 of inst : label is "8637A2F32908950619AC78212A029224AB0781045782113ABA821F9861822AA6";
    attribute INIT_24 of inst : label is "11D810E7212EF28010C10C12EF285009B5FF0AAA303931AAA303931D00072C97";
    attribute INIT_25 of inst : label is "8060194040E00940206039401009850985AF985F9A8090988092000AC988011D";
    attribute INIT_26 of inst : label is "000000000000000000000F085192049602940C9E0094049603940C9085852920";
    attribute INIT_27 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_28 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_29 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_2A of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_2B of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_2C of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_2D of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_2E of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_2F of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_30 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_31 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_32 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_33 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_34 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_35 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_36 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_37 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_38 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_39 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3A of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3B of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3C of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3D of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3E of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3F of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
  begin
    inst : RAMB16_S4
      --pragma translate_off
      generic map (
        INIT_00 => romgen_str2bv(inst'INIT_00),
        INIT_01 => romgen_str2bv(inst'INIT_01),
        INIT_02 => romgen_str2bv(inst'INIT_02),
        INIT_03 => romgen_str2bv(inst'INIT_03),
        INIT_04 => romgen_str2bv(inst'INIT_04),
        INIT_05 => romgen_str2bv(inst'INIT_05),
        INIT_06 => romgen_str2bv(inst'INIT_06),
        INIT_07 => romgen_str2bv(inst'INIT_07),
        INIT_08 => romgen_str2bv(inst'INIT_08),
        INIT_09 => romgen_str2bv(inst'INIT_09),
        INIT_0A => romgen_str2bv(inst'INIT_0A),
        INIT_0B => romgen_str2bv(inst'INIT_0B),
        INIT_0C => romgen_str2bv(inst'INIT_0C),
        INIT_0D => romgen_str2bv(inst'INIT_0D),
        INIT_0E => romgen_str2bv(inst'INIT_0E),
        INIT_0F => romgen_str2bv(inst'INIT_0F),
        INIT_10 => romgen_str2bv(inst'INIT_10),
        INIT_11 => romgen_str2bv(inst'INIT_11),
        INIT_12 => romgen_str2bv(inst'INIT_12),
        INIT_13 => romgen_str2bv(inst'INIT_13),
        INIT_14 => romgen_str2bv(inst'INIT_14),
        INIT_15 => romgen_str2bv(inst'INIT_15),
        INIT_16 => romgen_str2bv(inst'INIT_16),
        INIT_17 => romgen_str2bv(inst'INIT_17),
        INIT_18 => romgen_str2bv(inst'INIT_18),
        INIT_19 => romgen_str2bv(inst'INIT_19),
        INIT_1A => romgen_str2bv(inst'INIT_1A),
        INIT_1B => romgen_str2bv(inst'INIT_1B),
        INIT_1C => romgen_str2bv(inst'INIT_1C),
        INIT_1D => romgen_str2bv(inst'INIT_1D),
        INIT_1E => romgen_str2bv(inst'INIT_1E),
        INIT_1F => romgen_str2bv(inst'INIT_1F),
        INIT_20 => romgen_str2bv(inst'INIT_20),
        INIT_21 => romgen_str2bv(inst'INIT_21),
        INIT_22 => romgen_str2bv(inst'INIT_22),
        INIT_23 => romgen_str2bv(inst'INIT_23),
        INIT_24 => romgen_str2bv(inst'INIT_24),
        INIT_25 => romgen_str2bv(inst'INIT_25),
        INIT_26 => romgen_str2bv(inst'INIT_26),
        INIT_27 => romgen_str2bv(inst'INIT_27),
        INIT_28 => romgen_str2bv(inst'INIT_28),
        INIT_29 => romgen_str2bv(inst'INIT_29),
        INIT_2A => romgen_str2bv(inst'INIT_2A),
        INIT_2B => romgen_str2bv(inst'INIT_2B),
        INIT_2C => romgen_str2bv(inst'INIT_2C),
        INIT_2D => romgen_str2bv(inst'INIT_2D),
        INIT_2E => romgen_str2bv(inst'INIT_2E),
        INIT_2F => romgen_str2bv(inst'INIT_2F),
        INIT_30 => romgen_str2bv(inst'INIT_30),
        INIT_31 => romgen_str2bv(inst'INIT_31),
        INIT_32 => romgen_str2bv(inst'INIT_32),
        INIT_33 => romgen_str2bv(inst'INIT_33),
        INIT_34 => romgen_str2bv(inst'INIT_34),
        INIT_35 => romgen_str2bv(inst'INIT_35),
        INIT_36 => romgen_str2bv(inst'INIT_36),
        INIT_37 => romgen_str2bv(inst'INIT_37),
        INIT_38 => romgen_str2bv(inst'INIT_38),
        INIT_39 => romgen_str2bv(inst'INIT_39),
        INIT_3A => romgen_str2bv(inst'INIT_3A),
        INIT_3B => romgen_str2bv(inst'INIT_3B),
        INIT_3C => romgen_str2bv(inst'INIT_3C),
        INIT_3D => romgen_str2bv(inst'INIT_3D),
        INIT_3E => romgen_str2bv(inst'INIT_3E),
        INIT_3F => romgen_str2bv(inst'INIT_3F)
        )
      --pragma translate_on
      port map (
        DO   => DATA(3 downto 0),
        ADDR => rom_addr,
        CLK  => CLK,
        DI   => "0000",
        EN   => ENA,
        SSR  => '0',
        WE   => '0'
        );
  end generate;
  rom1 : if true generate
    attribute INIT_00 of inst : label is "99999912222222222222221111111992933323333393333A2333332CB4001510";
    attribute INIT_01 of inst : label is "22211112932333A2333332C2A33A3A4B45001A02254454452545552999999999";
    attribute INIT_02 of inst : label is "22221129333333A3A4B44001F044444545554244425422112932222222222222";
    attribute INIT_03 of inst : label is "B480014024442254444444222222255444554245444444422293233332242922";
    attribute INIT_04 of inst : label is "A333A459333324A4593424A333A4493424A44933A233B42A3A23B42A4B4333A3";
    attribute INIT_05 of inst : label is "1803A22B248324A00170354445455554422291111293245A2BB4001608333324";
    attribute INIT_06 of inst : label is "2229129001001355442445845452454524452444549929001B033A252BB24800";
    attribute INIT_07 of inst : label is "2222222222222222222222222222222255342222222222222222222252222222";
    attribute INIT_08 of inst : label is "4342222222222222222222222222222222223243544452544434290015032232";
    attribute INIT_09 of inst : label is "44525442524441129001A0222222222229001603222522222222222222222454";
    attribute INIT_0A of inst : label is "2454425451129001D04544524525454424452544981244455545254554445442";
    attribute INIT_0B of inst : label is "3933259925455245254425442544291129001002124454244442225444445233";
    attribute INIT_0C of inst : label is "2B432325223252232422325223242233322580116033A22B258325A001103233";
    attribute INIT_0D of inst : label is "2A33B4532333A2333332C2A3B4011A033B2324333B2324333B2324333B232433";
    attribute INIT_0E of inst : label is "B35345B35333333A4B44011E03333A333A2332CA2332CB5434A2333A2333332C";
    attribute INIT_0F of inst : label is "B483249919290111033333B34332333339332333339333233333933333B35344";
    attribute INIT_10 of inst : label is "A35A4A35B48323332C22444422232454452229929011508A3BB235A42C8333A3";
    attribute INIT_11 of inst : label is "833323A4A4933324934A4A33A35A4A35B4801190833324A33A4933324933A4A3";
    attribute INIT_12 of inst : label is "32322452C2129011C023333332B245011A03B34333B3533B3433B3533B433B53";
    attribute INIT_13 of inst : label is "42B2BB353323A5B435B340111033A3B583333A23332CB53549011E033A35B458";
    attribute INIT_14 of inst : label is "A33323493252CB3534A4A5A35B5334A4B4335A5B50215035A242BB343242BA22";
    attribute INIT_15 of inst : label is "35833234935B2352253235225B35021803B35A35B35833A35B35335B35334A33";
    attribute INIT_16 of inst : label is "C033A33BB358021B0332359A3BB3583235225B35323424259021A0332359A3BB";
    attribute INIT_17 of inst : label is "50213033A3B358322525B35325A333B35333A4A232BB25021F033A4B232B8021";
    attribute INIT_18 of inst : label is "80215035A4A35B3533A35A3A35B35833A223A42A232B2BB3433A233A232B2BB3";
    attribute INIT_19 of inst : label is "32BB5334B22524335B2252533523480218033A33BB235A342C833A34A3A34B34";
    attribute INIT_1A of inst : label is "21E03A34A3A34B348335A4A35B35335A4A35B3533A35A3A35B358021B02232BA";
    attribute INIT_1B of inst : label is "35A34A4A35B35021103523483323493323A3A5234A359335234A359333323490";
    attribute INIT_1C of inst : label is "525B350215033A3B2583333A35B2502130338335B2252535B22525333A523593";
    attribute INIT_1D of inst : label is "2111111111129333A5235933A5B533A5B502190245B2535A35B35322525B5322";
    attribute INIT_1E of inst : label is "35325B24533A35B35031C033A3BB58332349021A0834234933AA333A333B4835";
    attribute INIT_1F of inst : label is "4933A34A3A34B348335A22524B34335A4A35B3533A35A3A35B3580310022525B";
    attribute INIT_20 of inst : label is "3333A3B48031503383333222525933B22525335234833235A35A349031303323";
    attribute INIT_21 of inst : label is "A04444111111111111111293523339A23332CB580317083323A349333323A349";
    attribute INIT_22 of inst : label is "49A242BB25A252BB258325A031D0323339332999229344442544544411129031";
    attribute INIT_23 of inst : label is "33393219290310033839A333B5B252B258031F033A333BB583333A23332CB535";
    attribute INIT_24 of inst : label is "91A5928FA928FAFD92C92A9287A76D4CCAF92EEE0F5C04EEE0F5C04A00033233";
    attribute INIT_25 of inst : label is "0E0D0A0D0E0F0A0D0E1D0A0D0E4AA882AAA72A884692C226A10098C4124FD91C";
    attribute INIT_26 of inst : label is "00000000000000000000036A80A0D1C0D0A0D2C0F0A0D2C1D0A0D0C6A8A00A0D";
    attribute INIT_27 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_28 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_29 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_2A of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_2B of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_2C of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_2D of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_2E of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_2F of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_30 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_31 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_32 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_33 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_34 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_35 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_36 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_37 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_38 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_39 of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3A of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3B of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3C of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3D of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3E of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
    attribute INIT_3F of inst : label is "0000000000000000000000000000000000000000000000000000000000000000";
  begin
    inst : RAMB16_S4
      --pragma translate_off
      generic map (
        INIT_00 => romgen_str2bv(inst'INIT_00),
        INIT_01 => romgen_str2bv(inst'INIT_01),
        INIT_02 => romgen_str2bv(inst'INIT_02),
        INIT_03 => romgen_str2bv(inst'INIT_03),
        INIT_04 => romgen_str2bv(inst'INIT_04),
        INIT_05 => romgen_str2bv(inst'INIT_05),
        INIT_06 => romgen_str2bv(inst'INIT_06),
        INIT_07 => romgen_str2bv(inst'INIT_07),
        INIT_08 => romgen_str2bv(inst'INIT_08),
        INIT_09 => romgen_str2bv(inst'INIT_09),
        INIT_0A => romgen_str2bv(inst'INIT_0A),
        INIT_0B => romgen_str2bv(inst'INIT_0B),
        INIT_0C => romgen_str2bv(inst'INIT_0C),
        INIT_0D => romgen_str2bv(inst'INIT_0D),
        INIT_0E => romgen_str2bv(inst'INIT_0E),
        INIT_0F => romgen_str2bv(inst'INIT_0F),
        INIT_10 => romgen_str2bv(inst'INIT_10),
        INIT_11 => romgen_str2bv(inst'INIT_11),
        INIT_12 => romgen_str2bv(inst'INIT_12),
        INIT_13 => romgen_str2bv(inst'INIT_13),
        INIT_14 => romgen_str2bv(inst'INIT_14),
        INIT_15 => romgen_str2bv(inst'INIT_15),
        INIT_16 => romgen_str2bv(inst'INIT_16),
        INIT_17 => romgen_str2bv(inst'INIT_17),
        INIT_18 => romgen_str2bv(inst'INIT_18),
        INIT_19 => romgen_str2bv(inst'INIT_19),
        INIT_1A => romgen_str2bv(inst'INIT_1A),
        INIT_1B => romgen_str2bv(inst'INIT_1B),
        INIT_1C => romgen_str2bv(inst'INIT_1C),
        INIT_1D => romgen_str2bv(inst'INIT_1D),
        INIT_1E => romgen_str2bv(inst'INIT_1E),
        INIT_1F => romgen_str2bv(inst'INIT_1F),
        INIT_20 => romgen_str2bv(inst'INIT_20),
        INIT_21 => romgen_str2bv(inst'INIT_21),
        INIT_22 => romgen_str2bv(inst'INIT_22),
        INIT_23 => romgen_str2bv(inst'INIT_23),
        INIT_24 => romgen_str2bv(inst'INIT_24),
        INIT_25 => romgen_str2bv(inst'INIT_25),
        INIT_26 => romgen_str2bv(inst'INIT_26),
        INIT_27 => romgen_str2bv(inst'INIT_27),
        INIT_28 => romgen_str2bv(inst'INIT_28),
        INIT_29 => romgen_str2bv(inst'INIT_29),
        INIT_2A => romgen_str2bv(inst'INIT_2A),
        INIT_2B => romgen_str2bv(inst'INIT_2B),
        INIT_2C => romgen_str2bv(inst'INIT_2C),
        INIT_2D => romgen_str2bv(inst'INIT_2D),
        INIT_2E => romgen_str2bv(inst'INIT_2E),
        INIT_2F => romgen_str2bv(inst'INIT_2F),
        INIT_30 => romgen_str2bv(inst'INIT_30),
        INIT_31 => romgen_str2bv(inst'INIT_31),
        INIT_32 => romgen_str2bv(inst'INIT_32),
        INIT_33 => romgen_str2bv(inst'INIT_33),
        INIT_34 => romgen_str2bv(inst'INIT_34),
        INIT_35 => romgen_str2bv(inst'INIT_35),
        INIT_36 => romgen_str2bv(inst'INIT_36),
        INIT_37 => romgen_str2bv(inst'INIT_37),
        INIT_38 => romgen_str2bv(inst'INIT_38),
        INIT_39 => romgen_str2bv(inst'INIT_39),
        INIT_3A => romgen_str2bv(inst'INIT_3A),
        INIT_3B => romgen_str2bv(inst'INIT_3B),
        INIT_3C => romgen_str2bv(inst'INIT_3C),
        INIT_3D => romgen_str2bv(inst'INIT_3D),
        INIT_3E => romgen_str2bv(inst'INIT_3E),
        INIT_3F => romgen_str2bv(inst'INIT_3F)
        )
      --pragma translate_on
      port map (
        DO   => DATA(7 downto 4),
        ADDR => rom_addr,
        CLK  => CLK,
        DI   => "0000",
        EN   => ENA,
        SSR  => '0',
        WE   => '0'
        );
  end generate;
end RTL;
