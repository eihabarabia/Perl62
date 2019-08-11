#!/usr/bin/env perl6

#`[
sub MAIN($first, $second) {
    put $first.^name;
    put $second.^name;
}]

#`[sub MAIN($arg) {
    put 'Saw ', do given $arg {
        when Int {'an integer'}
        when Complex { 'a complex number'}
        when Rat {'a rat! Eek!'}
        default {'somthing'}
    }
}]

#`[sub MAIN($number) {
    put .numerator, ' / ', .denominator given $number;
}]
#`[
my $n = 1;
my $sum = 0.FatRat;
loop {
    $sum += FatRat.new: 1, $n++;
    put .numerator, ' /', .denominator, ' = ', $_ given $sum;
    last if $n > 100;
}]

#`[my $number = 7.297351e-3;
put 'Number is a ', $number.^name;

my $rat = $number.Rat;
put 'Fraction is ', $rat.perl;

my $reciprocal = Rat.new: $rat.denominator, $rat.numerator;
put 'Reciprocal is ', $reciprocal;
put 'Reciprocal fraction is ', $reciprocal.perl;]


sub MAIN( $maximum = 100 ) {
    my $secret = Complex.new:
            $maximum.rand.Int,
            $maximum.rand.Int;

    put 'Secret number is ', $secret;

    my $re = $secret.re;
    my $im = $secret.im;

    loop {
        my $guess =
                prompt( 'Enter your guess (n+mi): ' ).Complex;

        if $guess == $secret {
            put 'You guessed it :)';
            last;
        }

        given $guess {
            put "Real part is ",
                    do if $re > .re {'too small'}
                    elsif $re < .re {'too larg'}
                    else {'just right'}

            put "imaginary part is ",
                    do if $im > .im {'too small'}
                    elsif $im < .im {'too larg'}
                    else {'just right'}
        }
    }
}
