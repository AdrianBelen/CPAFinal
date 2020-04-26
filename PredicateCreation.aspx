<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PredicateCreation.aspx.cs" Inherits="Corporate_Performance_Analyzer.PredicateCreation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<!--This page allows users to form a predicate relationship between two knowledge objects in the "KnowledgeObject" table-->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content contact">
		<article class="main">
			<!--Page Header-->
			<h1>Predicate Creation</h1>
			<!--End of Page Header-->

			<!--Start of form-->
			<form id="form1" runat="server">
				<!--User will select an object from the dropdown of objects from the "KnowledgeObject" table-->
				<div>
					<h3>Object A</h3>
					<p>
						<asp:DropDownList ID="ObjADropDown" runat="server" DataSourceID="ObjADataSource" DataTextField="KnowledgeObject1" DataValueField="KnowledgeObject1"></asp:DropDownList>
						<asp:SqlDataSource ID="ObjADataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CPADataConnectionString %>" ProviderName="<%$ ConnectionStrings:CPADataConnectionString.ProviderName %>" SelectCommand="SELECT [KnowledgeObject1] FROM [KnowledgeObject]"></asp:SqlDataSource>
					</p>
				</div>

				<!--User will can select an object from the dropdown of objects from the "KnowledgeObject" table-->
				<div>
					<h3>Object B</h3>
					<p>
						<asp:DropDownList ID="ObjBDropDown" runat="server" DataSourceID="ObjADataSource" DataTextField="KnowledgeObject1" DataValueField="KnowledgeObject1"></asp:DropDownList>
					</p>
				</div>

				<!--User will select the predicate type from the dropdown list-->
				<div>
					<h3>Predicate Type</h3>
					<p>
						<asp:DropDownList ID="PredicateDropDown" runat="server">
							<asp:ListItem Value="Attribute">Attribute ("Object A" Is A "Object B")</asp:ListItem>
							<asp:ListItem Value="Association">Association ("Object A" Is A Part Of "Object B")</asp:ListItem>
							<asp:ListItem Value="Causality">Causality ("Object A" Is Caused By "Object B")</asp:ListItem>
						</asp:DropDownList>
					</p>
				</div>

				<!--Object A is submitted to "KnowledgeObjectA" and Object B is submitted to "KnowledgeObjectB" in the table that corresponds the Predicate Type (ISA,ISP,ISC)-->
				<div>
					<p>
						<asp:Button ID="createPredicate" runat="server" Text="Save Predicate" OnClick="createPredicate_Click" class="btn-n" width="150px"/>
					</p>
				</div>
			</form>
			<!--End of form-->
		</article>
	</section>
</asp:Content>
