using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTabanliProgramlama
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebChartControl1.Series["Aylar"].Points.AddPoint("Nisan", 45);
            WebChartControl1.Series["Aylar"].Points.AddPoint("Mayıs", 51);
            WebChartControl1.Series["Aylar"].Points.AddPoint("Haziran", 60);
            WebChartControl1.Series["Aylar"].Points.AddPoint("Temmuz", 64);
            WebChartControl1.Series["Aylar"].Points.AddPoint("Ağustos", 78);
            WebChartControl1.Series["Aylar"].Points.AddPoint("Eylül", 55);
            WebChartControl1.Series["Aylar"].Points.AddPoint("Ekim", 42);

            WebChartControl2.Series["Semtler"].Points.AddPoint("Alemdar", 120);
            WebChartControl2.Series["Semtler"].Points.AddPoint("Bağlarbaşı", 75);
            WebChartControl2.Series["Semtler"].Points.AddPoint("Mudanya", 60);
            WebChartControl2.Series["Semtler"].Points.AddPoint("Dörtçelik", 800);
            WebChartControl2.Series["Semtler"].Points.AddPoint("Fethiye", 110);
            WebChartControl2.Series["Semtler"].Points.AddPoint("Korupark", 100);

            WebChartControl3.Series["Odalar"].Points.AddPoint("101", 86);
            WebChartControl3.Series["Odalar"].Points.AddPoint("102", 75);
            WebChartControl3.Series["Odalar"].Points.AddPoint("103", 106);
            WebChartControl3.Series["Odalar"].Points.AddPoint("104", 126);
            WebChartControl3.Series["Odalar"].Points.AddPoint("201", 66);
            WebChartControl3.Series["Odalar"].Points.AddPoint("202", 50);
            WebChartControl3.Series["Odalar"].Points.AddPoint("203", 45);
            WebChartControl3.Series["Odalar"].Points.AddPoint("204", 150);
            WebChartControl3.Series["Odalar"].Points.AddPoint("301", 72);
            WebChartControl3.Series["Odalar"].Points.AddPoint("302", 34);
            WebChartControl3.Series["Odalar"].Points.AddPoint("303", 60);
            WebChartControl3.Series["Odalar"].Points.AddPoint("304", 95);

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
    }
}