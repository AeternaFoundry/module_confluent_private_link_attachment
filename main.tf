resource "confluent_private_link_attachment" "private_link_attachments" {
  for_each = var.private_link_attachments

  cloud        = each.value.cloud
  display_name = each.value.display_name
  region       = each.value.region

  environment {
    id = each.value.environment.id
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

