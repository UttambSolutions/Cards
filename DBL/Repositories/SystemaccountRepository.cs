using Dapper;
using DBL.Models;
using System.Data;
using System.Data.SqlClient;

namespace DBL.Repositories
{
    public class SystemaccountRepository:BaseRepository, ISystemaccountRepository
    {
        public SystemaccountRepository(string connectionString) : base(connectionString)
        {
        }
        public Usermodelresponce VerifySystemStaff(string Username)
        {
            using (var connection = new SqlConnection(_connString))
            {
                connection.Open();
                Usermodelresponce resp = new Usermodelresponce();
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@Username", Username);
                return connection.Query<Usermodelresponce>("Usp_Uttambsolutionverifysystemcustomer", parameters, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
        }
    }
}
