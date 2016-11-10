lines = [line.strip().split(' ') for line in open('elems.txt', 'r').readlines() if line.strip()]

lines.sort()

defines = []
output = []

def strip(line):
    return [l for l in line if line]

for line in lines:
    line = strip(line)
    k = line[0]
    v = line[0]
    t = 'object'

    if len(line) >= 2:
        v = line[1]

    if len(line) == 3:
        t = line[2]

    if k in defines:
        continue

    defines.append(k)
    output.append('')

    output.append('-- generate {} {}'.format(t, k))
    output.append('-- WARNING: this file is generate by generater.py, do not change.')
    output.append('--          edit elems.txt and run `python3 generater.py` to regenerate.')
    if t == 'object':
        output.append('{} :: Jason -> Jason'.format(k))
        output.append('{} = parent "{}"'.format(k, v))

    if t == 'array':
        output.append('{} :: Jason -> Jason'.format(k))
        output.append('{} = arrayParent "{}"'.format(k, v))

    if t == 'ref':
        output.append('{} :: Text -> Jason -> Jason'.format(k))
        output.append('{} = parent'.format(k))

    if t == 'api':
        output.append('{} :: Jason -> Jason'.format(k))
        output.append('{} extra = leaf $ do'.format(k))
        output.append('  type_ "{}"'.format(v))
        output.append('  extra')

fp = open('Core.hs', 'w')

fp.write('{-# LANGUAGE OverloadedStrings #-}\n')
fp.write('''
module Jason.Core
  (
    {}
  ) where

import           Data.Text      (Text)
import           Jason.Internal
import           Prelude        hiding (head)
'''.format('\n  , '.join(defines)))

fp.write('\n'.join(output))

fp.close()
