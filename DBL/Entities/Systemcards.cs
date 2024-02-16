using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DBL.Entities
{
    public class Systemcards
    {
        public long Cardid { get; set; }
        public long Userid { get; set; }
        public string? Cardname { get; set; }
        public string? Cardcolor { get; set; }
        public string? Carddescription { get; set; }
        public long Statusid { get; set; }
        public long Modifiedby { get; set; }
        public DateTime Datecreated { get; set; }
        public DateTime Datemodified { get; set; }
    }
}
