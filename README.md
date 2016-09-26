#TASK1

Write a method that takes an array of Strings and returns and equal length array of strings.

Each element of resulting array should contain the same strings ordered by string length (shorter first).

If a string starts with "Subaru" then it should order before any other strings and the resulting string append " - this guy knows what to do" . If multiple strings start with "Subaru" then order again based on length.

If string equals to "Subaru Forester" then it should order even before "Subaru" starting strings and result should be appended with " - this guy knows what to do very well".

example:
```
mymethod(["asd", "aasd", "Subaru Impreza", "Subaru Forester", "Subaru Exiga"])

=> ["Subaru Forester - this guy knows what to do very well", "Subaru Exiga - this guy knows what to do", "Subaru Impreza - this guy knows what to do", "asd", "aasd"]
```

Second part of the task: define a number of test cases for that method (it is optional whether you implement them in code or only describe them).

#TASK2
Write a program that takes as first parameter "issues" or "pulls" and github repo as second parameter. Use the github REST API to output the number of open and closed issues or pull requests for the desired repo.

example:
```
$ ruby myprog.rb issues openshift/origin
openshift/origin issues: 2015 closed, 812 open
```
