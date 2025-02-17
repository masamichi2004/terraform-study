resource "google_cloud_run_v2_job" "default" {
  name     = "cloudrun-job"
  location = "us-central1"

  template {
    template {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/job"
      }
    }
  }
}