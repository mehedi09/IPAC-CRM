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
    
    public partial class EMAIL
    {
        public System.Guid ID { get; set; }
        public bool DELETED { get; set; }
        public Nullable<System.Guid> CREATED_BY { get; set; }
        public System.DateTime DATE_ENTERED { get; set; }
        public Nullable<System.Guid> MODIFIED_USER_ID { get; set; }
        public System.DateTime DATE_MODIFIED { get; set; }
        public Nullable<System.DateTime> DATE_MODIFIED_UTC { get; set; }
        public Nullable<System.Guid> ASSIGNED_USER_ID { get; set; }
        public Nullable<System.Guid> TEAM_ID { get; set; }
        public string NAME { get; set; }
        public Nullable<System.DateTime> DATE_START { get; set; }
        public Nullable<System.DateTime> TIME_START { get; set; }
        public string PARENT_TYPE { get; set; }
        public Nullable<System.Guid> PARENT_ID { get; set; }
        public string DESCRIPTION { get; set; }
        public string DESCRIPTION_HTML { get; set; }
        public string FROM_ADDR { get; set; }
        public string FROM_NAME { get; set; }
        public string TO_ADDRS { get; set; }
        public string CC_ADDRS { get; set; }
        public string BCC_ADDRS { get; set; }
        public string TO_ADDRS_IDS { get; set; }
        public string TO_ADDRS_NAMES { get; set; }
        public string TO_ADDRS_EMAILS { get; set; }
        public string CC_ADDRS_IDS { get; set; }
        public string CC_ADDRS_NAMES { get; set; }
        public string CC_ADDRS_EMAILS { get; set; }
        public string BCC_ADDRS_IDS { get; set; }
        public string BCC_ADDRS_NAMES { get; set; }
        public string BCC_ADDRS_EMAILS { get; set; }
        public string TYPE { get; set; }
        public string STATUS { get; set; }
        public string MESSAGE_ID { get; set; }
        public string REPLY_TO_NAME { get; set; }
        public string REPLY_TO_ADDR { get; set; }
        public string INTENT { get; set; }
        public Nullable<System.Guid> MAILBOX_ID { get; set; }
        public string RAW_SOURCE { get; set; }
        public Nullable<System.Guid> TEAM_SET_ID { get; set; }
    }
}