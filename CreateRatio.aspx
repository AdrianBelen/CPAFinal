<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CreateRatio.aspx.cs" Inherits="Corporate_Performance_Analyzer.CreateRatio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<!--This page allows users to create ratios based on the constructs in the "ratioconstruct" table-->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server"> 
		<section class="content">
			<h1>Ratios</h1>
			<section class="columns">
				<!--Column 1-->
				<article class="col3">
					<div>
						<h3>Company Name and Year</h3>
						<p>
							<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CPADataConnectionString %>" ProviderName="<%$ ConnectionStrings:CPADataConnectionString.ProviderName %>" SelectCommand="SELECT Company FROM cpadata.company"></asp:SqlDataSource>
							<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Company"  DataValueField="Company" Width="200px"></asp:DropDownList>&nbsp;
							<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CPADataConnectionString %>" ProviderName="<%$ ConnectionStrings:CPADataConnectionString.ProviderName %>" SelectCommand="SELECT CompanyYear FROM cpadata.company"></asp:SqlDataSource>							<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CompanyYear" DataValueField="CompanyYear" Width="80px"></asp:DropDownList>
						</p>
					</div><br /><br />
					<div>
						<h3>Ratio Constructs</h3>
						<p>
							<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CPADataConnectionString %>" SelectCommand="SELECT Numbers FROM cpadata.incomestatement WHERE (Company = @Param1) AND (CompanyYear = @Param2)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropdownList1" Name="Param1" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="DropdownList2" Name="Param2" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
							<asp:DropDownList ID="FinancialConstructDropDown" runat="server" DataSourceID="SqlDataSource3" DataTextField="Numbers" DataValueField="Numbers"></asp:DropDownList>
						</p>
					</div>
				</article>

				<!--Column 2-->
				<article class="col3-n">
					<div style="padding-top:230px;text-align:center;">
						<p style="padding-bottom:230px;"><!--Action buttons-->
							<asp:Button ID="inNum" runat="server" Text=">>" OnClick="move_to_num" class="btn-n" width="50px"/><br />
							<asp:Button ID="out_num" runat="server" Text=">>" OnClick="delete_num" class="btn-n" width="50px"/><br />
							
						</p>
						<p style="padding-bottom:60px;">
							<button id="denominatorPlus" class="btn btn-block bt-dark text-light"><<</button><br />
							<button id="denominatorMinus" class="btn btn-block bt-dark text-light">>></button><br />
						</p>
						<p>
							<button style="width:150px;"id="remove" class="btn btn-block bt-dark text-light">Remove</button><br />
							<button style="width:150px;"id="removeAll" class="btn btn-block bt-dark text-light">Remove All</button><br />
						</p>
					</div>
				</article>

				<!--Column 3-->
				<article class="col3">
					<div>
						<h3>Ratio Name</h3>
						<p>
							<input name="ratioName" id="ratioName" style="width:265px;">
						</p>
					</div><br /><br />
					<div>
						<h3>Numerator</h3>
						<p style="text-align:center;padding-bottom:5px;">
							<button id="nPlus" class="btn btn-block bt-dark text-light">+</button>&nbsp;
							<button id="nMinus" class="btn btn-block bt-dark text-light">-</button>&nbsp;
							<button id="nMultiply" class="btn btn-block bt-dark text-light">*</button>&nbsp;
							<button id="nDivide" class="btn btn-block bt-dark text-light">/</button>&nbsp;
						</p>
						<p>
							<asp:textbox ID="numerator_textBox" runat="server"></asp:textbox>
						</p>
					</div><br /><br />
					<div>
						<h3>Denominator</h3>
						<p style="text-align:center;padding-bottom:5px;">
							<button id="dPlus" class="btn btn-block bt-dark text-light">+</button>&nbsp;
							<button id="dMinus" class="btn btn-block bt-dark text-light">-</button>&nbsp;
							<button id="dMultiply" class="btn btn-block bt-dark text-light">*</button>&nbsp;
							<button id="dDivide" class="btn btn-block bt-dark text-light">/</button>&nbsp;
						</p>
						<p>
							<textarea name="Denominator" id="TextAreaDenominator" TextMode="MultiLine" rows="5" cols="10" runat="server"></textarea>
						</p>
					</div>
				</article>
			</section>
		</section>
	</form>
</asp:Content>
