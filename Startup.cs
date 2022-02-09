using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SDB_2021.Startup))]
namespace SDB_2021
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
