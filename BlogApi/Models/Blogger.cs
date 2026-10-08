namespace BlogApi.Models
{
    public class Blogger
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Age { get; set; }
        public string Email { get; set; }
        public string Password { get; set; } = string.Empty;
        public DateTime RegistrationTime { get; set; }
    }
}
