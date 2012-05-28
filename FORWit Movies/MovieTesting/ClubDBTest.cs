using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace MovieTesting
{
    [TestClass]
    public class ClubDBTest
    {
        [TestMethod]
        public void getClubs()
        {
            ClubDB.getClubs();
        }
    }
}
