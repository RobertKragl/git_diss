if ($^O eq 'MSWin32') {
    $ENV{'PATH'} = join ';',
        grep { !m{[\\/]git-(?:bash|cmd)\.exe[\\/]?$}i }
        split /;/, $ENV{'PATH'};
}