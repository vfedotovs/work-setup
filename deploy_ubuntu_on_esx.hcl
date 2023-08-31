provider "vsphere" {
  user           = "your_username"
  password       = "your_password"
  vsphere_server = "your_esxi_server"
}

resource "vsphere_virtual_machine" "ubuntu_vm" {
  name             = "ubuntu-vm"
  resource_pool_id = "your_resource_pool_id"
  datastore_id     = "your_datastore_id"
  folder           = "your_folder_name"

  num_cpus = 2
  memory   = 4096

  guest_id = "ubuntu64Guest"

  network_interface {
    network_id = "your_network_id"
  }

  disk {
    label            = "disk0"
    size             = "40GB"
    eagerly_scrub    = false
    thin_provisioned = true
  }

  clone {
    template_uuid = "your_ubuntu_template_uuid"
  }
}


# To find the UUID of the VM template in vSphere:

# 1.Log in to your vSphere Web Client or vCenter Server.
# 2.Navigate to the "VMs and Templates" view.
# 3.Locate the VM template you want to use.
# 4.Right-click on the template and select "Edit Settings."

# In the "Edit Settings" window, go to the "VM Options" tab.
# You'll find the "Template ID" field, which contains the UUID of the template.
# Copy the UUID and use it in your Terraform script as the value for the template_uuid attribute in the vsphere_virtual_machine resource.
