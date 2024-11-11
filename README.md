# BinaryToGray4Bit

This project implements a **4-Bit Binary to Gray Code Converter** in VHDL. It efficiently converts a 4-bit binary input into its equivalent Gray code, where only one bit changes between consecutive values, minimizing errors in digital transitions.

## Project Files

- **Bit_Binary_to_Gray_Converter.vhd**: The main VHDL file implementing the binary-to-Gray code converter.
- **Bit_Binary_to_Gray_Converter_tb.vhd**: The testbench file that verifies the converter’s functionality by simulating various binary inputs and observing the expected Gray code outputs.

## Quick Overview

### Main Component: `Bit_Binary_to_Gray_Converter`

| Signal | Direction | Type                  | Description                   |
|--------|-----------|-----------------------|-------------------------------|
| B      | in        | `STD_LOGIC_VECTOR(3 downto 0)` | 4-bit binary input        |
| G      | out       | `STD_LOGIC_VECTOR(3 downto 0)` | 4-bit Gray code output    |

#### Functionality
- **Direct MSB Assignment**: The most significant bit of `G` is directly assigned from `B`.
- **Gray Code Conversion**: Remaining bits are calculated by XORing adjacent bits of `B`.

### Testbench Highlights

The testbench stimulates the converter with various binary values and verifies the Gray code output:

```vhdl
B <= "1100"; -- Expected Gray "1010"
B <= "1111"; -- Expected Gray "1000"
B <= "0001"; -- Expected Gray "0001"
