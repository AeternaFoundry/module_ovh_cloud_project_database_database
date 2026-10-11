resource "ovh_cloud_project_database_database" "cloud_project_database_databases" {
  for_each = var.cloud_project_database_databases

  cluster_id   = each.value.cluster_id
  engine       = each.value.engine
  name         = each.value.name
  service_name = each.value.service_name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

