using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using FORWit.Movies.Web;

namespace MovieTesting
{
    [TestClass]
    public class ColorDBTest
    {
        [TestMethod]
        public void getColorsTest()
        {
            Tuple<String, String> output = ColorDB.getColors("Western Oregon University");
            Assert.AreEqual("#FF0000", output.Item1);
            Assert.AreEqual("#808080", output.Item2);
        }
    }
}
