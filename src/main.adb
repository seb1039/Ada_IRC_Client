with IRC_Request; use IRC_Request;

procedure Main is
begin
   connect(hostname => "rebma.instinctive.eu",
           HostPort => 6667);
   canal_chose(canal => "#test");
   send_message(channel => "#test",
                msg     => "test du code");
   quit(channel => "#test");
end Main;
