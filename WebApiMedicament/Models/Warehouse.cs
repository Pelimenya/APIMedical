using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

namespace WebApiMedicament.Models;

public partial class Warehouse
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;
[JsonIgnore]
    public virtual ICollection<Medicine> Medicines { get; set; } = new List<Medicine>();
}
