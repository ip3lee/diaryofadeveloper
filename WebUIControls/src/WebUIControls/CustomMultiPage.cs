using Microsoft.Web.UI.WebControls;

namespace WebUIControls
{
    public class CustomMultiPage : MultiPage
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
