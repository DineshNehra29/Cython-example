# cython: language_level=3
from libcpp cimport bool  
from algorithm cimport Algorithm  


cdef class PyAlgorithm:
    cdef Algorithm* c_algo

    def __cinit__(self, double param1=10.0, int param2=5, bool param3=True):
     
        self.c_algo = new Algorithm(param1, param2, param3)

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
