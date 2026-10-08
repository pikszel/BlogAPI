using BlogApi.Models;
using BlogApi.Models.DTOs;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MySqlConnector;

namespace BlogApi.Controllers
{
    [Route("blogger")]
    [ApiController]
    public class BloggerController : ControllerBase
    {
        public string ConnectionString = "server=localhost;database=blog14f;user=root;password=";


        [HttpGet]
        public object GetAllBlogger()
        {
            var bloggers = new List<Blogger>();

            var connector = new MySqlConnection(ConnectionString);

            connector.Open();

            string sql = "SELECT * FROM blogger";

            var cmd = new MySqlCommand(sql, connector);

            var datareader = cmd.ExecuteReader();

            while (datareader.Read())
            {
                var blogger = new Blogger
                {
                    Id = datareader.GetInt32(0),
                    Name = datareader.GetString(1),
                    Age = datareader.GetInt32(2),
                    Email = datareader.GetString(3),
                    Password = datareader.GetString(4),
                    RegistrationTime = datareader.GetDateTime(5)
                };
                bloggers.Add(blogger);
            }

            connector.Close();

            return new { message = "Sikeres lekérdezés!", result = bloggers };
        }

        [HttpGet("byId")]
        public object GetBloggerById(int id)
        {
            var connector = new MySqlConnection(ConnectionString);

            connector.Open();

            string sql = @"SELECT * FROM `blogger` WHERE `id` = @id";

            var cmd = new MySqlCommand(sql, connector);

            cmd.Parameters.AddWithValue("@id", id);

            var dataReader = cmd.ExecuteReader();

            Blogger? blogger = null;
            object? result = null;

            if (dataReader.Read() == true)
            {
                blogger = new Blogger
                {
                    Id = dataReader.GetInt32("id"),
                    Name = dataReader.GetString("name"),
                    Age = dataReader.GetInt32("age"),
                    Email = dataReader.GetString("email"),
                    Password = dataReader.GetString("password"),
                    RegistrationTime = dataReader.GetDateTime("registrationTime")
                };

                result = new { message = "Sikeres lekérdezés!", result = blogger };
            }
            else
            {
                result = new { message = "Nincs ilyen ID." };
            }

            connector.Close();
            return result;
        }

        [HttpPost]
        public object AddNewBlogger(AddNewBloggerDTO addNewBloggerDTO)
        {
            var connector = new MySqlConnection(ConnectionString);

            connector.Open();

            string sql = @"INSERT INTO `blogger`(`Name`, `Age`, `Email`, `Password`, `RegistrationTime`)
VALUES (@name, @age, @email, @password, @registrationTime)";

            var cmd = new MySqlCommand(sql, connector);

            cmd.Parameters.AddWithValue("@name", addNewBloggerDTO.Name);
            cmd.Parameters.AddWithValue("@age", addNewBloggerDTO.Age);
            cmd.Parameters.AddWithValue("@email", addNewBloggerDTO.Email);
            cmd.Parameters.AddWithValue("@password", addNewBloggerDTO.Password);
            cmd.Parameters.AddWithValue("@registrationTime", DateTime.Now);

            cmd.ExecuteNonQuery();

            connector.Close();

            return new { message = "Sikeres hozzáadás!", result = addNewBloggerDTO };
        }

        [HttpDelete]
        public object DeleteBlogger([FromBody] int id)
        {
            var connector = new MySqlConnection(ConnectionString);

            connector.Open();

            string sql = @"DELETE FROM `blogger` WHERE `id` = @id";

            var cmd = new MySqlCommand(sql, connector);

            cmd.Parameters.AddWithValue("@id", id);

            cmd.ExecuteNonQuery();

            connector.Close();

            return new { message = "Sikeres törlés!", result = "" };
        }

        [HttpPut]
        public object UpdateBlogger(int id, UpdateBloggerDTO updateBloggerDTO)
        {
            var connector = new MySqlConnection(ConnectionString);

            connector.Open();

            string sql = @"UPDATE `blogger` SET `Name` = @name, `Age` = @age, `Email` = @email, `Password` = @password WHERE `id` = @id";

            var cmd = new MySqlCommand(sql, connector);

            cmd.Parameters.AddWithValue("@name", updateBloggerDTO.Name);
            cmd.Parameters.AddWithValue("@age", updateBloggerDTO.Age);
            cmd.Parameters.AddWithValue("@email", updateBloggerDTO.Email);
            cmd.Parameters.AddWithValue("@password", updateBloggerDTO.Password);
            cmd.Parameters.AddWithValue("@id", id);

            cmd.ExecuteNonQuery();

            connector.Close();

            return new { message = "Sikeres frissítés!", result = updateBloggerDTO };
        }
    }
}
