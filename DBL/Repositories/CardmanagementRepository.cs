﻿using Dapper;
using DBL.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DBL.Entities;

namespace DBL.Repositories
{
    public class CardmanagementRepository : BaseRepository, ICardmanagementRepository
    {
        public CardmanagementRepository(string connectionString) : base(connectionString)
        {
        }

        public IEnumerable<Systemcarddatamodel> Getallsystemcard(int Offset, int Count, string? Search)
        {
            using (var connection = new SqlConnection(_connString))
            {
                connection.Open();
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@Offset", Offset);
                parameters.Add("@Count", Count);
                parameters.Add("@Search", Search);
                return connection.Query<Systemcarddatamodel>("Usp_Getallsystemcarddata", parameters, commandType: CommandType.StoredProcedure).ToList();
            }
        }
        public IEnumerable<Systemcarddatamodel> Getusersystemcard(long Userid, int Offset, int Count, string? Search)
        {
            using (var connection = new SqlConnection(_connString))
            {
                connection.Open();
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@Userid", Userid);
                parameters.Add("@Offset", Offset);
                parameters.Add("@Count", Count);
                parameters.Add("@Search", Search);
                return connection.Query<Systemcarddatamodel>("Usp_Getusersystemcarddata", parameters, commandType: CommandType.StoredProcedure).ToList();
            }
        }

        public Genericmodel Createsystemcard(string jsonObjectdata)
        {
            using (var connection = new SqlConnection(_connString))
            {
                connection.Open();
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@JsonObjectdata", jsonObjectdata);
                return connection.Query<Genericmodel>("Usp_Createsystemcarddata", parameters, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
        }
        public Systemcards Getsystemcardbycardid(long Userid, long Cardid)
        {
            using (var connection = new SqlConnection(_connString))
            {
                connection.Open();
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@Userid", Userid);
                parameters.Add("@Cardid", Cardid);
                return connection.Query<Systemcards>("Usp_Getsystemcardbycardid", parameters, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
        }
        public Genericmodel Updatesystemcard(string jsonObjectdata)
        {
            using (var connection = new SqlConnection(_connString))
            {
                connection.Open();
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@JsonObjectdata", jsonObjectdata);
                return connection.Query<Genericmodel>("Usp_Updatesystemcarddata", parameters, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
        }
        public Genericmodel Deletesystemcardbycardid(long Userid, long Cardid)
        {
            using (var connection = new SqlConnection(_connString))
            {
                connection.Open();
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@Userid", Userid);
                parameters.Add("@Cardid", Cardid);
                return connection.Query<Genericmodel>("Usp_Deletesystemcardbycardid", parameters, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
        }
    }
}
