#!/bin/perl

open(HOSTS,"<hosts");
open(OUT,">out.txt");

while(<HOSTS>)
{

    #print ;

    if(/^#/)
    {
        #print "    comment line.\n";
    }elsif(/^((\d{1,3}\.){3}\d{1,3})\s+(\S+)$/)
    {
        print("IP:".$1."    Host:".$3."\n") ;
        print OUT "address=/$3/$1\n" ;
    }

}

close(HOSTS);
close(OUT);
