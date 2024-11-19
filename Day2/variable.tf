variable "filename" {
	default = "/home/ubuntu/Day2/automated.txt"
}

variable "content" {
	default = "This files is generated with the help of variables"
}

variable "export_testing" {
#in this variable we will be exporting the content form command line
}

variable "test_map" {
	type = map
	default = { 
		"state1" = "This is the file which form variable from state1 and type set"
		"state2" = "This is the file which form variable from state2 and type set"
	}
}

#Data Type 


variable "test_list" {
	type = list
	default = ["/home/ubuntu/Day2/list1.txt", "/home/ubuntu/Day2/list2.txt"]
		
}

variable "fruit" {
	default = ["apple", "banana", "mango"]
	type = set(string)
}


variable "test_object" {
	type = object({
	name = string
	instances = number
	keys = list(string)
	ami = string
	})

	default = {
		name = "ec2_var"
		instances = 2
		keys = ["key1.pem", "key2.pem"]
		ami = "ami123"
	}
	
}

