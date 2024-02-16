namespace DBL.Models
{
    public class Systemcarddatamodel
    {
        public long Cardid { get; set; }
        public string? Fullname { get; set; }
        public string? Cardname { get; set; }
        public string? Cardcolor { get; set; }
        public string? Carddescription { get; set; }
        public string? Statusname { get; set; }
        public string? Modifiedby { get; set; }
        public DateTime Datecreated { get; set; }
        public DateTime Datemodified { get; set; }
    }
}
