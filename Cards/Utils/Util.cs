namespace Cards
{
    public class Util
    {
        public static string ConnectionString(IConfiguration config)
        {
            return config["ConnectionStrings:DatabaseConnection"];
        }
    }
}
