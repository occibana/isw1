using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;

/// <summary>
/// Descripción breve de Mail
/// </summary>
public class Mail
{
    public void enviarmail(Registro MailE)
    {
        //mail
        MailMessage mail = new MailMessage();
        SmtpClient SmtpSever = new SmtpClient("smtp.gmail.com");

        mail.From = new MailAddress("occibana@gmail.com", "Registro exitoso");//correo que envia, diplay name 
        SmtpSever.Host = "smtp.gmail.com";//servidor gmail
        mail.Subject = "Registro exitoso";//asunto
        mail.Body = "Su registro ha sido exitoso, porfavor recuerde que:\nUsuario: " + MailE.Usuario +
            "\nContraseña: " + MailE.Contrasena;
        mail.To.Add(MailE.Correo);//destino del correo
        mail.IsBodyHtml = true;
        mail.Priority = MailPriority.Normal;

        //Configuracion del SMTP
        SmtpSever.Port = 587;
        SmtpSever.Credentials = new System.Net.NetworkCredential("occibana@gmail.com", "occibana123");//correo origen, contra*
        SmtpSever.EnableSsl = true;
        SmtpSever.Send(mail);//eviar
        //mail
    }
}