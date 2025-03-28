# cython: language_level=3
from libcpp cimport bool  # Correctly import bool
from algorithm cimport Algorithm  # Correct import


cdef class PyAlgorithm:
    cdef Algorithm* c_algo

    def __cinit__(self, double p1=10.0, int p2=5, bool p3=True):

        self.c_algo = new Algorithm(p1, p2, p3)

    def __dealloc__(self):
        del self.c_algo

    def set_params(self, **kwargs):
        if 'param1' in kwargs:
            self.c_algo.param1 = kwargs['param1']
        if 'param2' in kwargs:
            self.c_algo.param2 = kwargs['param2']
        if 'param3' in kwargs:
            self.c_algo.param3 = kwargs['param3']

    def get_params(self):
        return {
            "param1": self.c_algo.param1,
            "param2": self.c_algo.param2,
            "param3": self.c_algo.param3
        }

    def compute(self):
        return self.c_algo.compute()
