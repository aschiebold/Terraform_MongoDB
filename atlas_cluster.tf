resource "mongodbatlas_advanced_cluster" "test" {
  project_id   = mongodbatlas_project.project.id
  name         = "test"
  cluster_type = "REPLICASET"

  replication_specs {
    region_configs {
      electable_specs {
        instance_size = "M0"
      }
      provider_name         = "TENANT"
      backing_provider_name = "AWS"
      region_name           = "US_EAST_1"
      priority              = 7
    }
  }
}