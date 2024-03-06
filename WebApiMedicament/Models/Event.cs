using System;
using System.Collections.Generic;

namespace WebApiMedicament.Models;

public partial class Event
{
    public int EventId { get; set; }

    public int PatientId { get; set; }

    public int TypeId { get; set; }

    public int DoctorId { get; set; }

    public int DiagnosisId { get; set; }

    public int EventNameId { get; set; }

    public int ResultId { get; set; }

    public DateOnly EventDate { get; set; }

    public string? Recommendations { get; set; }

    public string? MedicalHistory { get; set; }

    public string? Symptoms { get; set; }

    public virtual Diagnosis Diagnosis { get; set; } = null!;

    public virtual Doctor Doctor { get; set; } = null!;

    public virtual EventName EventName { get; set; } = null!;

    public virtual Patient Patient { get; set; } = null!;

    public virtual ICollection<Prescription> Prescriptions { get; set; } = new List<Prescription>();

    public virtual Result Result { get; set; } = null!;

    public virtual Type Type { get; set; } = null!;
}
