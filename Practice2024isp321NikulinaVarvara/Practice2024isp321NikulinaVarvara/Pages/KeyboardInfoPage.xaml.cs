using Practice2024isp321NikulinaVarvara.Data;
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
    /// Логика взаимодействия для KeyboardInfoPage.xaml
    /// </summary>
    public partial class KeyboardInfoPage : Page
    {
        
        public KeyboardInfoPage()
        {
            InitializeComponent();
            LoadKeyboardsData();
        }

        private void LoadKeyboardsData()
        {
            using (var db = new Practice2024Entities())
            {
                var keyboards = db.Keyboards
                    .Join(db.Efficiency, k => k.idEffinciency, e => e.id, (k, e) => new
                    {
                        k.keyboardName,
                        k.typeKeyboard,
                        k.interfaceConnection,
                        k.wireless,
                        efficiency = e.efficiency1
                    }).ToList();

                KeyboardsDataGrid.ItemsSource = keyboards;
            }
        }

        private void BackButton_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            NavigationService?.GoBack();
        }

    }
}
