using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Book
/// </summary>
public class Book
{
 

    public Book()
    {
        //
        // TODO: Add constructor logic here
        //

    }
    private string _title;
    private string _author;
    private string _isbn;


    public string Title
    {
        get
        {
            return _title;
        }
        set
        {
            _title = value;
        }
    }
    public string Author
    {
        get
        {
            return _author;
        }
        set
        {
            _author = value;
        }
    }
    public string ISBN
    {
        get
        {
            return _isbn;
        }
        set
        {
            _isbn = value;
        }
    }



}