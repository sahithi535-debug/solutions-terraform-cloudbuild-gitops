# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


locals {
  "env" = "dev"
}

resource "google_composer_environment" "composer" {
  name = "composerterrascript"
  region = "us-central1"
   config {
   node_count = 4
   node_config {
    zone = "us-central1-a"
   machine_type = "n1-standard-1"
 }
 }
 }
 resource "google_service_account" "myaccount" {
  account_id = "serviceaccountterra"
  display_name =  "sevice account"
 }
 resource "google_bigquery_dataset" "dataset" {
    dataset_id = "datasetterra"
    location = "us"
 }
 resource "google_data_fusion_instance" "instance123" {
  name = "instanceterra"
  region = "us-central1"
  type = "BASIC"
  provider= google-beta
 }
 resource "google_storage_bucket" "bucket123" {
  name = "bucketterra"
  location ="us"
 }
