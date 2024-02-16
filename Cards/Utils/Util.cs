namespace Cards
{
    public class Util
    {
        public static string AuthorizationConnectionString(IConfiguration config)
        {
            return config["ConnectionStrings:AuthorizationDatabaseConnection"];
        }
    }
}
