<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testtimer.aspx.cs" Inherits="saleman.testtimer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <script type="text/javascript">
        var timeleft =<%=seconds %>;
        
        function startcountdown() {
            var interval = setInterval(countdown,1000);
            update();
            function countdown() {
                if (--timeleft > 0) {
                    update();
                }
                else {
                    clearInterval(interval);
                    update();
                    compleated();
                }
            }

            function update() {
                day = Math.floor(timeleft / (60 * 60 * 24));
                hours = Math.floor(timeleft / 3600) - (day * 24);
                minutes = Math.floor((timeleft % 3600) / 60);
                seconds = timeleft % 60;
                document.getElementById('lblTimeLeft').innerHTML = day + " days   "+ '' + hours + ':'+ minutes+ ':' + seconds;
            }
            function completed() {
                document.write("finish");
            }
        }


    </script>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><div>
            <asp:Button ID="Button1" runat="server" Text="Button" />

            <br />
            <br />


            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:Timer ID="Timer1" Interval="1000" runat="server" OnTick="Timer1_Tick"></asp:Timer>

            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
                <ContentTemplate>

                    <asp:Label ID="lblTimeLeft" runat="server" Text="Label"></asp:Label>



                    
                    <br />
            <asp:Label ID="hourss" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="times" runat="server" Text="Label"></asp:Label>
                </ContentTemplate>
                
            </asp:UpdatePanel>
            
            <br />
            <br />
            <br />

            
        </div>
    </form>
</body>
</html>
