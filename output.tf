output "FTE" {
  value = join("\n",[
    "Intern_name:${var.FTE_name}",
    "Contact_no:${var.FTE_mobile}",
    "City:${var.FTE_city}",
    "healthy:${var.Is_emp_healthy}",
    "Roles:${jsonencode(var.roles)}",
    "Hobbies:${jsonencode(var.Hobbies)}",
    "Project_Region:${jsonencode(var.Project_Region)}"
    ])
}

output "Intern" {
  value = join("\n",[
    "Intern_name:${var.int_name}",
    "Contact_no:${var.int_mobile}",
    "City:${var.int_city}",
    "healthy:${var.Is_intern_healthy}"])
}


