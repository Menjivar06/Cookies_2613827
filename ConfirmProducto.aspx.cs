﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookie_2613827
{
    public partial class ConfirmProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve the cookies.
            ddlCategory.SelectedValue = Request.Cookies["ddlCategory"].Value;
            if (Request.Cookies["ddlSupplier"] != null)
            {
                ddlSupplier.SelectedValue = Request.Cookies["ddlSupplier"].Value;
            }
            else
            {
                // Opcional: asignar un valor por defecto o manejar el caso cuando la cookie no existe
                ddlSupplier.SelectedIndex = 0;  // O cualquier otro valor válido
            }
            lblProduct.Text = Request.Cookies["strProduct"].Value;
            txtDescription.Text = Request.Cookies["strDescription"].Value;
            lblImage.Text = Request.Cookies["strImage"].Value;
            Decimal decPrice = Convert.ToDecimal(Request.Cookies["decPrice"].Value);
            lblPrice.Text = decPrice.ToString("c");
            lblNumberInStock.Text = Request.Cookies["bytNumberInStock"].Value;
            lblNumberOnOrder.Text = Request.Cookies["bytNumberOnOrder"].Value;
            if (Request.Cookies["bytReorderLevel"] != null)
            {
                lblRecorderLabel.Text = Request.Cookies["bytReorderLevel"].Value;
            }
            else
            {
                lblRecorderLabel.Text = "Valor no disponible"; // Mensaje o valor predeterminado
            }

            // Compute and display the value in stock and the value on order.
            Byte bytNumberInStock = Convert.ToByte(Request.Cookies["bytNumberInStock"].Value);
            Byte bytNumberOnOrder = Convert.ToByte(Request.Cookies["bytNumberOnOrder"].Value);
            Decimal decValueInStock = decPrice * bytNumberInStock;
            Decimal decValueOnOrder = decPrice * bytNumberOnOrder;
            lblValueInStock.Text = decValueInStock.ToString("c");
            lblValueOnOrder.Text = decValueOnOrder.ToString("c");

        }
    }
}