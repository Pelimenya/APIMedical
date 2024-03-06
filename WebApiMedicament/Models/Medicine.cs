using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

namespace WebApiMedicament.Models;

public partial class Medicine
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string Tradename { get; set; } = null!;

    public string Manufacturer { get; set; } = null!;

    public string Image { get; set; } = null!;

    public int Price { get; set; }

    public int Stockquantity { get; set; }

    public int Warehouseid { get; set; }

    [JsonIgnore]
    public virtual Warehouse Warehouse { get; set; } = null!;
}
