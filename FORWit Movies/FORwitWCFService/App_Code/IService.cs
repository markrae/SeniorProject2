using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace FORwitServiceLibrary
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService" in both code and config file together.
    [ServiceContract]
    public interface IService
    {

        [OperationContract]
        string GetData(int value);

        //[OperationContract]
        //CompositeType GetDataUsingDataContract(CompositeType composite);

        [OperationContract]
        MemberInfo GetMember(int ID);
        // TODO: Add your service operations here
    }

    //// Use a data contract as illustrated in the sample below to add composite types to service operations.
    //[DataContract]
    //public class CompositeType
    //{
    //    bool boolValue = true;
    //    string stringValue = "Hello ";

    //    [DataMember]
    //    public bool BoolValue
    //    {
    //        get { return boolValue; }
    //        set { boolValue = value; }
    //    }

    //    [DataMember]
    //    public string StringValue
    //    {
    //        get { return stringValue; }
    //        set { stringValue = value; }
    //    }
    //}

    ////Hopefully this will provide an easier way to handle collections. If not, it was still a useful exercise.
    //public class MemberCollection
    //{
    //    string lName = "Smith";
    //    string fName = "John";
    //    int memberID = 1;
    //    LinkedList<int> movieIDs = new LinkedList<int>();

    //    [DataMember]
    //    public string LName
    //    {
    //        get { return lName; }
    //        set { lName = value; }
    //    }

    //    [DataMember]
    //    public string FName
    //    {
    //        get { return fName; }
    //        set { fName = value; }
    //    }

    //    [DataMember]
    //    public int MemberID
    //    {
    //        get { return memberID; }
    //        set { memberID = value; }
    //    }

    //    [DataMember]
    //    public LinkedList<int> MovieIDs
    //    {
    //        get { return movieIDs; }
    //        set { movieIDs = value; }
    //    }
    //}

    [DataContract]
    public class MemberInfo
    {
        string lName = "Smith";
        string fName = "John";

        [DataMember]
        public string LName
        {
            get { return lName; }
            set { lName = value; }
        }

        [DataMember]
        public string FName
        {
            get { return fName; }
            set { fName = value; }
        }
    }
}