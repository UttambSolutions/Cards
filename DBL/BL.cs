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
                if (resp.RespStatus == 0)
                {
                    Encryptdecrypt sec = new Encryptdecrypt();
                    string descpass = sec.Decrypt(resp.Usermodel.Passwords, resp.Usermodel.Passwordharsh);
                    if (password == descpass)
                    {
                        userModel = new Usermodelresponce
                        {
                            RespStatus = resp.RespStatus,
                            RespMessage = resp.RespMessage,
                            Token = "",
                            Usermodel = new Usermodeldataresponce
                            {
                                Staffid = resp.Usermodel.Staffid,
                                FullName = resp.Usermodel.FullName,
                                PhoneNumber = resp.Usermodel.PhoneNumber,
                                Username = resp.Usermodel.Username,
                                EmailAddress = resp.Usermodel.EmailAddress,
                                RoleId = resp.Usermodel.RoleId,
                                RoleName = resp.Usermodel.RoleName,
                                Passwordharsh = resp.Usermodel.Passwordharsh,
                                Passwords = resp.Usermodel.Passwords,
                                IsActive = resp.Usermodel.IsActive,
                                IsDeleted = resp.Usermodel.IsDeleted,
                                LoginStatus = resp.Usermodel.LoginStatus,
                                Lastpasswordchangedate = resp.Usermodel.Lastpasswordchangedate,
                                CreatedBy = resp.Usermodel.CreatedBy,
                                ModifiedBy = resp.Usermodel.ModifiedBy,
                                Lastlogindate = resp.Usermodel.Lastlogindate,
                                DateModified = resp.Usermodel.DateModified,
                                DateCreated = resp.Usermodel.DateCreated,
                                Permission = resp.Usermodel.Permission
                            }
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
