module "diagnostics" {
  source = "claranet/diagnostic-settings/azurerm"
  # version = "~> 6.5.0"

  resource_id = azurerm_shared_image_gallery.shared_image_gallery.id

  logs_destinations_ids = var.logs_destinations_ids
  log_categories        = var.logs_categories
  metric_categories     = var.logs_metrics_categories

  custom_name = var.custom_diagnostic_settings_name
  name_prefix = var.name_prefix
  name_suffix = var.name_suffix
}
