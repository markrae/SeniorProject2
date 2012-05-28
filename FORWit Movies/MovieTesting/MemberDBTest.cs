using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using FORWit.Movies.Web;

namespace MovieTesting
{
    [TestClass]
    public class MemberDBTest
    {
        [TestMethod]
        public void getMembers()
        {
            MemberDB.getMembers();
        }
    }
}
