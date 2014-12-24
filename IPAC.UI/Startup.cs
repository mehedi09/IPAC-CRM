using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(IPAC.UI.Startup))]
namespace IPAC.UI
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
