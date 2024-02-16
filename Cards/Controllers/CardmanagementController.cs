using DBL;
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
        [HttpGet("Getsystemcard")]
        public async Task<ActionResult<IEnumerable<Systemblogcategorydata>>> Getsystemcard()
        {
            var data = await bl.Getsystemcard();
            return Ok(data);
        }
        [HttpPost("Createsystemcard")]
        public async Task<ActionResult<Genericmodel>> Createsystemcard(Systemcards Systemcard)
        {
            var data = await bl.Createsystemcard(JsonConvert.SerializeObject(Systemcard));
            return Ok(data);
        }
        [HttpGet("Getsystemcardbycardid/{Cardid:long}")]
        public async Task<ActionResult<Systemcards>> Getsystemcardbycardid(long Cardid)
        {
            var data = await bl.Getsystemcardbycardid(Cardid);
            return data;
        }
        [HttpPut("Updatesystemcard")]
        public async Task<ActionResult<Genericmodel>> Updatesystemcard(Systemcards Systemcard)
        {
            var data = await bl.Updatesystemcard(JsonConvert.SerializeObject(Systemcard));
            return Ok(data);
        }
        #endregion
    }
}
