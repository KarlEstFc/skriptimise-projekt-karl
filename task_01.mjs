import { readFileSync, appendFileSync } from 'fs';
import { randomInt } from 'crypto';

try {
  const ext = readFileSync('laiendid.txt', 'utf8').split('\n').filter(Boolean);
  if (!ext.length) throw new Error('Fail on tühi');
  const pick = ext[randomInt(0, ext.length)];
  appendFileSync('random.txt', pick + '\n');
  console.log(`✓ ${pick}`);
} catch (e) {
  console.error(`✗ ${e.message}`);
  process.exit(1);
}
