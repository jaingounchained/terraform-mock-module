output "resource_ids" {
  value = { for k, v in terraform_data.generic_resource : k => v.output.id }
}

output "resource_outputs" {
  value = { for k, v in terraform_data.generic_resource : k => v.output }
}

output "dummy_output" {
  value = "This is a dummy output to ensure the module works correctly."
}
