module "vpc" {
    source = "./module/vpc"
}
resource "null_resource" "test" {

}