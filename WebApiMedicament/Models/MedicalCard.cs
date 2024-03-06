using System;
using System.Collections.Generic;

namespace WebApiMedicament.Models;

public partial class MedicalCard
{
    public int CardId { get; set; }

    public string CardNumber { get; set; } = null!;

    public DateOnly IssueDate { get; set; }

    public virtual Patient Card { get; set; } = null!;
}
