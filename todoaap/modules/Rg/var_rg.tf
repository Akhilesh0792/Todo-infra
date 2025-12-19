variable "rg_child" {
  type = map(object({
    name = string
    location = string
  }))
}