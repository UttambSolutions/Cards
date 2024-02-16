using DBL.Entities;
using DBL.Models;

namespace DBL.Repositories
{
    public interface ICardmanagementRepository
    {
        IEnumerable<Systemcarddatamodel> Getallsystemcard(int Offset, int Count, string? Search);
        IEnumerable<Systemcarddatamodel> Getusersystemcard(long Userid, int Offset, int Count, string? Search);
        Genericmodel Createsystemcard(string jsonObjectdata);
        Systemcards Getsystemcardbycardid(long Userid, long Cardid);
        Genericmodel Updatesystemcard(string jsonObjectdata);
        Genericmodel Deletesystemcardbycardid(long Userid, long Cardid);
    }
}
