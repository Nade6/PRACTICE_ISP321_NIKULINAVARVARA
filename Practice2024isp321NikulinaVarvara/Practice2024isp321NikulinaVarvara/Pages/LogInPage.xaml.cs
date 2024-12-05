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
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Practice2024isp321NikulinaVarvara.Pages
{
    /// <summary>
    /// Логика взаимодействия для LogInPage.xaml
    /// </summary>
    public partial class LogInPage : Page
    {
        private int failedAttempts = 0; 
        private string generatedCaptcha = string.Empty;
        public LogInPage()
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
                    MessageBox.Show(errors.ToString(), "Ошибка", 
                        MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                if (Data.Practice2024Entities.GetContext().Users
                    .Any(d => d.login == LoginTextBox.Text
                    && d.password == PasswordBox.Password))
                {
                    var user = Data.Practice2024Entities.GetContext().Users
                        .Where(d => d.login == LoginTextBox.Text
                        && d.password == PasswordBox.Password).FirstOrDefault();

                    Classes.Manager.CurrentUser = user;
                    Classes.Manager.MainFrame.Navigate(new Pages.CategoryPage());

                    MessageBox.Show("Успех", "Успех", MessageBoxButton.OK, 
                        MessageBoxImage.Information);
                }
                else
                {

                    failedAttempts++;
                    if (failedAttempts >= 3)
                    {
                        ShowCaptcha();
                    }
                    else
                    {
                        MessageBox.Show("УЗ не найдена", "Ошибка", MessageBoxButton.OK,
                        MessageBoxImage.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), "Ошибка", MessageBoxButton.OK, 
                    MessageBoxImage.Error);
            }

        }
        private void ShowCaptcha()
        {

            generatedCaptcha = GenerateCaptcha();

            
            CaptchaTextBlock.Text = generatedCaptcha;
            CaptchaGrid.Visibility = Visibility.Visible;


        }

        private string GenerateCaptcha()
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            Random random = new Random();
            return new string(Enumerable.Repeat(chars, 8).Select(s => s[random.Next(s.Length)]).ToArray());
        }

        private void VerifyCaptchaButton_Click(object sender, RoutedEventArgs e)
        {
            // Проверка капчи
            if (CaptchaInputTextBox.Text == generatedCaptcha)
            {
                failedAttempts = 0;
                CaptchaGrid.Visibility = Visibility.Collapsed;
               
            }
            else
            {
                ShowCaptcha();
            }
        }
    }
}
