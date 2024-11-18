resource "local_file" "testing" {
  filename = "/home/ubuntu/terraform/Day1/test.txt"
  content = "This file will create a txt file"
}
