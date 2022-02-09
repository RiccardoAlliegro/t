<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SDB_2021.WebForm1" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-12 grid-margin">
            <div class="row">
                <div class="col-12 col-xl-12">
                    <img src="../Styles/Images/IconeSDB/projects.svg" style="width:70px; padding-right:10px;" />
                    <span class="h3" style="position:absolute; margin-top:3px; font-family:Poppins; text-transform: uppercase;">Projects</span><br />
                    <span class="h4" style="position:absolute; margin-top:-25px; margin-left:70px; font-family:Arial, Helvetica, sans-serif;">Manage customers based on the specific project.</span>
                    <img src="../Styles/Images/questionMark.svg" style="margin-top:-55px; width:40px; height:40px; " class="float-right" alt="logo" />
                </div>
            </div>
        </div>
    </div>

    <div class="boxContent">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#AddVisit">Launch</button>
    </div>
    <style>
        .cols {
	text-align: center;
	word-break: break-all;
	padding: 1em 0;
	background-color:   rgba(255,255,255,0.8);
	border-radius: 4px;
	font-weight: 600;
	text-transform: uppercase;
	letter-spacing: 1px
}

/* grid styling */

.grid {
	display: grid;
	grid-template-columns: repeat(12, 1fr);
}

.grid--gap10 {
	grid-gap: 10px;
}

.grid__col1 {
	grid-column: span 1;
}
.grid__col2 {
	grid-column: span 2;
}
.grid__col3 {
	grid-column: span 3;
}
.grid__col4 {
	grid-column: span 4;
}
.grid__col5 {
	grid-column: span 5;
}
.grid__col6 {
	grid-column: span 6;
}
.grid__col7 {
	grid-column: span 7;
}
.grid__col8 {
	grid-column: span 8;
}
.grid__col9 {
	grid-column: span 9;
}
.grid__col10 {
	grid-column: span 10;
}
.grid__col11 {
	grid-column: span 11;
}
.grid__col12 {
	grid-column: span 12;
}

@media (min-width: 768px) {
	.grid__colsm1 {
		grid-column: span 1;
	}
	.grid__colsm2 {
		grid-column: span 2;
	}
	.grid__colsm3 {
		grid-column: span 3;
	}
	.grid__colsm4 {
		grid-column: span 4;
	}
	.grid__colsm5 {
		grid-column: span 5;
	}
	.grid__colsm6 {
		grid-column: span 6;
	}
	.grid__colsm7 {
		grid-column: span 7;
	}
	.grid__colsm8 {
		grid-column: span 8;
	}
	.grid__colsm9 {
		grid-column: span 9;
	}
	.grid__colsm10 {
		grid-column: span 10;
	}
	.grid__colsm11 {
		grid-column: span 11;
	}
	.grid__colsm12 {
		grid-column: span 12;
	}
}
    </style>
    <div class="boxContent">
        <asp:SqlDataSource ID="SqlVisite" runat="server" ConnectionString="<%$ ConnectionStrings:SDB %>" 
            SelectCommand="SELECT * FROM [vw_VisiteCliente] ORDER BY [Data_Visita] DESC" DeleteCommand="DELETE FROM VisiteCliente">
        </asp:SqlDataSource>
    </div>
    <div class="boxContent">
        <section class="grid grid--gap10">
	        <div class="cols grid__col4">Column 4</div>
	        <div class="cols grid__col5">Column 5</div>
	        <div class="cols grid__col3">Column 3</div>
	
	        <div class="cols grid__col6">Column 6</div>
	        <div class="cols grid__col2">Column 2</div>
	        <div class="cols grid__col4">Column 4</div>
	
	        <div class="cols grid__col12 grid__colsm6">Col 12 | ColSm 6</div>
	        <div class="cols grid__col12 grid__colsm3">Col 12 | ColSm 3</div>
	        <div class="cols grid__col12 grid__colsm3">Col 12 | ColSm 3</div>
        </section>
        <br><br><br>

        <section class="grid grid--gap10">
	        <div class="cols grid__col3">Column 3</div>
	        <div class="cols grid__col6">Column 6</div>
	        <div class="cols grid__col3">Column 3</div>
	        <div class="cols grid__col12 grid__colsm8">Col 12 | ColSm 8</div>
	        <div class="cols grid__col12 grid__colsm4">Col 12 | ColSm 4</div>
        </section>
    </div>

    <div class="boxContent">
        <div class="dropdown">
            <div id="myDropdown" class="dropdown-content show">
                <input type="text" placeholder="Search.." id="myInput" onkeyup="filterFunction()">
                <a href="#about">About</a>
                <a href="#base">Base</a>
                <a href="#blog">Blog</a>
                <a href="#contact">Contact</a>
                <a href="#custom">Custom</a>
                <a href="#support">Support</a>
                <a href="#tools">Tools</a>
            </div>
        </div>
    </div> 
<style>
.dropbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #3e8e41;
}

#myInput {
  box-sizing: border-box;
  background-image: url('searchicon.png');
  background-position: 14px 12px;
  background-repeat: no-repeat;
  font-size: 16px;
  padding: 14px 20px 12px 45px;
  border: none;
  border-bottom: 1px solid #ddd;
}

