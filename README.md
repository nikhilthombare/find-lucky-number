# Find lucky number

A "lucky number" is one where the digits add up to 7 in successive additions (7 itself also counts as a lucky number). For example, 62431 is a lucky number because 6 + 2 + 4 + 3 + 1 = 16, 1 + 6 = 7. Your task will be to write a program that finds all lucky numbers between arg1 and arg2 (both inclusive). Both arguments are required and will be positive integers. Assume that arg1 < arg2.
 
You will submit two files: a RSpec file and a Ruby file. Your RSpec tests should ensure that the program functions properly for any arguments meeting the above criteria. Don't worry about testing for invalid arguments - the focus should be on the lucky number logic. Please add tests at the minimum for the following cases: 100 to 200, 62,400 to 62,500, and 999,999,999,900 to 1,000,000,000,000. Feel free to add additional test cases as desired.

Your program should work as follows (arg1 = 100, arg2 = 200):
```bash
ruby lucky.rb 100 200
```

With resulting output:
```
106
115
124
133
142
151
160
169
178
187
196
```

## How to run ruby program

```$ ruby find_lucky_number.rb```

## How to run Test Case (RSpec)

```$ rspec specs_lucky_number.rb```
