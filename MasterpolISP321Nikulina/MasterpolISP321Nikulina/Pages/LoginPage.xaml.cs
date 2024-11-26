using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace MasterpolISP321Nikulina.Pages
{
    /// <summary>
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        private int loginAttempts = 0;

        public LoginPage()
        {
            InitializeComponent();
        }
        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                StringBuilder errors = new StringBuilder();

                if (string.IsNullOrEmpty(LoginTextBox.Text))
                {
                    errors.AppendLine("Заполните логин");
                }
                if (string.IsNullOrEmpty(PasswordBox.Password))
                {
                    errors.AppendLine("Заполните пароль");
                }
                if (errors.Length > 0)
                {
                    MessageBox.Show(errors.ToString(), "Ошибка", MessageBoxButton.OK,
                        MessageBoxImage.Error);
                    return;
                }

                if (Data.isp321_VarvaraNikulinaEntities.GetContext().Users
                    .Any(d => d.login == LoginTextBox.Text 
                    && d.password == PasswordBox.Password))  
                {
                    loginAttempts = 0;
                    var user = Data.isp321_VarvaraNikulinaEntities.GetContext().Users
                        .First(d => d.login == LoginTextBox.Text 
                        && d.password == PasswordBox.Password);

                    Classes.Manager.CurrentUser = user;

                    switch (user.Role.userRole)
                    {
                        case "Администратор":
                            Classes.Manager.MainFrame.Navigate(new Pages.AdminLkPage());
                        break;

                        case "Клиент":
                            Classes.Manager.MainFrame.Navigate(new Pages.ViewProductsPage());
                        break;

                        case "Менеджер":
                            Classes.Manager.MainFrame.Navigate(new Pages.ViewProductsPage());
                        break;
                        
                    }



                    MessageBox.Show("Успех", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);
                }
                else
                {
                    loginAttempts++;

                    if (loginAttempts >= 3)
                    {
                        // Перебрасываем на страницу с капчей
                        Classes.Manager.MainFrame.Navigate(new Pages.CapchaPage());
                    }
                    else
                    {
                        MessageBox.Show("УЗ не найдена", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void GuestButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.ViewProductsPage());
        }



        private bool IsLoginValid(string login, string password)
        {
            var context = Data.isp321_VarvaraNikulinaEntities.GetContext();
            return context.Users.Any(user => user.login == login && user.password == password);
        }

    }
}
