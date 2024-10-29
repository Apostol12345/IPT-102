using ApostolClassLibrary.Interfaces;

namespace ApostolClassLibrary.Models
{
    public class Profile : IProfile
    {
        public string? Id { get ; set; }
        public string? Name { get; set; }
        public string? Sex { get ; set; }
        public string? Age { get ; set ; }
        public string? Weight { get; set; }
        public string? Category { get; set; }
        public string? Event { get; set; }
        public string? Belt { get; set; }
    }
}