# Base Conversion Toolkit (Decimal to Base-b)

A specialized Matlab tool developed during my Mathematics BSc, designed to convert decimal numbers into any numeral system with base $b \in [2, 9]$.

### 🧮 Mathematical Methodology
The toolkit implements two fundamental numerical algorithms:
1. **Euclidean Division (Successive Division):** Used for the integer component to determine coefficients $a_i$. 
2. **Repeated Multiplication:** Used for the fractional component to isolate digits $b_i$ up to a user-defined precision (`ndigits`). 

### 🚀 Examples
```matlab
% Example: 98.5 to base-9 (7 fractional digits)
mydec2baseb(98.5, 9, 7) % Output: '118.4444444'
```

### 📄 Documentation
For a detailed mathematical analysis and technical implementation details, please refer to the project report:
* [View Technical Report (PDF)](./documentation/Numerical%20Analysis%20-%20Lab%20Project%201.pdf) 
* [LaTeX Source Code](./documentation/Numerical%20Analysis%20-%20Lab%20Project%201.tex)


