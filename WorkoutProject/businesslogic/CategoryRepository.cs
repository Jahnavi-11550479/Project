using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace businesslogic
{
   public class CategoryRepository
    {
       
       public static void ListCategory()
        {
            try
            {
                var Obj = new ProjectsEntities();
                var Query = from obj in Obj.WorkOut_Categorys
                            select obj;
                foreach (WorkOut_Categorys cat in Query)
                {
                    Console.WriteLine("Id={0}, Name={1}", cat.category_id, cat.category_name);
                }


            }
            catch (Exception ex)
            {
                throw;
            }
        }



    }


}

