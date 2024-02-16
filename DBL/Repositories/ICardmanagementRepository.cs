using DBL.Entities;
using DBL.Models;

namespace DBL.Repositories
{
    public interface ICardmanagementRepository
    {
        Genericmodel Createsystemcard(string jsonObjectdata);
        Systemcards Getsystemcardbycardid(long Userid, long Cardid);
        Genericmodel Updatesystemcard(string jsonObjectdata);
        Genericmodel Deletesystemcardbycardid(long Userid, long Cardid);
    }
}
