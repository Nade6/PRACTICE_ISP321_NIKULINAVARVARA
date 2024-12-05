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
    /// Логика взаимодействия для MonitorInfoPage.xaml
    /// </summary>
    public partial class MonitorInfoPage : Page
    {
        public MonitorInfoPage()
        {
            InitializeComponent();
            LoadMonitorsData();
        }

        private void LoadMonitorsData()
        {
            using (var db = new Practice2024Entities())
            {
                var monitors = db.Monitors
                    .Join(db.Manufacturers, m => m.idmanufacturer, man => man.id, (m, man) => new
                    {
                        manufacturer = man.manufacturer,
                        m.nameModel,
                        m.screenResolution,
                        m.gercovka,
                        typeMatricy = db.TypeMatricy.Where(tm => tm.id == m.idTypeMatricy).Select(tm => tm.typeMatricy1).FirstOrDefault(),
                        brokenPixels = db.BrokenPixels.Where(bp => bp.id == m.idBrokenPixels).Select(bp => bp.brokenPixels1).FirstOrDefault(),
                        m.commentForBrokenPixels,
                        efficiency = db.Efficiency.Where(e => e.id == m.idEfficiency).Select(e => e.efficiency1).FirstOrDefault(),
                        statusSelling = db.StatusSelling.Where(ss => ss.id == m.idStatusSelling).Select(ss => ss.statusSelling1).FirstOrDefault()
                    }).ToList();

                MonitorsDataGrid.ItemsSource = monitors;
            }
        }

        private void BackButton_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            NavigationService?.GoBack();
        }


    }
}
