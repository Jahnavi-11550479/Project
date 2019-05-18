using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;
using businesslogic;
namespace BussinessLogic.Test
{
    [TestFixture]
    public class CategoryTest
    {
        [Test]
        public static void ListCategory()
        {
            var obj = new ProjectsEntities();
            var expected = 0;
            var actual = obj.WorkOut_Categorys.Count();
            Assert.AreEqual(expected, actual);

        }
    }
}
