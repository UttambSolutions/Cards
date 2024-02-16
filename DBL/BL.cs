using DBL.Helpers;
using DBL.Models;
using DBL.UOW;

namespace DBL
{
    public class BL
    {
        private UnitofWork db;
        private string _connString;
        static bool mailSent = false;
        Encryptdecrypt sec = new Encryptdecrypt();
        public BL(string connString)
        {
            this._connString = connString;
            db = new UnitofWork(connString);
        }
        #region User Authentication
        public Task<Usermodelresponce> ValidateSystemStaff(string userName, string password)
        {
            return Task.Run(async () =>
            {
                Usermodelresponce userModel = new Usermodelresponce { };
                var resp = db.SystemaccountRepository.VerifySystemStaff(userName);
                if (resp != null)
                {
                    Encryptdecrypt sec = new Encryptdecrypt();
                    string descpass = sec.Decrypt(resp.Passwords, resp.Passwordhash);
                    if (password == descpass)
                    {
                        userModel = new Usermodelresponce
                        {
                            RespStatus = 0,
                            RespMessage = "Loggedin",
                            Token = "",
                            Usermodel = resp,
                        };
                        return userModel;
                    }
                    else
                    {
                        userModel.RespStatus = 1;
                        userModel.RespMessage = "Incorrect Password!";
                    }
                }
                else
                {
                    userModel.RespStatus = 1;
                    userModel.RespMessage = "Incorrect Username!";
                }
                return userModel;
            });
        }
        #endregion

    }
}
