
import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg"
  to = module.base.azurerm_resource_group.rg
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.AzureStackHCI/clusters/iacado-cl?api-version=2023-08-01-preview"
  to = module.base.module.hci0.azapi_resource.cluster
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.AzureStackHCI/clusters/iacado-cl/deploymentSettings/default?api-version=2023-08-01-preview"
  to = module.base.module.hci0.azapi_resource.validatedeploymentsetting_seperate[0]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.Storage/storageAccounts/iacadowit26"
  to = module.base.module.hci0.azurerm_storage_account.witness
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.KeyVault/vaults/iacado-kv-26"
  to = module.base.module.hci0.azurerm_key_vault.DeploymentKeyVault
}

import {
  id = "26,10,99"
  to = module.base.module.hci0.random_integer.random_suffix
}

import {
  id = "https://iacado-kv-26.vault.azure.net/secrets/AzureStackLCMUserCredential/a41b9dc5d667401aac2864d2ba57c35a"
  to = module.base.module.hci0.azurerm_key_vault_secret.AzureStackLCMUserCredential
}

import {
  id = "https://iacado-kv-26.vault.azure.net/secrets/LocalAdminCredential/7f4b4154605b42ae87946ec71e39533b"
  to = module.base.module.hci0.azurerm_key_vault_secret.LocalAdminCredential
}

import {
  id = "https://iacado-kv-26.vault.azure.net/secrets/DefaultARBApplication/dedcefa216ac4e8b85454f236bc7144b"
  to = module.base.module.hci0.azurerm_key_vault_secret.DefaultARBApplication
}

import {
  id = "https://iacado-kv-26.vault.azure.net/secrets/WitnessStorageKey/b2483492aaee4aa0a0b1cebcbfd30d2b"
  to = module.base.module.hci0.azurerm_key_vault_secret.WitnessStorageKey
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.Authorization/roleAssignments/99351815-ce93-4fad-217f-10bb50b0c1df"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["ASHDMR"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.Authorization/roleAssignments/34848ba3-b72f-bab4-21f8-7c122bf709fc"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["ASHDMR"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.Authorization/roleAssignments/76fca8d0-e705-bc0f-700c-463c6fad6097"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["Reader"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.Authorization/roleAssignments/85334ac1-53fb-7619-5041-230f672e2c00"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["KVSU"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.Authorization/roleAssignments/c09dcb65-4544-cdd8-a199-5a96dcd2d1ab"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST1"].azurerm_role_assignment.MachineRoleAssign["ACMRM"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.Authorization/roleAssignments/9c8e11c7-b326-b529-e010-0183239e7930"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["Reader"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.Authorization/roleAssignments/31618fe8-910a-20ca-75b2-1a9b0b53fd3c"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["ACMRM"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.Authorization/roleAssignments/eac58af1-16ba-a89c-9f95-2889af9d970a"
  to = module.base.module.hci0.module.serverRoleBindings["AzSHOST2"].azurerm_role_assignment.MachineRoleAssign["KVSU"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.Authorization/roleAssignments/5d2377ae-fd79-2af0-ca8c-e4106b9d1a94"
  to = module.base.module.hci0.azurerm_role_assignment.ServicePrincipalRoleAssign["ACMRM"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.HybridCompute/machines/AzSHOST1/providers/Microsoft.Insights/dataCollectionRuleAssociations/DCRA_aaa498e31de4e0d16a3564f2e64204a3"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_monitor_data_collection_rule_association.association["AzSHOST1"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.HybridCompute/machines/AzSHOST2/providers/Microsoft.Insights/dataCollectionRuleAssociations/DCRA_6ab020a08b55ebbab31a8b40eb43f00d"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_monitor_data_collection_rule_association.association["AzSHOST2"]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.Insights/dataCollectionRules/AzureStackHCI-iacado-dcr"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_monitor_data_collection_rule.dcr
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.Insights/dataCollectionEndpoints/iacado-dce"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_monitor_data_collection_endpoint.dce
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.OperationalInsights/workspaces/iacado-workspace"
  to = module.base.module.hci0-extensions.module.insights[0].azurerm_log_analytics_workspace.workspace
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.AzureStackHCI/clusters/iacado-cl/ArcSettings/default/Extensions/AzureMonitorWindowsAgent?api-version=2023-08-01"
  to = module.base.module.hci0-extensions.module.insights[0].azapi_resource.monitor_agent
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.AzureStackHCI/clusters/iacado-cl/ArcSettings/default/Extensions/AzureEdgeAlerts?api-version=2023-08-01"
  to = module.base.module.hci0-extensions.azapi_resource.alerts[0]
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.AzureStackHCI/logicalNetworks/iacado-logicalnetwork?api-version=2023-09-01-preview"
  to = module.base.module.hci0-logical-network0.azapi_resource.logicalNetwork
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.Kubernetes/connectedClusters/iacado-aksArc?api-version=2024-01-01"
  to = module.base.module.hci0-aksarc0.azapi_resource.connectedCluster
}

import {
  id = "/subscriptions/de3c4d5e-af08-451a-a873-438d86ab6f4b/resourceGroups/iacado-rg/providers/Microsoft.Kubernetes/connectedClusters/iacado-aksArc/providers/Microsoft.HybridContainerService/provisionedClusterInstances/default"
  to = module.base.module.hci0-aksarc0.azapi_resource.provisionedClusterInstance
}
