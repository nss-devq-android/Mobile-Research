import re
#Usage Case?: Any title with words such as "Earnings" would be found by a hard-coded regexp to be sorted into the right category
regexp = re.compile(r"\bread\b|\bstory\b|\bbook\b") #punctuation is safe

tests = ["i like this story", "this hat is nice", "i like that book"]
matches = []
for test in tests:
    #re.search() checks entire string for pattern
    #re.match() checks only pos 0 for pattern (unless you specify another pos in third argument: pos = 4)
    #re.MULTILINE() checks only pos 0 for pattern on multiple lines (Useful when?: Getting info from timestamps)
    if re.search(regexp, test): 
        matches.append(test)

print(matches)