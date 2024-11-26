using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Markup;

namespace MasterpolISP321Nikulina.Classes
{
    public static class Manager
    {
        public static Data.Users CurrentUser { get; set; }
        public static Frame MainFrame { get; set; }


        public static void GetImagrData()
        {

            try
            {
                var list = Data.isp321_VarvaraNikulinaEntities.GetContext().Product.ToList();
                foreach (var item in list)
                {
                    string path = Directory.GetCurrentDirectory() + @"\img\" + item.photoName;
                    if (File.Exists(path))
                    {
                        item.productPhoto = File.ReadAllBytes(path);
                    }
                }

                Data.isp321_VarvaraNikulinaEntities.GetContext().SaveChanges();
            }
            catch (Exception)
            {

            }
        }






    }
}
