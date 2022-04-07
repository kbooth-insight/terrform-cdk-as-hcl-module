# terraform-cdk-module-as-hcl-module

## Purpose

This thing works as a first class "escape hatch".

What's special here is that it uses "terraform" via the CDK, which consists of 
objects you import via the language specific bindings.


Which means we get can do anhything "terraform-y", and consume 

## How
Terraform provides a facility to expose a module written in another language to hcl.

The process is pretty seamless, look at `deploy.sh`

The hardest part here was figuring out how things work as the docs are pretty sparse.  And examples are hello worlds.

Which means we get can do anhything "terraform-y", and consume 

## Docs and stuff

https://www.terraform.io/cdktf/concepts/modules


There is a github action on this showing it work, and it's tied to terraform cloud and works OOTB.