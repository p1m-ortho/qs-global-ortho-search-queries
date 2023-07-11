# Credit: ChatGPT Mar 14 Version (https://help.openai.com/en/articles/6825453-chatgpt-release-notes). Free Research Preview.

# Initial prompt:
# write a python script that would take in a text file (the file name should be taken as an argument), break it into an array using two new lines as a separator, and then shuffle this array using a space-separated list of unique random numbers (without replacement) from 1 to k (where k is the number of elements in the previously created array) that comes from another text file (its name should also be taken as an argument). then the script saves the shuffled array (joined with two new lines as a separator) into a file at the same place as the original text file but with _rnd suffix before extension. please take care that the script works correctly with an utf-8 encoded input file

# An index file comes from RANDOM.ORG Integer Set Generator: https://www.random.org/integer-sets/?mode=advanced

# Final output, with modifications:

import argparse

parser = argparse.ArgumentParser(description='Shuffle text file.')
parser.add_argument('input_file', type=str, help='Path to input text file.')
parser.add_argument('index_file', type=str, help='Path to index file.')
args = parser.parse_args()

# Read in the input file as a UTF-8 encoded string
with open(args.input_file, encoding='utf-8') as f:
    text = f.read()

# Split the text into an array using two new lines as a separator
array = text.split('\n\n')

# Read in the index file and convert it to a list of integers
with open(args.index_file) as f:
    indices = [int(x) for x in f.read().split()]

# Shuffle the array using the indices
shuffled_array = [array[i-1] for i in indices]

# Join the shuffled array with two new lines as a separator
shuffled_text = '\n\n'.join(shuffled_array)

# Write the shuffled text to a new file with _rnd suffix before extension
output_file = args.input_file.replace('.nbib', '_rnd.nbib')
with open(output_file, 'w', encoding='utf-8') as f:
    f.write(shuffled_text)
