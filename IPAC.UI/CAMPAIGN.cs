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
    
    public partial class CAMPAIGN
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
        public string TRACKER_KEY { get; set; }
        public Nullable<int> TRACKER_COUNT { get; set; }
        public Nullable<int> IMPRESSIONS { get; set; }
        public string NAME { get; set; }
        public string REFER_URL { get; set; }
        public string TRACKER_TEXT { get; set; }
        public Nullable<System.DateTime> START_DATE { get; set; }
        public Nullable<System.DateTime> END_DATE { get; set; }
        public string STATUS { get; set; }
        public Nullable<decimal> BUDGET { get; set; }
        public Nullable<decimal> BUDGET_USDOLLAR { get; set; }
        public Nullable<decimal> EXPECTED_COST { get; set; }
        public Nullable<decimal> EXPECTED_COST_USDOLLAR { get; set; }
        public Nullable<decimal> ACTUAL_COST { get; set; }
        public Nullable<decimal> ACTUAL_COST_USDOLLAR { get; set; }
        public Nullable<decimal> EXPECTED_REVENUE { get; set; }
        public Nullable<decimal> EXPECTED_REVENUE_USDOLLAR { get; set; }
        public string CAMPAIGN_TYPE { get; set; }
        public string FREQUENCY { get; set; }
        public string OBJECTIVE { get; set; }
        public string CONTENT { get; set; }
        public Nullable<System.Guid> CURRENCY_ID { get; set; }
        public Nullable<System.Guid> TEAM_SET_ID { get; set; }
    }
}