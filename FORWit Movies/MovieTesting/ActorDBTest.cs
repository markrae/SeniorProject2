using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace MovieTesting
{
    [TestClass]
    public class ActorDBTest
    {
        [TestMethod]
        public void getActors()
        {
            ActorDB.getActors();
        }
    }
}