#myInput:focus {outline: 3px solid #ddd;}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f6f6f6;
  min-width: 230px;
  overflow: auto;
  border: 1px solid #ddd;
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
</style>
        <script>
            function filterFunction() {
                var input, filter, ul, li, a, i;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                div = document.getElementById("myDropdown");
                a = div.getElementsByTagName("a");
                for (i = 0; i < a.length; i++) {
                    txtValue = a[i].textContent || a[i].innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        a[i].style.display = "";
                    } else {
                        a[i].style.display = "none";
                    }
                }
            }
        </script>

    <div class="boxContent">
        <div style="height:300px; width:800px; border:1px solid white">
            <img height="100" width="250" src="../Styles/Images/logo.svg" class="ml-3" alt="" style="border:1px dashed white; display:flex; justify-content:center;" />

        </div> 
    </div>

    <div class="modal fade overflow-hidden" id="AddVisit" tabindex="0" role="dialog">
        <div class="modal-dialog modal-dialog-scrollable modal-xl modal-dialog-centered" role="document">
            <div class="boxContent modal-content">
                <button type="button" class="close p-0" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <div class="modal-header"><h5 class="modal-title" id="exampleModalLongTitle">VISIT DETAILS</h5></div>
                    <div class="modal-body pb-0">
                    <div class="boxContent table-responsive">
                    <table class="table col-12">
                        <tr>
                            <td class="col-6">Date</td>
                            <td class="col-6">
                                <telerik:RadDatePicker ID="DataVisita" runat="server" Width="100%" Skin="Black"></telerik:RadDatePicker>
                                <asp:Label runat="server" ID="IdVisita" Visible="false"></asp:Label>
                            </td>
                        </tr>
                        <tr><td>Customer Id.</td><td><asp:TextBox runat="server" ID="ClientID" CssClass="w-100 tbox" Enabled="false"></asp:TextBox></td></tr>
                        <tr>
                            <td>Customer</td>
                            <td>
                                <telerik:RadSearchBox Width="90%" ID="Cliente" runat="server" Culture="it-IT" DataSourceID="SqlClienti" DataTextField="ragSoc" DataValueField="ID" HighlightFirstMatch="True" Skin="Black"></telerik:RadSearchBox>
                                <a data-toggle="modal" data-target="#AddCustomer" id="InviaCliente">
                                    <input type="button" class="btn btn-dark btn-circle btn-sm clickable" value="+" /></a>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <div id="AddCustomer" class="collapse">
                                    <div class="boxContent table-responsive">
                                        <table class="table col-12">
                                            <tr>
                                                <td class="col-6">COD.</td>
                                                <td class="col-6"><asp:TextBox runat="server" ID="IdClient" CssClass="w-100 tbox"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>COMPANY NAME</td>
                                                <td><asp:TextBox ID="RagSoc" runat="server" CssClass="w-100 tbox"></asp:TextBox>
                                                    <asp:SqlDataSource ID="SqlClienti" runat="server" ConnectionString="<%$ ConnectionStrings:SDB %>" SelectCommand="SELECT Id,[RagSoc] FROM [OFF_ClientiSDB]"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>ADDRESS</td>
                                                <td><asp:TextBox runat="server" ID="Indirizzo" CssClass="w-100 tbox"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>CITY,STATE</td>
                                                <td class="w-100">
                                                    <asp:TextBox runat="server" ID="Citta" CssClass="w-70 tbox"></asp:TextBox>
                                                    &emsp;ZIP&emsp;
                                                    <asp:TextBox runat="server" ID="Cap" CssClass="w-30 tbox"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>COUNTRY</td>
                                                <td><telerik:RadComboBox ID="Nazione" runat="server" CssClass="w-100" AppendDataBoundItems="True" Culture="it-IT" DataSourceID="SqlNazioni" DataTextField="Nazione" DataValueField="CodNazione" Skin="Black"><Items><telerik:RadComboBoxItem Text="----" Value="" /></Items></telerik:RadComboBox><asp:SqlDataSource ID="SqlNazioni" runat="server" ConnectionString="<%$ ConnectionStrings:SDB %>" SelectCommand="SELECT Cod as CodNazione,NazioneEN as Nazione FROM [Nazioni] ORDER BY [Nazione]"></asp:SqlDataSource></td>
                                            </tr>
                                            <tr>
                                                <td>PHONE</td>
                                                <td><asp:TextBox runat="server" ID="Telefono" CssClass="w-100 tbox"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>WEBSITE</td>
                                                <td><asp:TextBox runat="server" ID="Website" CssClass="w-100 tbox"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>VAT CODE</td>
                                                <td><asp:TextBox runat="server" ID="PartitaIva" CssClass="w-100 tbox" AutoPostBack="true"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2"><button ID="SalvaCliente" runat="server" type="button" class="btn btn-dark w-100">Save</button></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr><td>City, State</td><td><asp:TextBox runat="server" ID="MyLoc" Visible="false" CssClass="w-100 tbox" Enabled="false"></asp:TextBox></td></tr>
                        <tr><td>Country</td><td><asp:TextBox runat="server" ID="MyNaz" Visible="false" CssClass="w-100 tbox" Enabled="false"></asp:TextBox></td></tr>
                        <tr>
                            <td>Type of customer</td>
                            <td>
                                <telerik:RadComboBox runat="server" ID="TipoCliente" CssClass="w-100" AppendDataBoundItems="true" Skin="Black">
                                <Items>
                                    <telerik:RadComboBoxItem Text="---" Value="" />
                                    <telerik:RadComboBoxItem Text="End User" Value="UTILIZ" />
                                    <telerik:RadComboBoxItem Text="Machine Manufacturer" Value="COSTRU" />
                                    <telerik:RadComboBoxItem Text="Others" Value="DISTSC" />
                                </Items>
                                </telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr><td>Meeting with Mr/Mrs</td><td><asp:TextBox runat="server" ID="ParlatoCon" CssClass="w-100 tbox"></asp:TextBox></td></tr>
                        <tr>
                            <td>
                                <telerik:RadGrid ID="GvAllegati" Visible="false" Width="800px" runat="server" AllowPaging="True" AllowSorting="True" Culture="it-IT" DataSourceID="SqlAllegati" AllowAutomaticDeletes="True" AllowAutomaticInserts="True">
                                    <GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
                                    <ExportSettings><Pdf PageWidth=""></Pdf></ExportSettings>
                                    <ClientSettings><Selecting AllowRowSelect="True" /></ClientSettings>
                                    <MasterTableView AutoGenerateColumns="False" CommandItemDisplay="Top" DataKeyNames="Id" DataSourceID="SqlAllegati">
                                        <Columns>
                                            <telerik:GridBoundColumn DataField="Id" DataType="System.Int32" FilterControlAltText="Filter Id column" HeaderText="Id" ReadOnly="True" SortExpression="Id" UniqueName="Id">
                                            </telerik:GridBoundColumn>
                                            <telerik:GridTemplateColumn DataField="Allegato" FilterControlAltText="Filter Allegato column" HeaderText="Attachment" SortExpression="Allegato" UniqueName="Allegato">
                                                <InsertItemTemplate>
                                                    <telerik:RadAsyncUpload ID="XlsxUploadIns" AllowedFileExtensions="pdf,tiff,jpg,jpeg,png,xls,xlsx,doc,docx" MaxFileInputsCount="1" TargetFolder="~/CRM/AllegatiVisite" runat="server"></telerik:RadAsyncUpload><asp:Label ID="msgSch" runat="server" Visible="false" Text=" *" ForeColor="red"></asp:Label>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <asp:HyperLink runat="server" NavigateUrl='<%# DataBinder.Eval(Container, "DataItem.Allegato", "~/CRM/AllegatiVisite/{0}") %>' Target="_blank" Text='<%# DataBinder.Eval(Container, "DataItem.Allegato") %>'></asp:HyperLink>
                                                </ItemTemplate>
                                            </telerik:GridTemplateColumn>
                                            <telerik:GridTemplateColumn UniqueName="EliminaDoc" AllowFiltering="false">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnkElimina" runat="server" CommandName="Delete" OnClientClick="return confirm('Delete the selected document')">
                                                        Delete
                                                    </asp:LinkButton>
                                                </ItemTemplate>
                                            </telerik:GridTemplateColumn>
                                        </Columns>
                                    </MasterTableView>
                                </telerik:RadGrid>
                                <asp:SqlDataSource ID="SqlAllegati" runat="server" ConnectionString="<%$ ConnectionStrings:SDB %>" 
                                    DeleteCommand="DELETE FROM [VisiteClienteAllegati] WHERE [Id] = @Id" 
                                    InsertCommand="INSERT INTO [VisiteClienteAllegati] (IdVisita,IDCliente,[Allegato]) VALUES (@IdVisita,@IDCliente,@Allegato)" 
                                    SelectCommand="SELECT [Id], [Allegato] FROM [VisiteClienteAllegati] WHERE ([IdVisita] = @IdVisita) ORDER BY [Allegato]" >
                                    <DeleteParameters>
                                        <asp:Parameter Name="Id" Type="Int32" />
                                    </DeleteParameters>
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="IdVisita" Name="IdVisita" PropertyName="Text" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr><td><asp:Label runat="server" ID="Label1" Visible="false"></asp:Label></td></tr>
                    </table>
                </div>
                    
                <div class="modal-subheader"><h5 class="modal-title">SCHEDULE</h5></div>
                <div class="boxContent table-responsive">
                    <table class="table col-12">
                        <tr>
                            <td class="col-6">Start Time</td><td><asp:TextBox runat="server" ID="OraInizio" CssClass="w-100 tbox"></asp:TextBox><br />
                            <asp:RegularExpressionValidator ID="rgfldvalidator" ControlToValidate="OraInizio" runat="server" ForeColor="Red" ErrorMessage="Please enter valid Time. Format: hh:mm" ValidationExpression="(^([0-9]|[0-1][0-9]|[2][0-3]):([0-5][0-9])$)"></asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td class="col-6">End Time</td><td><asp:TextBox runat="server" ID="OraFine" CssClass="w-100 tbox"></asp:TextBox><br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="OraFine" runat="server" ForeColor="Red" ErrorMessage="Please enter valid Time. Format: hh:mm" ValidationExpression="(^([0-9]|[0-1][0-9]|[2][0-3]):([0-5][0-9])$)"></asp:RegularExpressionValidator></td>
                        </tr>
                    </table>
                </div>
            
                <div class="modal-subheader"><h5 class="modal-title">AIM FOR VISIT AND SIMEC PARTECIPANTS</h5></div>
                <div class="boxContent table-responsive">
                    <table class="table col-12">
                        <tr>
                            <td class="col-6">Aim for visit</td>
                            <td class="col-6">
                                <telerik:RadComboBox runat="server" ID="MotivoVisita" AppendDataBoundItems="true" CssClass="w-100" Skin="Black">
                                    <Items>
                                        <telerik:RadComboBoxItem Text="---" Value="" />
                                        <telerik:RadComboBoxItem Text="Company Presentation" Value="Company Presentation" />
                                        <telerik:RadComboBoxItem Text="Order Completion" Value="Order Completion" />
                                        <telerik:RadComboBoxItem Text="Courtesy Visit" Value="Courtesy Visit" />
                                        <telerik:RadComboBoxItem Text="Tech Data / Sample Collection" Value="Tech Data / Sample Collection" />
                                        <telerik:RadComboBoxItem Text="Other" Value="Other" />
                                    </Items>
                                </telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Notes (max 100 characters)</td>
                            <td><asp:TextBox runat="server" ID="Altro" TextMode="multiline" Height="100px" CssClass="w-100 tbox multiline"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Simec Participants</td>
                            <td><asp:TextBox runat="server" ID="PartecipantiInterni" TextMode="MultiLine" Height="100px" CssClass="w-100 tbox multiline"></asp:TextBox></td>
                        </tr>
                    </table>
                </div>
                       
                <asp:Label runat="server" ID="Label3" Visible="false" Text=""></asp:Label>
                <div class="modal-footer"><button id="Button1" runat="server" type="button" class="btn btn-primary">Save</button></div>
                </div></div>

        </div>
    </div>

    <div class="modal fade" id="ExModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalScrollableTitle">Modal title</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          <div class="modal-body">...l <br />nostro <br />sito <br />usa <br />i <br />cookie <br />per <br />offrire <br />il <br />miglior <br />servizio <br />possibile <br />e <br />un<br />’esperienza di navigazione ottimale.<br />Cliccando sul <br />pulsante “Accetta <br />tutti”, l<br />’utente acconsente <br />all’utilizzo <br />dei cookies <br />da <br />noi <br />impiegati e <br />di tec<br />nologie similari (ad es. pixel).Oltre ai cook<br />ie <br />necessari per <br /><br />ragioni <br />tecniche, <br />vengono <br />utilizzati <br />anche <br />cookie <br />che<br />, tra l’altro, <br />migliorano <br />le prestazioni del sito e offrono contenuti personalizzati per l’utente. Premendo il pulsante “Impostazioni dei cookie” è possibile modificare e rifiutare in qualsiasi momento l’utilizzo dei cookie e usare il sito senza i cookie. L’apposito link è disponibile anche in fondo alla pagina del sito. Puoi trovare maggiori informazioni nella nostra politica sulla privacy.</div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
          </div>
        </div>
      </div>
    </div>

    <div class="boxContent">
        <div class="col-1 d-flex justify-content-center">
            <div class="nav nav-pills h-100" >
                <a class="nav-link active show h-50" style="border-top-left-radius:0px; border-top-right-radius:0px;" data-toggle="pill" href="#visiteSchedule-list" role="tab"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-card-list" viewBox="0 0 16 16"><path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/> <path d="M5 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 5 8zm0-2.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0 5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm-1-5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zM4 8a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zm0 2.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0z"/></svg></a>
            </div>
                <div class="nav nav-pills h-100" role="tablist" >
                
                <a class="nav-link h-50" data-toggle="pill" href="#visiteSchedule-calendar" role="tab"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-calendar-check" viewBox="0 0 16 16"><path d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/> <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/></svg></a>
            </div>
        </div>
    </div>

    <div class="boxContent">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ManageRow">Launch</button>
        <div class="modal fade" id="ManageRow" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered" role="document">
            <div class="boxContent modal-content">
                <div class="modal-body">
                    <button id="CloseRow" runat="server" type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <div class="modal-subheader"><h5 class="modal-title">COMPANIES</h5></div>
                    <div class="table-responsive">
                        <table class="table col-12">
                            <tr>
                                <td class="col-3">
                                </td>
                                <td class="col-3">
                                    <asp:Button ID="EstrazioneCompleta" runat="server" text="EXTRACT DATA" Visible="false"></asp:Button>
                                </td>
                                <td class="col-3"></td>
                                <td class="col-3">
                                    <asp:Panel runat="server" ID="PanelManager" Visible="true">
                                        <br />Manager:&nbsp;
                                        <telerik:radcombobox runat="server" ID="Manager" Skin="Black" AppendDataBoundItems="True" Culture="it-IT" DataSourceID="SqlManager" DataTextField="Manager" DataValueField="Manager">
                                            <Items>
                                                <telerik:RadComboBoxItem Text="---" value="" />
                                            </Items>
                                        </telerik:radcombobox>
                                        <asp:SqlDataSource ID="SqlManager" runat="server" ConnectionString="<%$ ConnectionStrings:SDB %>" SelectCommand="SELECT Manager FROM vw_Manager WHERE Azienda='SIMEC' ORDER BY Manager"></asp:SqlDataSource>
                                       &nbsp;<asp:Button runat="server" ID="ModManager" text="Mod. Manager" CssClass="btn btn-dark"/>
                                    </asp:Panel>
                                </td>
                            </tr>
                        </table>
                    </div>
                    
                   <div class="modal-subheader"><h5 class="modal-title">PERSONS</h5></div>
                    <div class="boxContent table-responsive">
                        <table class="table col-12">
                            <tr>
                                <td class="col-12" style="height:auto;">
                                </td>
                            </tr>
                        </table>
                    </div>          
                    <div class="modal-subheader"><h5 class="modal-title">TOOLS</h5></div>
                    <div class="boxContent table-responsive">
                        <table class="table col-12">
                            <tr>
                                <td class="col-12">
                                
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="modal-subheader"><h5 class="modal-title">DOCS SENT</h5></div>
                    <div class="boxContent table-responsive">
                        <table class="table col-12">
                            <tr>
                                <td class="col-12">
                                    <telerik:RadButton runat="server" ID="InviaDocumentazione" Text="Select Doc." Skin="Black"></telerik:RadButton>
                                    <asp:Panel runat="server" ID="PanelInvioDoc" Visible="false">
                                        <div style="float:left;">
                                            <asp:Label runat="server" ID="lblSelDoc" Text="Select only one row to send a document"></asp:Label>
                                            <telerik:RadGrid ID="GvInvioDoc" runat="server" AutoGenerateEditColumn="True" Culture="it-IT" DataSourceID="SqlinvioDoc" AllowMultiRowSelection="True" Skin="Black">
                                                <GroupingSettings CollapseAllTooltip="Collapse all groups" />
                                                <ExportSettings><Pdf PageWidth=""></Pdf></ExportSettings>
                                                <ClientSettings><Selecting AllowRowSelect="True" /><Scrolling AllowScroll="true" UseStaticHeaders="true" /></ClientSettings>
                                                <MasterTableView AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlinvioDoc">
                                                    <Columns>
                                                        <telerik:GridBoundColumn DataField="Id" DataType="System.Int32" FilterControlAltText="Filter Id column" HeaderText="Id" ReadOnly="True" SortExpression="Id" UniqueName="Id">
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Settore" FilterControlAltText="Filter Settore column" HeaderText="Plant" SortExpression="Settore" UniqueName="Settore">
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Descrizione" FilterControlAltText="Filter Descrizione column" HeaderText="Description" SortExpression="Descrizione" UniqueName="Descrizione">
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Documento" FilterControlAltText="Filter Documento column" HeaderText="Document" SortExpression="Documento" UniqueName="Documento">
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridCheckBoxColumn DataField="IT" DataType="System.Boolean" FilterControlAltText="Filter IT column" HeaderText="IT" SortExpression="IT" UniqueName="IT">
                                                        </telerik:GridCheckBoxColumn>
                                                        <telerik:GridCheckBoxColumn DataField="EN" DataType="System.Boolean" FilterControlAltText="Filter EN column" HeaderText="EN" SortExpression="EN" UniqueName="EN">
                                                        </telerik:GridCheckBoxColumn>
                                                        <telerik:GridCheckBoxColumn DataField="FR" DataType="System.Boolean" FilterControlAltText="Filter FR column" HeaderText="FR" SortExpression="FR" UniqueName="FR">
                                                        </telerik:GridCheckBoxColumn>
                                                        <telerik:GridCheckBoxColumn DataField="DE" DataType="System.Boolean" FilterControlAltText="Filter DE column" HeaderText="DE" SortExpression="DE" UniqueName="DE">
                                                        </telerik:GridCheckBoxColumn>
                                                        <telerik:GridCheckBoxColumn DataField="ES" DataType="System.Boolean" FilterControlAltText="Filter ES column" HeaderText="ES" SortExpression="ES" UniqueName="ES">
                                                        </telerik:GridCheckBoxColumn>
                                                        <telerik:GridTemplateColumn HeaderText="LINGUA INVIO DOC.">
                                                            <ItemTemplate>
                                                                <asp:DropDownList runat="server" ID="LinguaSel" AppendDataBoundItems="true">
                                                                    <asp:ListItem Text="---" Value=""></asp:ListItem>
                                                                    <asp:ListItem Text="IT" Value="IT"></asp:ListItem>
                                                                    <asp:ListItem Text="EN" Value="EN"></asp:ListItem>
                                                                    <asp:ListItem Text="FR" Value="FR"></asp:ListItem>
                                                                    <asp:ListItem Text="DE" Value="DE"></asp:ListItem>
                                                                    <asp:ListItem Text="ES" Value="ES"></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </ItemTemplate>
                                                        </telerik:GridTemplateColumn>
                                                    </Columns>
                                                </MasterTableView>
                                            </telerik:RadGrid>
                                            <asp:SqlDataSource ID="SqlinvioDoc" runat="server" ConnectionString="<%$ ConnectionStrings:SDB %>" 
                                                DeleteCommand="DELETE FROM [CRM_ListeDocumentazione] WHERE [Id] = @Id" 
                                                InsertCommand="INSERT INTO [CRM_ListeDocumentazione] ([Settore], [Descrizione], [Documento], [IT], [EN], [FR], [DE], [ES], [DataMod]) VALUES (@Settore, @Descrizione, @Documento, @IT, @EN, @FR, @DE, @ES, GetDate())" 
                                                SelectCommand="SELECT * FROM [CRM_ListeDocumentazione] ORDER BY [Settore]" 
                                                UpdateCommand="UPDATE [CRM_ListeDocumentazione] SET [Settore] = @Settore, [Descrizione] = @Descrizione, [Documento] = @Documento, [IT] = @IT, [EN] = @EN, [FR] = @FR, [DE] = @DE, [ES] = @ES, [DataMod] = GetDate() WHERE [Id] = @Id">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="Id" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="Settore" Type="String" />
                                                    <asp:Parameter Name="Descrizione" Type="String" />
                                                    <asp:Parameter Name="Documento" Type="String" />
                                                    <asp:Parameter Name="IT" Type="Boolean" />
                                                    <asp:Parameter Name="EN" Type="Boolean" />
                                                    <asp:Parameter Name="FR" Type="Boolean" />
                                                    <asp:Parameter Name="DE" Type="Boolean" />
                                                    <asp:Parameter Name="ES" Type="Boolean" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="Settore" Type="String" />
                                                    <asp:Parameter Name="Descrizione" Type="String" />
                                                    <asp:Parameter Name="Documento" Type="String" />
                                                    <asp:Parameter Name="IT" Type="Boolean" />
                                                    <asp:Parameter Name="EN" Type="Boolean" />
                                                    <asp:Parameter Name="FR" Type="Boolean" />
                                                    <asp:Parameter Name="DE" Type="Boolean" />
                                                    <asp:Parameter Name="ES" Type="Boolean" />
                                                    <asp:Parameter Name="Id" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </div>
                                        <div style="float:left;position:relative;padding-left:50px">
                                            <b>Seleziona Lingua Invio Email&nbsp;</b>
                                            <asp:DropDownList runat="server" ID="LinguaTestoEmail" AppendDataBoundItems="true" AutoPostBack="true">
                                                <asp:ListItem Text="---" Value=""></asp:ListItem>
                                                <asp:ListItem Text="IT" Value="IT"></asp:ListItem>
                                                <asp:ListItem Text="EN" Value="EN"></asp:ListItem>
                                                <asp:ListItem Text="FR" Value="FR"></asp:ListItem>
                                                <asp:ListItem Text="DE" Value="DE"></asp:ListItem>
                                                <asp:ListItem Text="ES" Value="ES"></asp:ListItem>
                                            </asp:DropDownList><br /><br />
                                            <b>Testo Email</b><b style="color:red;">&nbsp;P.S. Non inserire ne firma ne Logo</b><br /><br />
                                            <telerik:RadEditor ID="TestoMail" runat="server" Skin="Default"></telerik:RadEditor>
                                        </div>
                                        <div style="clear:both"></div>
                                        <br />
                                        <b>Person:</b>&nbsp;<asp:Label runat="server" ID="ContattoSel"></asp:Label>&nbsp;<b>Email:&nbsp;</b><asp:Label runat="server" ID="EmailSel"></asp:Label>
                                        <br /><br />
                                        <telerik:RadButton runat="server" ID="InviaDoc" Text="Send Confirm"></telerik:RadButton>
                                    </asp:Panel>

                                    <br /><br />
                                    <telerik:RadGrid ID="GvDocInviati" runat="server" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True" Culture="it-IT" DataSourceID="SqlDocInviati" PageSize="25" Skin="Black">
                                        <GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
                                        <ExportSettings><Pdf PageWidth=""></Pdf></ExportSettings>
                                        <ClientSettings><Selecting AllowRowSelect="True" /><Scrolling AllowScroll="true" UseStaticHeaders="true" /></ClientSettings>
                                        <MasterTableView AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDocInviati">
                                            <DetailTables>
                                                <telerik:GridTableView AutoGenerateColumns="false" runat="server" DataKeyNames="Id" DataSourceID="SqlDocInviatiDet">
                                                    <ParentTableRelation>
                                                        <telerik:GridRelationFields DetailKeyField="Id" MasterKeyField="Id" />
                                                        <telerik:GridRelationFields DetailKeyField="IdRagSoc" MasterKeyField="IdRagSoc" />
                                                    </ParentTableRelation>
                                                    <Columns>
                                                        <telerik:GridBoundColumn DataField="RagioneSociale" FilterControlAltText="Filter RagioneSociale column" HeaderText="Company" SortExpression="Company" UniqueName="RagioneSociale" HeaderStyle-Width="50px">
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Plant" FilterControlAltText="Filter Plant column" HeaderText="Plant" SortExpression="Plant" UniqueName="Plant" HeaderStyle-Width="50px">
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="Documento" FilterControlAltText="Filter Document column" HeaderText="Document" SortExpression="Document" UniqueName="Documento" HeaderStyle-Width="210px" FilterControlWidth="200px">
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="LinguaDoc" FilterControlAltText="Filter LinguaDoc column" HeaderText="Doc Language" SortExpression="Doc Language" UniqueName="LinguaDoc" HeaderStyle-Width="50px">
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="NomeContatto" FilterControlAltText="Filter NomeContatto column" HeaderText="Contact Name" SortExpression="Contact Name" UniqueName="NomeContatto" HeaderStyle-Width="50px">
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="EmailContatto" FilterControlAltText="Filter EmailContatto column" HeaderText="Email" SortExpression="Email" UniqueName="EmailContatto" HeaderStyle-Width="50px">
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="DataInvio" DataType="System.DateTime" FilterControlAltText="Filter DataInvio column" HeaderText="SentOn" SortExpression="SentOn" UniqueName="DataInvio" HeaderStyle-Width="50px">
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="DataMod" Visible="false" DataType="System.DateTime" FilterControlAltText="Filter DataMod column" HeaderText="DataMod" SortExpression="DataMod" UniqueName="DataMod" HeaderStyle-Width="50px">
                                                        </telerik:GridBoundColumn>
                                                        <telerik:GridBoundColumn DataField="UtMod" Visible="false" FilterControlAltText="Filter UtMod column" HeaderText="UtMod" SortExpression="UtMod" UniqueName="UtMod" HeaderStyle-Width="50px">
                                                        </telerik:GridBoundColumn>
                                                    </Columns>
                                                </telerik:GridTableView>
                                            </DetailTables>
                                            <Columns>
                                                <telerik:GridBoundColumn DataField="Id" AllowFiltering="false" DataType="System.Int64" FilterControlAltText="Filter Id column" HeaderText="Id" ReadOnly="True" SortExpression="Id" UniqueName="Id">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="IdRagSoc" Visible="false" DataType="System.Int32" FilterControlAltText="Filter IdRagSoc column" HeaderText="Id Rag Soc" SortExpression="IdRagSoc" UniqueName="IdRagSoc">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="RagioneSociale" FilterControlAltText="Filter RagioneSociale column" HeaderText="Company" SortExpression="Company" UniqueName="RagioneSociale">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Plant" FilterControlAltText="Filter Plant column" HeaderText="Plant" SortExpression="Plant" UniqueName="Plant">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Documento" FilterControlAltText="Filter Document column" HeaderText="Document" SortExpression="Document" UniqueName="Documento" FilterControlWidth="200px">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="LinguaDoc" FilterControlAltText="Filter LinguaDoc column" HeaderText="Doc Language" SortExpression="Doc Language" UniqueName="LinguaDoc">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="NomeContatto" FilterControlAltText="Filter NomeContatto column" HeaderText="Contact Name" SortExpression="Contact Name" UniqueName="NomeContatto">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="EmailContatto" FilterControlAltText="Filter EmailContatto column" HeaderText="Email" SortExpression="Email" UniqueName="EmailContatto">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="DataInvio" DataType="System.DateTime" FilterControlAltText="Filter DataInvio column" HeaderText="SentOn" SortExpression="SentOn" UniqueName="DataInvio">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="DataMod" Visible="false" DataType="System.DateTime" FilterControlAltText="Filter DataMod column" HeaderText="DataMod" SortExpression="DataMod" UniqueName="DataMod">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="UtMod" Visible="false" FilterControlAltText="Filter UtMod column" HeaderText="UtMod" SortExpression="UtMod" UniqueName="UtMod">
                                                </telerik:GridBoundColumn>
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                    <asp:SqlDataSource ID="SqlDocInviati" runat="server" ConnectionString="<%$ ConnectionStrings:SDB %>" 
                                        DeleteCommand="DELETE FROM [CRM_ListeDocInviati] WHERE [Id] = @Id" 
                                        SelectCommand="SELECT * FROM [vw_CRM_ListeDocInviati] ORDER BY [DataInvio] DESC">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Id" Type="Int64" />
                                        </DeleteParameters>
                                              
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDocInviatiDet" runat="server" ConnectionString="<%$ ConnectionStrings:SDB %>" 
                                        SelectCommand="SELECT * FROM [vw_CRM_ListeDocInviati] where Id=@Id ORDER BY [DataInvio] DESC">
                                        <Selectparameters>
                                            <asp:Parameter Name="Id" Type="Int64" />
                                        </Selectparameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </div>                
                    <div class="modal-subheader"><h5 class="modal-title">ACTIONS</h5></div>
                    <div class="boxContent table-responsive">
                        <table class="table col-12">
                            <tr>
                                <td class="col-12">
                                    <a data-toggle="modal" data-target="#NewAction" id="NewOperazione">
                                        <input id="NuovaOp" runat="server" type="button" class="btn btn-dark btn-circle btn-sm clickable" value="New" />
                                    </a>
                                    <%--<telerik:RadButton runat="server" ID="" OnClick="NuovaOperazione_Click" Text="New" Skin="Black"></telerik:RadButton><br /><br />--%>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <div id="NewAction" runat="server" class="collapse">
                                        <div class="boxContent table-responsive">
                                            <table class="table col-12">
                                                <tr>
                                                    <td class="col-3">Person</td>
                                                    <td class="col-3"><asp:Label runat="server" ID="ContattoSel1"></asp:Label></td>
                                                    <td class="col-3">Tel.</td>
                                                    <td class="col-3"><asp:Label runat="server" ID="TelSel"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="col-2">Type of Contact</td>
                                                    <td class="col-2">
                                                        <telerik:RadComboBox runat="server" ID="Tipo" AppendDataBoundItems="true">
                                                            <Items>
                                                                <telerik:RadComboBoxItem Text="Chiamata" Value="Chiamata" Selected="true"/>                                    
                                                                <telerik:RadComboBoxItem Text="Email" Value="Email"/>
                                                            </Items>
                                                        </telerik:RadComboBox>
                                                    </td>
                                                    <td class="col-2">Outcome</td>
                                                    <td class="col-2">
                                                        <telerik:RadComboBox runat="server" ID="EsitoTel" AppendDataBoundItems="true">
                                                            <Items>
                                                                <telerik:RadComboBoxItem Text="----" Value="" />
                                                                <telerik:RadComboBoxItem Text="Non Risponde" Value="Non Risponde" />
                                                                <telerik:RadComboBoxItem Text="Persona Sbagliata" Value="Persona Sbagliata" />
                                                                <telerik:RadComboBoxItem Text="Non esite" Value="Non esite" />
                                                                <telerik:RadComboBoxItem Text="Richiamare" Value="Richiamare" />
                                                                <telerik:RadComboBoxItem Text="Risposto" Value="Risposto" />
                                                            </Items>
                                                        </telerik:RadComboBox>
                                                    </td>
                                                    <td class="col-2">Next Contact Date</td>
                                                    <td class="col-2"><telerik:RadDatePicker runat="server" ID="DataNextContatto"></telerik:RadDatePicker></td>
                                                </tr>
                                                <tr>
                                                    <td class="col-2">Subject</td>
                                                    <td class="col-4"><asp:TextBox runat="server" ID="Argomento" TextMode="MultiLine" MaxLength="2000" Width="400px" Height="100px"></asp:TextBox></td>
                                                    <td class="col-2">Notes</td>
                                                    <td class="col-4"><asp:TextBox runat="server" ID="Note" TextMode="MultiLine" MaxLength="2000" Width="400px" Height="100px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="col-2"></td>
                                                    <td class="col-2">Reaction</td>
                                                    <td class="col-4">
                                                        <telerik:RadComboBox runat="server" ID="Reazione" AppendDataBoundItems="true" Width="400px">
                                                            <Items>
                                                                <telerik:RadComboBoxItem Text="----" Value="" />
                                                                <telerik:RadComboBoxItem Text="Interessato ma non necessita a breve" Value="Interessato ma non necessita a breve" />
                                                                    <telerik:RadComboBoxItem Text="Interessato, aspetto mail di risposta" Value="Interessato, aspetto mail di risposta" />
                                                                <telerik:RadComboBoxItem Text="Richieste tecniche prodotti" Value="Richieste tecniche prodotti" />
                                                                <telerik:RadComboBoxItem Text="Richieste specifiche fuori cataloghi" Value="Richieste specifiche fuori cataloghi" />
                                                                <telerik:RadComboBoxItem Text="Richieste referenze all'interno del gruppo" Value="Richieste referenze all'interno del gruppo" />
                                                                <telerik:RadComboBoxItem Text="Richiesta quotazione buggettaria" Value="Richiesta quotazione buggettaria" />
                                                                <telerik:RadComboBoxItem Text="Richiesta quotazione concreta" Value="Richiesta quotazione concreta" />
                                                                <telerik:RadComboBoxItem Text="Non interessato al momento altro fornitore" Value="Non interessato al momento altro fornitore" />
                                                                <telerik:RadComboBoxItem Text="Non interessato non richiamare" Value="Non interessato non richiamare" />
                                            
                                                            </Items>
                                                        </telerik:RadComboBox>
                                                    </td>
                                                    <td class="col-2"></td>
                                                    <td class="col-2"><telerik:radbutton runat="server" ID="SalvaOp" Text="SAVE"></telerik:radbutton></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <br />
                
                                    <telerik:RadGrid ID="GvOperazioni" runat="server" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True" Culture="it-IT" DataSourceID="SqlOperazioni" Skin="Black">
                                        <GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
                                        <ClientSettings><Selecting AllowRowSelect="True" /><Scrolling AllowScroll="true" UseStaticHeaders="true" /></ClientSettings>
                                        <MasterTableView AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlOperazioni">
                                            <Columns>
                                                <telerik:GridBoundColumn DataField="Id" AllowFiltering="false" DataType="System.Int64" FilterControlAltText="Filter Id column" HeaderText="Id" ReadOnly="True" SortExpression="Id" UniqueName="Id">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="RagioneSociale" FilterControlAltText="Filter RagioneSociale column" HeaderText="Company" SortExpression="RagioneSociale" UniqueName="RagioneSociale">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Contatto" FilterControlAltText="Filter Contatto column" HeaderText="Person" SortExpression="Contatto" UniqueName="Contatto">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Tipo" FilterControlAltText="Filter Tipo column" HeaderText="Type of Contact" SortExpression="Tipo" UniqueName="Tipo">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Argomento" FilterControlAltText="Filter Argomento column" HeaderText="Subject" SortExpression="Argomento" UniqueName="Argomento">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Esito" FilterControlAltText="Filter Esito column" HeaderText="Outcome" SortExpression="Esito" UniqueName="Esito">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Reazione" FilterControlAltText="Filter Reazione column" HeaderText="Reaction" SortExpression="Reazione" UniqueName="Reazione">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Note" FilterControlAltText="Filter Note column" HeaderText="Notes" SortExpression="Note" UniqueName="Note">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="DataNextContatto" DataFormatString="{0:dd/MM/yyyy}" DataType="System.DateTime" FilterControlAltText="Filter DataNextContatto column" HeaderText="Next Contact Date" SortExpression="DataNextContatto" UniqueName="DataNextContatto">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="DataMod" DataType="System.DateTime" FilterControlAltText="Filter DataMod column" HeaderText="Date" SortExpression="DataMod" UniqueName="DataMod">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="UtMod" Visible="false" FilterControlAltText="Filter UtMod column" HeaderText="UtMod" SortExpression="UtMod" UniqueName="UtMod">
                                                </telerik:GridBoundColumn>
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                    <asp:SqlDataSource ID="SqlOperazioni" runat="server" ConnectionString="<%$ ConnectionStrings:SDB %>" 
                                        DeleteCommand="DELETE FROM [CRM_ListeOperazioni] WHERE [Id] = @Id" 
                                        SelectCommand="SELECT * FROM vw_CRM_ListeOperazioni ORDER BY [DataMod] DESC" >
                                        <DeleteParameters>
                                            <asp:Parameter Name="Id" Type="Int64" />
                                        </DeleteParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </div>             
                    <div class="modal-subheader"><h5 class="modal-title">TO DO</h5></div>
                    <div class="boxContent table-responsive">
                        <table class="table col-12">
                            <tr>
                                <td class="col-12">
                                    <telerik:RadGrid ID="GvToDo" runat="server" AllowFilteringByColumn="True" AllowPaging="True" AllowSorting="True" Culture="it-IT" DataSourceID="SqlTodo" Skin="Black">
                                        <GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
                                        <ClientSettings><Selecting AllowRowSelect="True" /><Scrolling AllowScroll="true" UseStaticHeaders="true" /></ClientSettings>
                                        <MasterTableView DataSourceID="SqlTodo" AutoGenerateColumns="False" DataKeyNames="Id">
                                            <Columns>
                                                <telerik:GridBoundColumn DataField="Id" AllowFiltering="false" DataType="System.Int32" FilterControlAltText="Filter Id column" HeaderText="Id" ReadOnly="True" SortExpression="Id" UniqueName="Id">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="RagioneSociale" FilterControlAltText="Filter RagioneSociale column" HeaderText="Company" SortExpression="RagioneSociale" UniqueName="RagioneSociale">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Plant" FilterControlAltText="Filter Plant column" HeaderText="Plant" SortExpression="Plant" UniqueName="Plant">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Nazione" FilterControlAltText="Filter Nazione column" HeaderText="Country" SortExpression="Nazione" UniqueName="Nazione">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Contatto" FilterControlAltText="Filter Contatto column" HeaderText="Person" SortExpression="Contatto" UniqueName="Contatto">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="DataUltimoContatto" DataFormatString="{0:dd/MM/yyyy}" DataType="System.DateTime" FilterControlAltText="Filter DataUltimoContatto column" HeaderText="Last Contact" SortExpression="DataUltimoContatto" UniqueName="DataUltimoContatto">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Motivo" FilterControlAltText="Filter Motivo column" HeaderText="Reason" SortExpression="Motivo" UniqueName="Motivo">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="DataNextContatto" DataFormatString="{0:dd/MM/yyyy}" DataType="System.DateTime" FilterControlAltText="Filter DataNextContatto column" HeaderText="Next Contact Date" SortExpression="DataNextContatto" UniqueName="DataNextContatto">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Azione" FilterControlAltText="Filter Azione column" HeaderText="Action" SortExpression="Azione" UniqueName="Azione">
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="RifOperazione" FilterControlAltText="Filter RifOperazione column" HeaderText="Operation ID" SortExpression="RifOperazione" UniqueName="RifOperazione">
                                                </telerik:GridBoundColumn>
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                    <asp:SqlDataSource ID="SqlTodo" runat="server" ConnectionString="<%$ ConnectionStrings:SDB %>" 
                                        SelectCommand="SELECT * FROM [vw_CRM_listeToDo] WHERE (([Chiuso] = 0) ) AND DataNextContatto>=GetDate() ORDER BY [DataNextContatto] DESC">
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <asp:Label runat="server" ID="Label2" Visible="false" Text=""></asp:Label>
                    <div class="modal-footer"><button id="CmSalva" runat="server" type="button" class="btn btn-primary">Save</button></div>
                    </div>  
                </div>
            </div>
        </div>
    </div>
</asp:Content>