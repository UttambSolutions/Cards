using DBL.Repositories;

namespace DBL.UOW
{
    public class UnitofWork : IUnitofWork
    {
        private string connString;
        private bool _disposed;

        private ISystemaccountRepository systemaccountRepository;

        public UnitofWork(string connectionString) => connString = connectionString;
        public ISystemaccountRepository SystemaccountRepository
        {
            get { return systemaccountRepository ?? (systemaccountRepository = new SystemaccountRepository(connString)); }
        }
        public void Reset()
        {
            systemaccountRepository = null;
        }

        public void Dispose()
        {
            dispose(true);
            GC.SuppressFinalize(this);
        }

        private void dispose(bool disposing)
        {
            if (!_disposed)
            {
                _disposed = true;
            }
        }

        ~UnitofWork()
        {
            dispose(false);
        }
    }
}