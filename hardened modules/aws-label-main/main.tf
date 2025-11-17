resource "terraform_data" "generic_resource" {
  for_each = var.resources

  input = merge(
    { id = "id-${each.key}" },
    each.value
  )
}
