import sys

if len(sys.argv) < 2:
    print("Kasutamine: task_02.py <laiend>", file=sys.stderr)
    sys.exit(1)

target = sys.argv[1]

try:
    with open("random.txt", encoding="utf-8") as f:
        count = sum(1 for line in f if line.strip() == target)
    print(f"{target}: {count}")
except FileNotFoundError:
    print("✗ random.txt puudub", file=sys.stderr)
    sys.exit(1)