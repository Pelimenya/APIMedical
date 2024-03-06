using System;
using System.Collections.Generic;

namespace WebApiMedicament.Models;

public partial class Result
{
    public int ResultId { get; set; }

    public string ResultName { get; set; } = null!;

    public virtual ICollection<Event> Events { get; set; } = new List<Event>();
}
