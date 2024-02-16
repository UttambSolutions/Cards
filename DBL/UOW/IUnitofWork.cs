using DBL.Repositories;

namespace DBL.UOW
{
    public interface IUnitofWork
    {
        ISystemaccountRepository SystemaccountRepository { get; }
    }
}
