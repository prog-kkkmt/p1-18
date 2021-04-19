import numpy as np 
import matplotlib.pyplot as plt
 
X = np.linspace(-np.pi, np.pi, 256, endpoint=True) 
cos, sin = np.cos(X), np.sin(X)
 
plt.plot(X, cos) 
plt.plot(X, sin)
 
plt.show()
