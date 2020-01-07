with Ada.Text_IO; use Ada.Text_IO;

package body IRC_Request is

   procedure connect(hostname : String ; HostPort : Port_Type) is
   begin
      Address.Addr := Addresses(Get_Host_By_Name(hostname), 1);
      Address.Port := HostPort;
      Initialize;
      Create_Socket  (Socket => Client,
                      Mode   => Socket_Stream);
      Put_Line("toto");
      Connect_Socket (Socket => Client,
                      Server => Address);
      Put_Line("toto est arrivé");
   end connect;
   
   procedure canal_chose(canal : String) is
   begin
      request(req_T => "JOIN",
              msg   => canal);
   end canal_chose;
   
   procedure send_message(channel: String; msg: String) is
   begin
      request(req_T => "PRIVMSG " & channel & " :",
              msg   => msg);
   end send_message;
   
   procedure quit(channel: String) is
   begin
      request(req_T => "PART",
              msg   => channel);
      Close_Socket(Socket => Client);
   end quit;
   
   procedure request(req_T : String; msg : String) is
   begin
      String'Write(Stream (Client), req_T & msg);
   end request;

end IRC_Request;
