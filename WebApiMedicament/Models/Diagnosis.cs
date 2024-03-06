using System;
using System.Collections.Generic;

namespace WebApiMedicament.Models;

public partial class Diagnosis
{
    public int DiagnosisId { get; set; }

    public string DiagnosisName { get; set; } = null!;

    public virtual ICollection<Event> Events { get; set; } = new List<Event>();
}
