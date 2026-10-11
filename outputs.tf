output "cloud_project_database_databases_id" {
  description = "Map of id values across all cloud_project_database_databases, keyed the same as var.cloud_project_database_databases except keys with no id are omitted"
  value       = { for k, v in ovh_cloud_project_database_database.cloud_project_database_databases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_project_database_databases_cluster_id" {
  description = "Map of cluster_id values across all cloud_project_database_databases, keyed the same as var.cloud_project_database_databases except keys with no cluster_id are omitted"
  value       = { for k, v in ovh_cloud_project_database_database.cloud_project_database_databases : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "cloud_project_database_databases_default" {
  description = "Map of default values across all cloud_project_database_databases, keyed the same as var.cloud_project_database_databases except keys with no default are omitted"
  value       = { for k, v in ovh_cloud_project_database_database.cloud_project_database_databases : k => v.default if v.default != null }
}
output "cloud_project_database_databases_engine" {
  description = "Map of engine values across all cloud_project_database_databases, keyed the same as var.cloud_project_database_databases except keys with no engine are omitted"
  value       = { for k, v in ovh_cloud_project_database_database.cloud_project_database_databases : k => v.engine if v.engine != null && length(v.engine) > 0 }
}
output "cloud_project_database_databases_name" {
  description = "Map of name values across all cloud_project_database_databases, keyed the same as var.cloud_project_database_databases except keys with no name are omitted"
  value       = { for k, v in ovh_cloud_project_database_database.cloud_project_database_databases : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloud_project_database_databases_service_name" {
  description = "Map of service_name values across all cloud_project_database_databases, keyed the same as var.cloud_project_database_databases except keys with no service_name are omitted"
  value       = { for k, v in ovh_cloud_project_database_database.cloud_project_database_databases : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

