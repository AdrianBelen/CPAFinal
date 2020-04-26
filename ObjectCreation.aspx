<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ObjectCreation.aspx.cs" Inherits="Corporate_Performance_Analyzer.ObjectCreation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<!--This page allows users to create knowledge objects and select the type of object that it is. The object added to the "knowledgeobject" table-->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content">
		<section>
			<form id="form1" runat="server">
				<!--Object Creation Section-->
				<article>
					<!--Page Header-->
					<h1>Object Creation</h1>
					<!--Page Header-->

					<!--User will enter the object name in the textbox-->
					<div>
						<h3>Object Name</h3>
						<p>
							<asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
						</p>
					</div>
				
					<!--User will select the object type from the radiobutton list-->
					<div>
						<h3>Object Type</h3>
						<p>
							<asp:RadioButtonList ID="objType" CssClass="radioButtonList" runat="server" RepeatDirection="Vertical" Width="300px">
								<asp:ListItem Selected="true" Value="Resource" Text="&nbsp;Resource"></asp:ListItem>
								<asp:ListItem Value="Event" Text="&nbsp;Event"></asp:ListItem>
								<asp:ListItem Value="Agent" Text="&nbsp;Agent"></asp:ListItem>
							</asp:RadioButtonList>
						</p>
					</div>

					<!--Object Name is submitted to "KnowledgeObject1" and Object Type is submitted to "ObjectType"-->
					<div>
						<p>
							<asp:Button name="send" ID="createObject" value="1" type="submit" runat="server" OnClick="createObject_Click" Text="Save Object" class="btn-n" width="150px"/>
						</p>
					</div>
				</article>
				<!--End of Object Creation Section-->
				<section class="columns">
					<article class="col3">
						<h1>
							<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CPADataConnectionString %>" SelectCommand="SELECT KnowledgeObject1, ObjectType FROM cpadata.knowledgeobject"> </asp:SqlDataSource>
							Current Objects
						</h1>
				
							<div>
								<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
									<Columns>
										<asp:BoundField DataField="KnowledgeObject1" SortExpression="KnowledgeObject1" />
										<asp:BoundField DataField="ObjectType" SortExpression="ObjectType" />
									</Columns>
								</asp:GridView>
								<!--End of Connection to data source-->
							</div>
					</article>
					<article class="col3">
						<h1>
							<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CPADataConnectionString %>" SelectCommand="SELECT KnowledgeObject1, ObjectType FROM cpadata.knowledgeobject"> </asp:SqlDataSource>
							Current Objects
						</h1>
				
							<div>
								<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
									<Columns>
										<asp:BoundField DataField="KnowledgeObject1" SortExpression="KnowledgeObject1" />
										<asp:BoundField DataField="ObjectType" SortExpression="ObjectType" />
									</Columns>
								</asp:GridView>
								<!--End of Connection to data source-->
							</div>
					</article>
					<article class="col3">
						<h1>
							<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CPADataConnectionString %>" SelectCommand="SELECT KnowledgeObject1, ObjectType FROM cpadata.knowledgeobject"> </asp:SqlDataSource>
							Current Objects
						</h1>
				
							<div>
								<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
									<Columns>
										<asp:BoundField DataField="KnowledgeObject1" SortExpression="KnowledgeObject1" />
										<asp:BoundField DataField="ObjectType" SortExpression="ObjectType" />
									</Columns>
								</asp:GridView>
								<!--End of Connection to data source-->
							</div>
					</article>
				</section>
			</form>
		</section>
	</section>
</asp:Content>