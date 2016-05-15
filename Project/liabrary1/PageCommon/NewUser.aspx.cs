using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
//using Electo.BusinessLayer;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using ElectoSystem.Common.UICommon;
//using ElectoSystem.Entities;
//using Electo.DataLayer.Entities;
//using ElectoSystem.Helper;
using System.Web.UI.HtmlControls;
//using ElectoSystem.Entities;
//using ElectoSystem;
//using ElectoSystem.Common;
public partial class PageUser_NewUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if(Page.User.Identity.IsAuthenticated)
        {
            Response.Redirect("~/PageCommon/index.aspx");
        }
    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        // try
        //    {
        //       registration  votetedStudents = null;
        //        using (MultiCon mySqlHelper = new MultiCon(ConfigurationManager.ConnectionStrings["dbConnectionString"].ConnectionString))
        //        {
        //            DataTable registration1 = mySqlHelper.GetDataTable(CommandType.StoredProcedure, ProcedureConstant.SPGetVoteStatus, new ParameterData("StudId", studId));
                    
        //            foreach(DataRow dr in VotedStatus.Rows)
        //            {
        //                votetedStudents = new VotetedStudents();
        //                votetedStudents.Vst_StudentKey = dr["Vst_StudentKey"].ToString();
        //                votetedStudents.Vst_IVFHouse =Convert.ToBoolean( dr["Vst_IVFHouse"]);
        //                votetedStudents.Vst_IVFSenate = Convert.ToBoolean(dr["Vst_IVFSenate"]);
        //            }
        //        }
        //        return votetedStudents;
        //    }
        //    catch (Exception ex)
        //    {
        //        using (MultiCon mySqlHelper = new MultiCon(ConfigurationManager.ConnectionStrings["dbConnectionString"].ConnectionString))
        //        {
        //            mySqlHelper.SendQuery(CommandType.StoredProcedure,
        //                                    ProcedureConstant.SPLoggError,
        //                                    new ParameterData("piSeverityId", (int)ENums.EWSSeverity.Error),
        //                                    new ParameterData("piDescription", ex.ToString()));
        //        }
        //        return null;
        //    }
        //}
    }
}