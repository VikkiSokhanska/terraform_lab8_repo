# Terraform Lab 8 – GCP

Цей проєкт створює віртуальну машину `lab8-instance` у GCP через Terraform.

## Структура

- 2 Service Accounts:
  - `terraform-sa` — для розгортання ресурсів
  - `bucket-sa` — для керування бакетом
- GCS bucket: `terraform-lab8-state`

## Використання

1. Помісти файл `terraform-sa-key.json` у корінь проєкту.
2. Зміни `terraform.tfvars`, якщо потрібно.
3. Запусти:

```bash
terraform init
terraform plan
terraform apply
