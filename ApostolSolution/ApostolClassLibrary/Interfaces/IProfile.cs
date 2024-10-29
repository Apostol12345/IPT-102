namespace ApostolClassLibrary.Interfaces
{
    public interface IProfile
    {
        string? Id { get; set; }
        string? Name { get; set; }
        string? Sex { get; set; }
        string? Age { get; set; }
        string? Weight { get; set; }
        string? Category { get; set; }
        string? Event { get; set; }
        string? Belt { get; set; }
    }
}
