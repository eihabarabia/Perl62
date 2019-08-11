#!/usr/bin/env perl6
#`[

loop {
    state $sum = 0;
    put $sum += 3;
}

loop {
    state $sum = 0;
    put $sum = $sum + 3;
}

my $interval = 3;
loop {
    state $sum = 0;
    put $sum += $interval;
}

sub MAIN($interval = 3) {
    loop {
        state $sum = 0;
        put $sum += $interval
    }
}
]

#`[
loop {
    state $sum = 0;
    $sum += 1;
    next if $sum %% 2;
    put $sum;
    last if $sum > 5;
}]

#`[loop {
    state $n = 1;
    put do if $n %% 3 && $n %% 5 {'FizzBuzz'}
    elsif $n %% 3 {'Fizz'}
    elsif $n %% 5 {'Buzz'}
    else {$n}

    $n += 1;
    last if $n > 100;
}]

#`[sub MAIN( $highest = 100, $pivot = $highest / 2 ) {
    my $number = $highest.rand.Int;
    put 'Number is ', $number;

    if $number > $pivot {
        put 'The Number is greater than ', $pivot;
    }
    elsif $number < $pivot {
        put 'The Number is less than ', $pivot;
    }
    else {
        put 'The Number is ', $pivot;
    }
}]

sub MAIN( $maximum = 100 ) {
    my $secret-number = $maximum.rand.Int;
    put 'Secret number is: ', $secret-number;

    loop {
        my $guess = prompt 'Enter a guess: ';

        if $guess == $secret-number {
            put ' You guessed it!';
            last;
        }
        elsif $guess < $secret-number {
            put 'Guess higher :)';
        }
        elsif $guess > $secret-number {
            put 'Guess lower';
        }
    }
}
