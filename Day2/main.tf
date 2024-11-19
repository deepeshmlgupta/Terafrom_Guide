resource "local_file" "non-var" {
	filename = "/home/ubuntu/Day2/non_var.txt"
	content = "This is a mannly added file in main"
}

resource "local_file" "var-fi" {
	filename = var.filename
	content = var.content
}

output "export_testing" {
	value = var.export_testing
}
