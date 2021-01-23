# This example is appropriate for the homework because
# it tests everything about the four issues

# Parameters are got by parameter array therefore this has positional parameters
# Optional parameter can be done with the array
# Default values can be assigned with the if statements
sub foo1 {
	($a, $b, $c) = @_;
	# Default values can be assigned by this
	if (not defined($c) ) { 
		$c = "formal c"; 
	}
	print "a: $a\n";
	print "b: $b\n";
	print "c: $c\n";
}

print "Foo1:\n";
foo1("actual a","actual b","actual c");
print "----------\n";
print "Foo1:\n";
foo1("actual a","actual b");
print "----------\n";
print "Foo1:\n";
foo1("actual a", "actual c");
print "----------\n";
print "Foo1:\n";
foo1("actual a");
print "----------\n";
print "Foo1:\n";
foo1();
print "----------\n";

# Named variables can be used by hash
sub foo2 {
	($a, $hash) = @_;
	print "a: $a\n";
	foreach $key (keys %hash) {
		$value = $hash{$key};
		print "$key: $value\n";

	}
}
$hash{"b"} = "actual b";
$hash{"c"} = "actual c";

print "Foo2:\n";
foo2("actual a", $hash);
print "----------\n";

# Variable Number of Actual Parameters can be used by arrays
sub foo3 {
	my ($a, $params) = @_;
	print "a: $a\n";
    for (my $index = 0; $index <= $#params; $index++) {
		print "$index: $params[$index]\n";
	}
}
@params = ("actual b","actual c");
print "Foo3:\n";
foo3("actual a", $params);
print "----------\n";

# Pass parameters by reference as default
# Pass by value can be done by creating local variables with my
sub foo4 {
	$a, my $b = @_;
	$a = "a of foo4";
	$b = "b of foo4";
	$_[2] = "c of foo4";
}

$a = "a of global";
$b = "b of global";
$c = "c of global";

print "Before foo4: a = $a, b = $b, c = $c\n";
foo4($a, $b, $c);
print "After foo4: a = $a, b = $b, c = $c\n";


