all: login init demostack apply
.PHONY: all doormat_creds doormat_aws deploy destroy console
TFC_ORG = emea-se-playground-2019
login:
		doormat login
init:
		terraform init
demostack:
		doormat aws --account aws_jose.merchan_test --tf-push --tf-local
apply:
		terraform init
		terraform plan
		terraform apply
destroy:
		terraform destroy