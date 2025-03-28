from algorithm import PyAlgorithm

algo = PyAlgorithm(p1=20.0, p2=10, p3=True)
print("Initial parameters:", algo.get_params())

algo.set_params(param1=5.0, param3=False)
print("Updated parameters:", algo.get_params())

print("Computation result:", algo.compute())
