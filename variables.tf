variable "storagegateway_gateways" {
  description = <<EOT
Map of storagegateway_gateways, attributes below
Required:
    - gateway_name
    - gateway_timezone
Optional:
    - activation_key
    - average_download_rate_limit_in_bits_per_sec
    - average_upload_rate_limit_in_bits_per_sec
    - cloudwatch_log_group_arn
    - gateway_ip_address
    - gateway_type
    - gateway_vpc_endpoint
    - medium_changer_type
    - region
    - smb_file_share_visibility
    - smb_guest_password
    - smb_security_strategy
    - tags
    - tags_all
    - tape_drive_type
    - maintenance_start_time (block):
        - day_of_month (optional)
        - day_of_week (optional)
        - hour_of_day (required)
        - minute_of_hour (optional)
    - smb_active_directory_settings (block):
        - domain_controllers (optional)
        - domain_name (required)
        - organizational_unit (optional)
        - password (required)
        - timeout_in_seconds (optional)
        - username (required)
EOT

  type = map(object({
    gateway_name                                = string
    gateway_timezone                            = string
    tags                                        = optional(map(string))
    smb_security_strategy                       = optional(string)
    smb_guest_password                          = optional(string)
    smb_file_share_visibility                   = optional(bool)
    region                                      = optional(string)
    medium_changer_type                         = optional(string)
    gateway_vpc_endpoint                        = optional(string)
    gateway_type                                = optional(string)
    gateway_ip_address                          = optional(string)
    cloudwatch_log_group_arn                    = optional(string)
    average_upload_rate_limit_in_bits_per_sec   = optional(number)
    average_download_rate_limit_in_bits_per_sec = optional(number)
    activation_key                              = optional(string)
    tags_all                                    = optional(map(string))
    tape_drive_type                             = optional(string)
    maintenance_start_time = optional(object({
      day_of_month   = optional(string)
      day_of_week    = optional(string)
      hour_of_day    = number
      minute_of_hour = optional(number)
    }))
    smb_active_directory_settings = optional(object({
      domain_controllers  = optional(set(string))
      domain_name         = string
      organizational_unit = optional(string)
      password            = string
      timeout_in_seconds  = optional(number)
      username            = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.storagegateway_gateways : (
        v.average_download_rate_limit_in_bits_per_sec == null || (v.average_download_rate_limit_in_bits_per_sec >= 102400)
      )
    ])
    error_message = "must be at least 102400"
  }
  validation {
    condition = alltrue([
      for k, v in var.storagegateway_gateways : (
        v.average_upload_rate_limit_in_bits_per_sec == null || (v.average_upload_rate_limit_in_bits_per_sec >= 51200)
      )
    ])
    error_message = "must be at least 51200"
  }
  validation {
    condition = alltrue([
      for k, v in var.storagegateway_gateways : (
        (can(regex("^[ -\\.0-\\[\\]-~]*[!-\\.0-\\[\\]-~][ -\\.0-\\[\\]-~]*$", v.gateway_name))) && (length(v.gateway_name) >= 2 && length(v.gateway_name) <= 255)
      )
    ])
    error_message = "all of: must be between 2 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.storagegateway_gateways : (
        (can(regex("^GMT[+-][0-9]{1,2}:[0-9]{2}$", v.gateway_timezone))) || (can(regex("^GMT$", v.gateway_timezone)))
      )
    ])
    error_message = "any of: "
  }
  validation {
    condition = alltrue([
      for k, v in var.storagegateway_gateways : (
        v.maintenance_start_time == null || (v.maintenance_start_time.hour_of_day >= 0 && v.maintenance_start_time.hour_of_day <= 23)
      )
    ])
    error_message = "must be between 0 and 23"
  }
  validation {
    condition = alltrue([
      for k, v in var.storagegateway_gateways : (
        v.maintenance_start_time == null || (v.maintenance_start_time.minute_of_hour == null || (v.maintenance_start_time.minute_of_hour >= 0 && v.maintenance_start_time.minute_of_hour <= 59))
      )
    ])
    error_message = "must be between 0 and 59"
  }
  validation {
    condition = alltrue([
      for k, v in var.storagegateway_gateways : (
        v.smb_active_directory_settings == null || (v.smb_active_directory_settings.domain_controllers == null || (alltrue([for x in v.smb_active_directory_settings.domain_controllers : (can(regex("^(([0-9A-Za-z-]*[0-9A-Za-z])\\.)*([0-9A-Za-z-]*[0-9A-Za-z])(:(\\d+))?$", x))) && (length(x) >= 6 && length(x) <= 1024)])))
      )
    ])
    error_message = "all of: must be between 6 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.storagegateway_gateways : (
        v.smb_active_directory_settings == null || (v.smb_active_directory_settings.organizational_unit == null || (length(v.smb_active_directory_settings.organizational_unit) >= 1 && length(v.smb_active_directory_settings.organizational_unit) <= 1024))
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.storagegateway_gateways : (
        v.smb_active_directory_settings == null || (v.smb_active_directory_settings.timeout_in_seconds == null || (v.smb_active_directory_settings.timeout_in_seconds >= 0 && v.smb_active_directory_settings.timeout_in_seconds <= 3600))
      )
    ])
    error_message = "must be between 0 and 3600"
  }
  validation {
    condition = alltrue([
      for k, v in var.storagegateway_gateways : (
        v.smb_guest_password == null || ((can(regex("^[ -~]+$", v.smb_guest_password))) && (length(v.smb_guest_password) >= 6 && length(v.smb_guest_password) <= 512))
      )
    ])
    error_message = "all of: must be between 6 and 512 characters"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

