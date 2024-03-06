using System;
using System.Collections.Generic;

namespace WebApiMedicament.Models;

public partial class HospitalizationStatus
{
    public int StatusId { get; set; }

    public int StatusNameId { get; set; }

    public string StatusDescription { get; set; } = null!;

    public virtual ICollection<Hospitalization> Hospitalizations { get; set; } = new List<Hospitalization>();

    public virtual StatusName StatusName { get; set; } = null!;
}
