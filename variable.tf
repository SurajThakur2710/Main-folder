#variables for salary.bar
variable "salary" {
    type=string
}

variable "id" {
  type=number
  default = 1
}

#Variables for interndetails.bar
variable "int_name" {
  type=string
}
variable "int_mobile" {
  type = number
}
variable "int_city" {
  type = string
}
variable "Is_intern_healthy" {
  type = bool
}




# variables for FTE.bar

variable "FTE_name" {
  type=string
}
variable "FTE_mobile" {
  type = number
}
variable "FTE_city" {
  type = string
}
variable "Is_emp_healthy" {
  type = bool
}


# Remaining variable types




variable "Hobbies" {
  type    = list(string)
  default = ["Dance", "Sing", "travel"]
}


variable "roles" {
  type = map(string)
  default = {
    IT = "operatons"
    Devops = "Terraform"
    Sysops= "AWS"
  }
}

variable "Project_Region" {
  type = object({
    Project1 = string
    Project2      = string
  })
  default = {
    Project1= "USA"
    Project2= "MUMBAI"
  }
}