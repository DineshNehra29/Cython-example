from algorithm import PyAlgorithm

algo = PyAlgorithm(param1=20.0, param2=10, param3=True)
print("Initial parameters:", algo.get_params())

algo.set_params(param1=5.0, param3=False)
print("Updated parameters:", algo.get_params())

print("Computation result:", algo.compute())


algo2 = PyAlgorithm(param1=210.0, param2=100, param3=True)
print("algo2 parameters:", algo2.get_params())
print("Computation result:", algo2.compute())

algo3 = PyAlgorithm(param1=210.0, param3=True)
print("algo3 parameters:", algo3.get_params())
print("Computation result:", algo3.compute())
