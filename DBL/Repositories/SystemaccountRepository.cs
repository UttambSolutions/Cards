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
        public Usermodeldataresponce VerifySystemStaff(string Username)
        {
            using (var connection = new SqlConnection(_connString))
            {
                connection.Open();
                Usermodeldataresponce resp = new Usermodeldataresponce();
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@Username", Username);
                return connection.Query<Usermodeldataresponce>("Usp_Verifysystemstaff", parameters, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
        }
    }
}
