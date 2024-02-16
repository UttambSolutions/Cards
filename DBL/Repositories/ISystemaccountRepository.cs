using DBL.Models;

namespace DBL.Repositories
{
    public interface ISystemaccountRepository
    {
        Usermodelresponce VerifySystemStaff(string Username);
    }
}
