//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IPAC.UI
{
    using System;
    using System.Collections.Generic;
    
    public partial class TEAM
    {
        public System.Guid ID { get; set; }
        public bool DELETED { get; set; }
        public Nullable<System.Guid> CREATED_BY { get; set; }
        public System.DateTime DATE_ENTERED { get; set; }
        public Nullable<System.Guid> MODIFIED_USER_ID { get; set; }
        public System.DateTime DATE_MODIFIED { get; set; }
        public Nullable<System.DateTime> DATE_MODIFIED_UTC { get; set; }
        public string NAME { get; set; }
        public string DESCRIPTION { get; set; }
        public Nullable<bool> PRIVATE { get; set; }
    }
}
