using Microsoft.Web.UI.WebControls;

namespace WebUIControls
{
    public class CustomPageView : PageView
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
