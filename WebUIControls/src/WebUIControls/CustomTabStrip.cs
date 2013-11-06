using Microsoft.Web.UI.WebControls;

namespace WebUIControls
{
    public class CustomTabStrip : TabStrip
    {
        protected override RenderPathID RenderPath
        {
            get
            {
                if (this.IsDesignMode)
                {
                    return RenderPathID.DesignerPath;
                }

                return RenderPathID.DownLevelPath;
            }
        }
    }
}
