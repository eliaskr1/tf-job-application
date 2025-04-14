variable "email" {
  description = "Email for PlaygroundTech API"
  type        = string
}

variable "password" {
  description = "Password for PlaygroundTech API"
  type        = string
  sensitive   = true
}

variable "phone_number" {
  description = "Phone number for PlaygroundTech API"
  type        = string
}


variable "linkedin" {
  description = "LinkedIn profile URL for PlaygroundTech API"
  type        = string
}

variable "github" {
  description = "GitHub profile URL for PlaygroundTech API"
  type        = string
}

variable "homepage" {
  description = "Homepage URL for PlaygroundTech API"
  type        = string
}