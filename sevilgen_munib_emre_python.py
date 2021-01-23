# This example is appropriate for the homework because
# it tests everything about the four issues

# Both positional and keyword parameter is possible
# Optional parameters should be at the end and must have default value
def foo1(a, b, c = "formal c"):
	print("a:", a)
	print("b:", b)
	print("c:", c)

print("Foo1:")
foo1("actual a", "actual b", "actual c")
print("----------")
print("Foo1:")
foo1("actual a", "actual b")
print("----------")
# TypeError: foo() takes at least 2 arguments (1 given)
# foo("actual a")
# print("----------")
print("Foo1:")
foo1(a = "actual a", b = "actual b", c = "actual c")
print("----------")
print("Foo1:")
foo1(b = "actual b", a = "actual a")
print("----------")

# Variable number of params is possible with *args at the end
def foo2(a, *args):
	print("a:", a)
	for i in range(len(args)):
		print(str(i) + ": " + args[i])

print("Foo2:")
foo2("actual a", "actual b", "actual c")
print("----------")

# Pass by assignment actual is assigned to the formal
def foo3(a, myList):
	a += 1
	myList.append("c of foo3")

a = 1
myList = ["b of global"]
print("Before foo3: a =", a, "- list =", myList)
foo3(a, myList)
print("After foo3: a =", a, "- list =", myList)

