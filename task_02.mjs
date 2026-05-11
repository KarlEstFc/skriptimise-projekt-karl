import { readFileSync } from 'fs';

if (!process.argv[2]) {
  console.error('usage: task_02.mjs <ext>');
  process.exit(1);
}

try {
  const count = readFileSync('random.txt', 'utf8')
    .split('\n')
    .filter(l => l === process.argv[2]).length;
  console.log(`${process.argv[2]}: ${count}`);
} catch (e) {
  console.error(`✗ random.txt puudub`);
  process.exit(1);
}
