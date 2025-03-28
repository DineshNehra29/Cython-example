from setuptools import setup, Extension
from Cython.Build import cythonize

ext_modules = [
    Extension(
        "algorithm",
        sources=["cython/algorithm.pyx", "cpp/algorithm.cpp"],
        language="c++"
    )
]

setup(
    name="algorithm",
    ext_modules=cythonize(ext_modules),
)
