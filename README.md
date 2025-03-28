# Cython Wrapping of a C++ Algorithm

## Overview
This project demonstrates how to use Cython to wrap a C++ algorithm, enabling parameter access and modification using Python keyword arguments. This example can be used as a reference for improving parameter accessibility in PyOpenMS.

## Features
- Wraps a C++ class using Cython.
- Allows setting and retrieving parameters via Python keyword arguments.
- Provides a simple setup for compiling the C++ code and using it in Python.

## Prerequisites
Ensure you have the following installed:
- Python 3.8 or later
- Cython
- A C++ compiler (e.g., MSVC on Windows, g++ on Linux/Mac)

## Project Structure
```
Cython-example/
│── src/
│   │── cpp/
│   │   │── algorithm.h       # C++ header file defining the class
│   │   │── algorithm.cpp     # C++ implementation file
│   │── cython/
│   │   │── algorithm.pxd     # Cython header file
│   │   │── algorithm.pyx     # Cython wrapper file
│   │── setup.py              # Build script for Cython
│   │── test.py               # Python script to test the wrapped C++ class
```

## Installation and Setup
1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/Cython-example.git
   cd Cython-example/src
   ```
2. Install dependencies:
   ```sh
   pip install cython
   ```
3. Compile the Cython module:
   ```sh
   python setup.py build_ext --inplace
   ```

## Usage
Run the test script to see the algorithm in action:
```sh
python test.py
```
Expected output:
```sh
Initial parameters: {'param1': 20.0, 'param2': 10, 'param3': True}
Updated parameters: {'param1': 5.0, 'param2': 10, 'param3': False}
Computation result: 15.0
```

## Explanation
- **cpp/algorithm.h & cpp/algorithm.cpp**: Define the C++ class with multiple parameters.
- **cython/algorithm.pxd & cython/algorithm.pyx**: The Cython wrapper that exposes the C++ class to Python.
- **setup.py**: Compiles the C++ and Cython files into a Python module.
- **test.py**: Runs a simple test to verify functionality.

## Troubleshooting
- If you encounter a compilation error, ensure that your compiler is installed and accessible.
- On Windows, use `MSVC` from Visual Studio Build Tools.
- On Linux/Mac, install `g++` via your package manager.
- If `ModuleNotFoundError: No module named 'algorithm'` occurs, ensure you are running `test.py` inside the `src` directory.

## Contributing
Feel free to fork and contribute by submitting pull requests!


