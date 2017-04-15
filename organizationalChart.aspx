<%@ Page Title="نمودار سازمانی" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="organizationalChart.aspx.cs" Inherits="organizationalChart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link href="Content/generalStyle.css" rel="stylesheet" />
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script src="Scripts/jquery-3.1.1.slim.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {packages:["orgchart"]});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
          var data = new google.visualization.DataTable();
          var cssClassNames = {
              'president': 'presidentFontStyle imageStyle',
              'depManager': 'managerFontStyle imageStyle'
          };
          var options = {
              'allowHtml': true,
              'cssClassNames':cssClassNames
          }
        data.addColumn('string', 'Name');
        data.addColumn('string', 'Manager');
        data.addColumn('string', 'ToolTip');


        data.addRows([
            ['مدیریت', '', 'مدیر عامل'],
            ['معاونت تولید نرم افزار', 'مدیریت', 'تولید نرم افزار'],
            ['معاونت بازرگانی', 'مدیریت', 'بخش بازرگانی'],
            ['معاونت خدمات مشاوره و پشتیبانی', 'مدیریت', 'بخش مشاوره و پشتیبانی'],
            ['معاونت طرح و برنامه پروژه ها', 'مدیریت', 'طرح و برنامه'],
            ['معاونت مالی و امور اداری', 'مدیریت', 'امور اداری و مالی']
        ]);


        data.setRowProperty(0, 'style', 'width:25%;font-size:18px;');
        data.setRowProperty(1, 'style', 'width:20%;font-size:14px;');
        data.setRowProperty(2, 'style', 'width:20%;font-size:14px;');
        data.setRowProperty(3, 'style', 'width:10%;font-size:14px;');
        data.setRowProperty(4, 'style', 'width:20%;font-size:14px;');
        data.setRowProperty(5, 'style', 'width:30%;font-size:14px;');
        

        // Create the chart.
        var chart = new google.visualization.OrgChart(document.getElementById('chart_div'));
        // Draw the chart, setting the allowHtml option to true for the tooltips.
        chart.draw(data, { allowHtml: true });
      }
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <span class="spanSpace"></span>
    <div id="chart_div"></div>
  
    <span style="display:block;height:10em;"></span>
</asp:Content>

