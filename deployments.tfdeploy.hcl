# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "staging" {
  variables = {
    prefix           = "staging"
    instances        = 1
  }
}

deployment "pre-prod" {
  variables = {
    prefix           = "pre-prod"
    instances        = 3
  }
}

deployment "prod" {
  variables = {
    prefix           = "prod"
    instances        = 5
  }
}

orchestrate "auto_approve" "auto_deploy" {
  check {
    condition = context.plan.applyable
    error-message = "Plan not applyable."
  }

  check {
    condition = context.plan.mode != "destroy"
    error-message = "Destroy plans are not allowed to be auto-approved."
  }
}