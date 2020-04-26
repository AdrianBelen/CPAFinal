<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddArticle.aspx.cs" Inherits="Corporate_Performance_Analyzer.AddArticle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section class="content">
    <section class="columns">
		<div class="col2">
			<h1>Text Sourcing</h1>
			<p> Add information about a company to be searched through semantically. </p>
			<form action="#" method="post" class="form2">
				<p>
					<label for="selectCompany">Company</label>
					<select name="select" id="selectCompany">
						<option>Some option</option>
						<option>Some other option</option>
						<option>Yet another one</option>
					</select>
				</p>
				<p>
					<label for="textSource">Text Source</label>
					<input name="textSource" id="textSource">
				</p>
				<p>
					<label for="articleURL">Article URL</label>
					<input name="articleURL" id="articleURL"></p>
				<p>
					<label for="articleTitle">Article Title</label>
					<input name="articleTitle" id="articleTitle">
				</p>
				<p>
					<label for="fileUpload">Upload text file</label>
					<input type="file" name="fileUpload" id="fileUpload">
				</p>
				<p><label for="article">Article Text </label>
					<textarea name="article" id="article" rows="5" cols="20"></textarea>
				</p>
				<p class="submit">
					<button type="submit" name="submit" value="2">Submit</button>
					<button type="reset" name="reset" value="2">Reset</button>
				</p>
			</form>
		</div>
	</section>
</section>
</asp:Content>
