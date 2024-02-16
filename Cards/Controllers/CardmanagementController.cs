﻿using DBL;
using DBL.Entities;
using DBL.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace Cards.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize]
    public class CardmanagementController : ControllerBase
    {
        private readonly BL bl;
        IConfiguration _config;
        public CardmanagementController(IConfiguration config)
        {
            bl = new BL(Util.ConnectionString(config));
            _config = config;
        }
        #region Card Management
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Systemblogcategorydata>>> Getallsystemcard(int Offset,int Count, string? Search)
        {
            var data = await bl.Getallsystemcard(Offset, Count,Search);
            return Ok(data);
        }
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Systemblogcategorydata>>> Getusersystemcard(long Userid,int Offset, int Count, string? Search)
        {
            var data = await bl.Getusersystemcard(Userid, Offset, Count, Search);
            return Ok(data);
        }
        [HttpPost("Createsystemcard")]
        public async Task<ActionResult<Genericmodel>> Createsystemcard(Systemcards Systemcard)
        {
            var data = await bl.Createsystemcard(JsonConvert.SerializeObject(Systemcard));
            return Ok(data);
        }
        [HttpGet]
        public async Task<ActionResult<Systemcards>> Getsystemcardbycardid(long Userid, long Cardid)
        {
            var data = await bl.Getsystemcardbycardid(Userid,Cardid);
            return Ok(data); 
        }
        [HttpPut("Updatesystemcard")]
        public async Task<ActionResult<Genericmodel>> Updatesystemcard(Systemcards Systemcard)
        {
            var data = await bl.Updatesystemcard(JsonConvert.SerializeObject(Systemcard));
            return Ok(data);
        }
        [HttpDelete]
        public async Task<ActionResult<Genericmodel>> Deletesystemcardbycardid(long Userid,long Cardid)
        {
            var data = await bl.Deletesystemcardbycardid(Userid,Cardid);
            return Ok(data); 
        }
        #endregion
    }
}