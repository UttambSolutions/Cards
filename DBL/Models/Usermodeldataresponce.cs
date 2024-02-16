namespace DBL.Models
{
    public class Usermodeldataresponce
    {
        public int Userid { get; set; }
        public string? Firstname { get; set; }
        public string? Lastname { get; set; }
        public string? Phonenumber { get; set; }
        public string? Emailaddress { get; set; }
        public string? Passwords { get; set; }
        public string? Passwordhash { get; set; }
        public string? Rolename { get; set; }
        public DateTime Datecreated { get; set; }
        public DateTime Datemodified { get; set; }
    }
}
