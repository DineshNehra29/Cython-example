from libcpp cimport bool  

cdef extern from "../cpp/algorithm.h":
    cdef cppclass Algorithm:
        Algorithm(double, int, bool) except +
        double compute()
        double param1
        int param2
        bool param3
