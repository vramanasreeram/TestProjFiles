using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContactForm
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage message = new MailMessage();
                SmtpClient smtp = new SmtpClient();
                message.From = new MailAddress("navin.sreeram@gmail.com");
                message.To.Add(new MailAddress(txtEmail.Text.ToString()));
                message.Subject = txtSub.Text.ToString() + " " + txtEmail.Text.ToString();
                message.IsBodyHtml = true; //to make message body as html  
                message.Body = txtname.Text.ToString() + " " + txtMessage.Text.ToString();
                smtp.Port = 587;
                smtp.Host = "smtp.gmail.com"; //for gmail host  
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("navin.sreeram@gmail.com", "9494286004");
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Send(message);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}