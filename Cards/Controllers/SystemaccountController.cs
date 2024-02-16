using DBL;
using DBL.Entities;
using DBL.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace Cards.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize]
    public class SystemaccountController : ControllerBase
    {
        private readonly BL bl;
        IConfiguration _config;
        public SystemaccountController(IConfiguration config)
        {
            bl = new BL(Util.ConnectionString(config));
            _config = config;
        }
        [AllowAnonymous]
        [HttpPost("Authenticateuser")]
        public async Task<ActionResult<Usermodelresponce>> AuthenticateUttambSolutionStaff([FromBody] Userloginrequest userdata)
        {
            var _userData = await bl.ValidateSystemStaff(userdata.Username, userdata.Password);
            if (_userData.RespStatus == 1)
                return Unauthorized(new Usermodelresponce
                {
                    RespStatus = 401,
                    RespMessage = _userData.RespMessage,
                    Token = "",
                    Usermodel = new Usermodeldataresponce()
                });
            if (_userData.RespStatus == 2)
                return StatusCode(StatusCodes.Status500InternalServerError, _userData.RespMessage);
            var claims = new[] {
                     new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
                     new Claim(JwtRegisteredClaimNames.Iat, DateTime.UtcNow.ToString()),
                     new Claim("UserId", _userData.Usermodel.Userid.ToString()),
                 };
            var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_config["Jwt:Key"]));
            var signIn = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);
            var token = new JwtSecurityToken(
                _config["Jwt:Issuer"],
                _config["Jwt:Audience"],
                claims,
                expires: DateTime.UtcNow.AddMinutes(30),
                signingCredentials: signIn);
            var tokenString = new JwtSecurityTokenHandler().WriteToken(token);

            return Ok(new Usermodelresponce
            {
                RespStatus = _userData.RespStatus,
                RespMessage = _userData.RespMessage,
                Token = tokenString,
                Usermodel = _userData.Usermodel
            });
        }
    }
}
