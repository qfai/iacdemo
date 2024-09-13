
variable "aksArc0-kubernetesVersion" {
  type        = string
  description = "The version of Kubernetes to use for the provisioned cluster."
  default     = "1.28.5"
}

variable "aksArc0-controlPlaneCount" {
  type        = number
  description = "The number of control plane nodes for the Kubernetes cluster."
  default     = 1
}

variable "aksArc0-controlPlaneVmSize" {
  type        = string
  description = "The size of the Virtual Machines to use for the control plane nodes."
  default     = "Standard_A4_v2"
}

variable "aksArc0-agentPoolProfiles" {
  type = list(object({
    count             = number
    enableAutoScaling = optional(bool)
    nodeTaints        = optional(list(string))
    nodeLabels        = optional(map(string))
    maxPods           = optional(number)
    name              = optional(string)
    osSKU             = optional(string, "CBLMariner")
    osType            = optional(string, "Linux")
    vmSize            = optional(string, "Standard_A4_v2")
  }))
  description = "The agent pool profiles for the Kubernetes cluster."
  default = [{
    count  = 1
    name   = "nodepool1"
    osSKU  = "CBLMariner"
    osType = "Linux"
    vmSize = "Standard_A4_v2"
  }]
}

variable "aksArc0-enableAzureRBAC" {
  type        = bool
  description = "Whether to enable Azure RBAC for the Kubernetes cluster."
  default     = true
}

variable "aksArc0-rbacAdminGroupObjectIds" {
  type        = list(string)
  description = "The object id of the Azure AD group that will be assigned the 'cluster-admin' role in the Kubernetes cluster."
  default     = ["ed888f99-66c1-48fe-992f-030f49ba50ed"]
}

variable "aksArc0-sshPublicKey" {
  type        = string
  description = "The SSH public key that will be used to access the kubernetes cluster nodes. If not specified, a new SSH key pair will be generated."
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC0ySAeb82SAvCnXNdJwhoWXxtzeDgIe3HIVXpngjPPAKd3Sw5+omsEgbK9R2XcTrHYzQWFZxzD6BOH/GOAoQ+Bo5FVXARgHIgP4uHfVomggEKPXcZ91K2TlVR6zd6/zqgnj8h7BUUpL3uR5xU54Zxjvv7rPxgaxWyWJCNpoa+F1UOJzNZ9rl4vNcN7ZYItx87824YpI4heH+JC+r2aiuF81km4goyezUGiqWHipJIJggTp23wJkE8eqazy507784z5Mrg4k2Dbgy7hMGpmx78Ca/yDSfqtF6vHVZtXa7CErsB+kZ8sZ0+PgMun1so8Z7bSBvjxClaF2ZNZuKcLfBn1MC3jo46jHGN1LZHfgpeCLU4RxKIN9YI11p/vOwx+n7F3h/uDLtwBxrWXIaY7dXXydJmHR3MXUxmJURKptHc3YHAwF4AAsoUODkxKs4rG1lARY3T4qMypqDV6QYNzFqNxsDEMYk56hQEl6jqr7S4jEUKGTDF/z+LqxPiWcU7YgDcaHovB5gateSQch9kTDENeyJa+go4HnuOkCt+jIzF0wpZ/C7dROTropTnPvQDWPyGwHikLZMoYXcuci2GTrM5XA1LMwuLMtXbiD6Zes2HFdVrlN6ev8G6eO8OdqP2xQMc7ZjtzMxMuQDlV/VoXrOt1j0SOYYZAihz/yJby9TIOFw==\n"
}
