<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ViewObjects.aspx.cs" Inherits="Corporate_Performance_Analyzer.ViewObjects1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--This page allows users to select an object, then it displays the different predicate relationships related to the object in a table-->
    <!--This page is no longer being used because we are going to display this information on the creation pages-->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">  
        <section class="content">
		    <article class="main">
                <!--Page Header-->
			    <h1>View Objects</h1>
                <!--End of Page Header-->

                <!--Select the Knowledge Object(Data comes from "KnowledgeObject" table)-->
			    <p>
					Select An Object to View Details<br />
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="KnowledgeObject1" DataValueField="KnowledgeObject1" Width="400px"></asp:DropDownList>
                    <asp:Button ID="Button1" runat="server" Text="Show Results" OnClick="Button_Click" />&nbsp;
			    </p>
                <!--End of Knowledge Object selection-->

                <!--Table of predicate relationships related to the selected object(Data comes from tables "ISA", "ISC", and "ISP"-->
			    <p>Details
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CPADataConnectionString %>" ProviderName="<%$ ConnectionStrings:CPADataConnectionString.ProviderName %>" SelectCommand="SELECT [KnowledgeObject1] FROM [KnowledgeObject]"></asp:SqlDataSource>
			    </p>
                    <table class="table">
                        <tr>
                            <th scope="row">Name</th>
                            <td>
                                <p>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">Attribute (is a)</th><!--(Data comes from "ISA" table)-->
                            <td>
                                <p>
                                    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Vertical">
                                        <AlternatingItemStyle BackColor="#DCDCDC" />
                                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                                        <ItemTemplate>
                                            &nbsp;<asp:Label ID="KnowledgeObjectBLabel" runat="server" Text='<%# Eval("KnowledgeObjectB") %>' />
                                            <br />
                                            <br />
                                        </ItemTemplate>
                                        <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CPADataConnectionString %>" ProviderName="<%$ ConnectionStrings:CPADataConnectionString.ProviderName %>" SelectCommand="SELECT [KnowledgeObjectB] FROM [ISA] WHERE ([KnowledgeObjectA] = ?)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="KnowledgeObjectA" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">Association (is a part of)</th><!--(Data comes from "ISP" table)-->
                            <td>
                                <ul>
                                    <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource3" GridLines="Vertical">
                                        <AlternatingItemStyle BackColor="#DCDCDC" />
                                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                                        <ItemTemplate>
                                            &nbsp;<asp:Label ID="KnowledgeObjectBLabel" runat="server" Text='<%# Eval("KnowledgeObjectB") %>' />
                                            <br />
                                            <br />
                                        </ItemTemplate>
                                        <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CPADataConnectionString %>" ProviderName="<%$ ConnectionStrings:CPADataConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [KnowledgeObjectB] FROM [ISP] WHERE ([KnowledgeObjectA] = ?)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="KnowledgeObjectA" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">Causality (is caused by)</th><!--(Data comes from "ISC" table)-->
                            <td>
                                <ul>
                                    <asp:DataList ID="DataList3" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource4" GridLines="Vertical">
                                        <AlternatingItemStyle BackColor="#DCDCDC" />
                                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                                        <ItemTemplate>
                                            &nbsp;<asp:Label ID="KnowledgeObjectBLabel" runat="server" Text='<%# Eval("KnowledgeObjectB") %>' />
                                            <br />
                                            <br />
                                        </ItemTemplate>
                                        <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CPADataConnectionString %>" ProviderName="<%$ ConnectionStrings:CPADataConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [KnowledgeObjectB] FROM [ISC] WHERE ([KnowledgeObjectA] = ?)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="KnowledgeObjectA" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </ul>
                            </td>
                        </tr>
                    </table>
                    <!--End of table of predicate relationships-->
		    </article>
	    </section>
    </form>
</asp:Content>
