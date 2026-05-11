# Task Runner — Multiplatform Extension Manager

Professional, elegant implementation across **4 languages**: Bash, Python, Node.js, and PowerShell.

## Overview

This project demonstrates clean, minimal code patterns for file I/O operations. Two core tasks:

1. **Task 1** — Select random extension from `laiendid.txt`, append to `random.txt`
2. **Task 2** — Count occurrences of specified extension in `random.txt`

## Installation

```bash
git clone https://github.com/KarlEstFc/skriptimise-projekt-karl.git
cd skriptimise-projekt-karl
```

## Quick Start

### Bash
```bash
./task_01.sh              # Generate random extension
./task_02.sh txt          # Count 'txt' occurrences
```

### Python
```bash
python task_01.py         # Generate random extension
python task_02.py txt     # Count 'txt' occurrences
```

### Node.js
```bash
npm install               # Optional: only needed for npm scripts
npm run task:01           # Generate random extension
npm run task:02 txt       # Count 'txt' occurrences
```

### PowerShell
```powershell
Import-Module .\TwoTask\TwoTask.psd1
Task01                    # Generate random extension
Task02 -Laiend txt        # Count 'txt' occurrences
```

### Universal Runner (Auto-detects Runtime)
```bash
./run task1               # Run Task 1 with any available runtime
./run task2 txt           # Run Task 2 with any available runtime
```

### Makefile (Cross-platform)
```bash
make task1                # Generate random extension
make task2 EXT=txt        # Count 'txt' occurrences
make test                 # Run full workflow
make clean                # Remove random.txt
```

## Project Structure

```
.
├── task_01.sh            # Bash: Generate random extension
├── task_02.sh            # Bash: Count occurrences
├── task_01.py            # Python: Generate random extension
├── task_02.py            # Python: Count occurrences
├── task_01.mjs           # Node.js: Generate random extension
├── task_02.mjs           # Node.js: Count occurrences
├── TwoTask/              # PowerShell module
│   ├── TwoTask.psd1      # Module manifest
│   ├── TwoTask.psm1      # Module loader
│   └── Functions/
│       ├── Task01.ps1    # PowerShell: Generate random extension
│       └── Task02.ps1    # PowerShell: Count occurrences
├── laiendid.txt          # Input file (file extensions)
├── random.txt            # Output file (generated results)
├── package.json          # Node.js configuration
├── Makefile              # Universal build interface
├── run                   # Intelligent runtime detector
└── README.md             # This file
```

## Implementation Details

### Code Philosophy
- **Minimal**: No unnecessary complexity, ~10-20 lines per script
- **Professional**: Clean error handling, proper exit codes
- **Elegant**: Unicode symbols (✓/✗), efficient logic
- **Portable**: Works on Windows, macOS, Linux

### Data Files
- **laiendid.txt** — Source file with one file extension per line (txt, pdf, jpg, png)
- **random.txt** — Dynamically created; stores results from Task 1

## Error Handling

All implementations gracefully handle:
- Missing input files (`laiendid.txt`)
- Empty input files
- Missing output files (Task 2 prerequisite)
- Invalid command-line arguments

Exit code `1` indicates failure; `0` indicates success.

## Performance

All implementations are optimized for:
- Memory efficiency (streaming, no large buffers)
- Speed (single-pass reads where possible)
- Startup time (minimal dependencies)

## Compatibility

| Platform | Supported | Required |
|----------|-----------|----------|
| **Windows** | ✓ | PowerShell or Python or Node.js |
| **macOS** | ✓ | Bash or Python or Node.js |
| **Linux** | ✓ | Bash or Python or Node.js |

## Development

### Run all tests
```bash
make test
```

### Clean up generated files
```bash
make clean
```

### Add to PATH for global access
```bash
chmod +x ./run
export PATH=$PATH:$(pwd)
```

## License

Open source — feel free to use and modify.

---

**Karl** | [GitHub](https://github.com/KarlEstFc/)