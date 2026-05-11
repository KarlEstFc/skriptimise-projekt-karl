import random
import sys

try:
    with open("laiendid.txt", encoding="utf-8") as f:
        extensions = [line.strip() for line in f if line.strip()]
    
    if not extensions:
        raise ValueError("Fail on tühi")
    
    chosen = random.choice(extensions)
    with open("random.txt", "a", encoding="utf-8") as f:
        f.write(chosen + "\n")
    print(f"✓ {chosen}")
except FileNotFoundError:
    print("✗ laiendid.txt puudub", file=sys.stderr)
    sys.exit(1)
except ValueError as e:
    print(f"✗ {e}", file=sys.stderr)
    sys.exit(1)