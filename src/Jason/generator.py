lines = [line.strip().split(' ') for line in open('elems.txt', 'r').readlines() if line.strip()]

lines.sort()

defines = []
output = []

for line in lines:
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

    if t == 'object':
        output.append('{} :: Jason -> Jason'.format(k))
        output.append('{} = parent "{}"'.format(k, v))

    if t == 'array':
        output.append('{} :: Jason -> Jason'.format(k))
        output.append('{} = arrayParent "{}"'.format(k, v))

    if t == 'ref':
        output.append('{} :: Text -> Jason -> Jason'.format(k))
        output.append('{} = parent'.format(k))

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
