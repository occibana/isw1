﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Filtro
/// </summary>

[Serializable]
public class Filtro
{
    public int idhotel;
    public String nombrehotel;
    public Nullable<double> preciomax;
    public Nullable<double> preciomin;
    public Nullable<int> numpersonas;
    public String municipio;
    public String zona;

}