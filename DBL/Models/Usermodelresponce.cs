namespace DBL.Models
{
    public class Usermodelresponce
    {
        public int RespStatus { get; set; }
        public string? RespMessage { get; set; }
        public string? Token { get; set; }
        public Usermodeldataresponce? Usermodel { get; set; }
    }
}
