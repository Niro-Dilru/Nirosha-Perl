sub portAlive {
    my $proto = getprotobyname('tcp');
    my $iaddr = inet_aton($host);
    my $paddr = sockaddr_in($port, $iaddr);
    
    socket(SOCKET, PF_INET, SOCK_STREAM, $proto) || warn "socket: $!";
    
    eval {
      local $SIG{ALRM} = sub { die "timeout" };
      alarm($timeout);
      connect(SOCKET, $paddr) || error();
      alarm(0);
    };
    
    if ($@) {
      close SOCKET || warn "close: $!";
      # print "$hostname is NOT listening on tcp port $portnumber.\n";
      return 0;
    }
    else {
      close SOCKET || warn "close: $!";
      # print "$hostname is listening on tcp port $portnumber.\n";
      return 1;
    }
}
