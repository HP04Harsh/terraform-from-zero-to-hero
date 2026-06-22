resource "azurerm_resource_group" "rg" {
    name = "provisioners-test"
    location = "eastus"
   
   // Local Terraform Provisioner
    provisioner "local-exec" {
      when = destory
      command = "echo ${self.name} > resource_info.txt"
    }

    // Remote Execution 
    provisioner "remote-exec"{
        script = "scripts/run.sh"
        connection {
          type = "ssh"
          user = "Harsh"
          password = "Nagpur@123" 
          host = "public ip of vm"         
         }
    }
 
    // File provisioner
    provisioner "file" {
        source = "${path.module}/app.txt"
        destination = "/home/Harsh"

        connection {
          type = "ssh"
          user = "Harsh"
          private_key = file("~/.ssh/id_rsa")
          host = "yuour vm public ip"
          
        }
    }
}

    



   