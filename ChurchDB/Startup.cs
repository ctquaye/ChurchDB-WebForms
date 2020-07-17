using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ChurchDB.Startup))]
namespace ChurchDB
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
