# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "simple" {
  variables = {
    prefix           = "PSE_EMEA"
    instances        = 4
  }
}

deployment "complex" {
  variables = {
    prefix           = "complex"
    instances        = 3
  }
}
