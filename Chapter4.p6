#`[loop {

    my $string = prompt 'Enter a string: ';
    last if $string.chars == 0;
    put 'There are ', $string.chars, ' charachters';
}]

#`[loop {
    my $string = prompt 'Enter a string: '.lc;
    last if $string.chars == 0;
    put 'Found Hamad' if $string.contains: 'Hamad'.lc;
}]
#`[

my $first = prompt 'First number is: ';
my $second = prompt 'Second number is: ';

put 'Sum is: ' , $first + $second;
put 'Diference is: ', $first - $second;
put 'Multiplix is: ', $first * $second;
put 'Quetint is: ', $first / $second]


#`[my $first = prompt 'First number is: ';
my $second = prompt 'Second number is: ';

if val($first) ~~ Numeric and val($second) ~~ Numeric {
    put 'Sum is: ' , $first + $second;
    put 'Diference is: ', $first - $second;
    put 'Multiplix is: ', $first * $second;
    put 'Quetint is: ', $first / $second;
}
else {
    put 'one of the values isn\'t numeric'
}]

#`[
my $first = prompt 'First number is: ';
my $second = prompt 'Second number is: ';

if val($first) !~~ Numeric {
    put 'First Value is not a numeric.'
} elsif val($second) !~~ Numeric {
    put 'Second Value is not a numeric.'
} else {
    put 'Sum is: ' , $first + $second;
    put 'Diference is: ', $first - $second;
    put 'Multiplix is: ', $first * $second;
    put 'Quetint is: ', $first / $second;
}
]


loop {
    my $string = prompt ('Please enter a string: ').lc;
    last if $string.chars == 0;
    put "'$string' has {$string.chars} characters";
}