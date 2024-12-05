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
    /// Логика взаимодействия для PcInfoPage.xaml
    /// </summary>
    public partial class PcInfoPage : Page
    {
        public PcInfoPage()
        {
            InitializeComponent();
            LoadPcsData();
        }

        private void LoadPcsData()
        {
            using (var db = new Practice2024Entities())
            {
                var pcs = db.Pks
                    .Join(db.Efficiency, pc => pc.idEfficiency, e => e.id, (pc, e) => new
                    {
                        pc.id,
                        pc.processor,
                        pc.motherboard,
                        pc.RAMmemory,
                        pc.kuller,
                        pc.hardDrive,
                        pc.energyBlock,
                        pc.videoCard,
                        pc.fan,
                        efficiency = e.efficiency1,
                        pc.other
                    }).ToList();

                PcsDataGrid.ItemsSource = pcs;
            }
        }

        private void BackButton_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            NavigationService?.GoBack();
        }


    }
}
