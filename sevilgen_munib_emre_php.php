<html>
<body>

<?php 
    // This example is appropriate for the homework because
    // it tests everything about the four issues

    // Can have default values
    // Has only positional paratmeters
    // If not enough actual parameter other formals without default value are undefined 
    // Optional parameters cen be used directly

    function foo1($a, $b, $c="formal c") {
        echo "a: $a\n";
        echo "b: $b\n";
        echo "c: $c\n";
    }
    echo "Foo1:\n";
    foo1("actual a", "actual b", "actual c");
    echo "----------\n";
    echo "Foo1:\n";
    foo1("actual a", "actual b");
    echo "----------\n";
    echo "Foo1:\n";
    // Warning: Missing argument 2 for foo1(), called in sevilgen_munib_emre_php.php on line 13 and defined on line 3
    foo1("actual a");
    echo "----------\n";

    
    // Variable number of params is possible with *args at the end
    function foo2($a, ...$args) {
        echo "a: $a\n";
        for($index = 0 ; $index < count($args) ; $index++ ) {
            echo "$index: $args[$index]\n";
        }        
    }
    echo "Foo2:\n";
    foo2("actual a", "actual b", "actual c");
    echo "----------\n";

    // Default is pass by value
    // Pass by refernce with & at the beginning
    function foo3($a, &$b) {
        $a = "a in foo3";
        $b = "b in foo3";  
    }

    $a = "a in global";
    $b = "b in global";
    echo "Before foo3: a = $a, b = $b\n";
    foo3($a, $b);
    echo "After foo3: a = $a, b = $b\n"

?>

</body>
</html>