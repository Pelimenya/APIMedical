using System;
using System.Collections.Generic;

namespace WebApiMedicament.Models;

public partial class Doctor
{
    public int DoctorId { get; set; }

    public string FirstName { get; set; } = null!;

    public string LastName { get; set; } = null!;

    public string? MiddleName { get; set; }

    public string Specialty { get; set; } = null!;

    public virtual ICollection<Event> Events { get; set; } = new List<Event>();
}
