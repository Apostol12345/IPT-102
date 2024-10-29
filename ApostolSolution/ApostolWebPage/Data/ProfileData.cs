using ApostolClassLibrary.Interfaces;

namespace ApostolSolution.Data
{
    public class ProfileData : IProfile
    {
        private string? id;
        public ProfileData()
        {
            Id = Guid.NewGuid().ToString();
        }

        public string? Id { get => id; set => id = value; }
        public string? Name { get; set; }
        public string? Sex { get; set; }
        public string? Age { get; set; }
        public string? Weight { get; set; }
        public string? Category { get; set; }
        public string? Event { get; set; }
        public string? Belt { get; set; }

    }
}
