import numpy as np
from itertools import permutations

def levi_civita(n):
    """
    Generate the Levi-Civita permutation symbol (n-dimensional).
    
    Parameters:
    n (int): The dimension of the Levi-Civita symbol (e.g., 2 for ε_ij, 3 for ε_ijk)
    
    Returns:
    np.ndarray: A tensor of shape (n, n, ..., n) with the Levi-Civita symbol values.
    """
    # Create an n-dimensional tensor filled with zeros
    epsilon = np.zeros((n,) * n, dtype=int)
    
    # Get all permutations of indices [0, 1, ..., n-1]
    for perm in permutations(range(n)):
        # Compute the sign of the permutation
        sign = np.linalg.det(np.eye(n)[:, perm])
        epsilon[perm] = int(sign)
    
    return epsilon

# Example: Generate the 3D Levi-Civita symbol (ε_ijk)
# levi_3d = levi_civita(3)

# print("Levi-Civita Symbol (3D):")
# print(levi_3d)
