using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BuyNow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        lblPrice.Text = Request.QueryString["price"].ToString();
        Random random = new Random();
        txnid.Value = (Convert.ToString(random.Next(10000, 20000)));
        txnid.Value = "Orderista" + txnid.Value.ToString();
        Response.Write(txnid.Value.ToString());

    }

    protected void btnPayNow_Click(object sender, EventArgs e)
    {
        Double amount;
        double.TryParse(lblPrice.Text, System.Globalization.NumberStyles.Currency,
                      System.Globalization.CultureInfo.CurrentCulture.NumberFormat, out amount);

        String text = key.Value.ToString() + "|" + txnid.Value.ToString() + "|" + amount + "|" + "Food Menu" + "|" + txtName.Text + "|" + txtEmail.Text + "|" + "1" + "|" + "1" + "|" + "1" + "|" + "1" + "|" + "1" + "||||||" + salt.Value.ToString();
        byte[] message = Encoding.UTF8.GetBytes(text);
        UnicodeEncoding UE = new UnicodeEncoding();
        byte[] hashValue;
        SHA512Managed hashString = new SHA512Managed();
        string hex = "";
        hashValue = hashString.ComputeHash(message);
        foreach (byte x in hashValue)
        {
            hex += String.Format("{0:x2}", x);

        }
        hash.Value = hex;

        System.Collections.Hashtable data = new System.Collections.Hashtable();
        data.Add("hash", hex.ToString());
        data.Add("txnid", txnid.Value);
        data.Add("key", key.Value);


        data.Add("amount", amount);
        data.Add("firstname", txtName.Text.Trim());
        data.Add("email", txtEmail.Text.Trim());
        data.Add("phone", txtmobile.Text.Trim());
        data.Add("productinfo", "Food Menu");
        data.Add("udf1", "1");
        data.Add("udf2", "1");
        data.Add("udf3", "1");
        data.Add("udf4", "1");
        data.Add("udf5", "1");

        data.Add("surl", "http://localhost:50388/SuccessPayment.aspx");
        data.Add("furl", "http://localhost:50388/FailurePayment.aspx");

        data.Add("serviceprovider", "");

        string strForm = PreparePOSTForm("https://test.payu.in/_payment", data);
        Page.Controls.Add(new LiteralControl(strForm));

    }

private string PreparePOSTForm(string url, System.Collections.Hashtable data)
{
    string formID = "POSTForm";

    StringBuilder strForm = new StringBuilder();
    strForm.Append("<form id=\"" + formID + "\" name=\"" +
                        formID + "\" action=\"" + url +
                            "\" method=\"POST\">");

    foreach (System.Collections.DictionaryEntry key in data)
    {
        strForm.Append("<input type=\"hidden\" name=\"" + key.Key +
                            "\" value=\"" + key.Value + "\">");
    }

    strForm.Append("</form>");

    StringBuilder strScript = new StringBuilder();
    strScript.Append("<script language='javascript'>");
    strScript.Append("var v" + formID + " =document." +
                        formID + ";");
    strScript.Append("v" + formID + ".submit();");
    strScript.Append("</script>");

    return strForm.ToString() + strScript.ToString();
}
}