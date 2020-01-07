with GNAT.Sockets; use GNAT.Sockets;
with Ada.Text_IO;  use Ada.Text_IO;

package IRC_Request is
   
   Client : Socket_Type;
   Address : Sock_Addr_Type;

   procedure connect(hostname : String ; HostPort : Port_Type);
   procedure canal_chose(canal : String);
   procedure send_message(channel: String; msg: String);
   procedure quit(channel : String);
   
--private
   procedure request(req_T : String; msg : String);
      
end IRC_Request;
