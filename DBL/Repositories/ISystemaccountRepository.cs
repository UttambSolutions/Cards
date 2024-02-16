using DBL.Models;

namespace DBL.Repositories
{
    public interface ISystemaccountRepository
    {
        Usermodeldataresponce VerifySystemStaff(string Username);
    }
}
