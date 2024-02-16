using System.Text.Json.Serialization;

namespace DBL.Models
{
    public class Usermodeldataresponce
    {
        public long Userid { get; set; }
        public string? Fullname { get; set; }
        public string? Phonenumber { get; set; }
        public string? Emailaddress { get; set; }
        [JsonIgnore]
        public string? Passwords { get; set; }
        [JsonIgnore]
        public string? Passwordhash { get; set; }
        public string? Rolename { get; set; }
        public DateTime Datecreated { get; set; }
        public DateTime Datemodified { get; set; }
    }
}
