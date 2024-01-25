locals {
  salary_detail=var.salary
  emp_id=var.id

}

resource "local_file" "file_1" {
    filename = "${path.module}/salary.bar"
    content = local.salary_detail
 }



resource "local_file" "file_2" {
    filename = "${path.module}/../F1/interndetails.bar"
    content = join("\n",[
    "Intern_name:${var.int_name}",
    "Contact_no:${var.int_mobile}",
    "City:${var.int_city}",
    "healthy:${var.Is_intern_healthy}",
    "Roles:${jsonencode(var.roles)}",
    "Hobbies:${jsonencode(var.Hobbies)}",
    "Project_Region:${jsonencode(var.Project_Region)}"

    ])
}

resource "local_file" "file_3" {
    filename = "${path.module}/../F2/FTEdetails.bar"
    content = join("\n",[
    "Intern_name:${var.FTE_name}",
    "Contact_no:${var.FTE_mobile}",
    "City:${var.FTE_city}",
    "healthy:${var.Is_emp_healthy}"])
}

resource "random_id" "id" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    id=local.emp_id
   }
  byte_length = 16
}







