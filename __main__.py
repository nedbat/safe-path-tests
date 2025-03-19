import os
import sys

print("=" * 80)
print(f"{sys.version}")
print(f"{sys.argv = }")
print(f"{os.getcwd() = }")

print("sys.path:")
for i, p in enumerate(sys.path):
    print(f"  {i}: {p}")

print("")

print("sys.flags:")
for n in dir(sys.flags):
    v = getattr(sys.flags, n)
    if isinstance(v, (int, bool)):
        print(f"  {n}: {getattr(sys.flags, n)}")

print("-" * 80)
