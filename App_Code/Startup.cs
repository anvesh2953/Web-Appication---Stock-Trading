using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(z1782619.Startup))]
namespace z1782619
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
