---
title: Account Types
date: '2019-01-31 22:01:25 +0000'
project: Oscar
section: Accounts
weight: 0
icon: check
---

# Account Types

There are several types of accounts on Oscar.

| Account Type | Group Name |
| :--- | :--- |
| Exploratory \(free\) |  |
| HPC Priority | `priority5` |
| HPC Priority+ | `priority+` |
| Standard GPU Priority | `pri-gpu` |
| Standard GPU Priority+ | `pri-gpu+` |
| High End GPU Priority | `gpu-he` |
| Large Memory Priority | `pri-bigmem` |

Investigators may also purchase condos to grant access to computing resources for others working with them. After a condo is purchased, they can have users request to join the condo group through the "Request Access to Existing Condo" option on the [account form](https://brown.co1.qualtrics.com/jfe/form/SV_0GtBE8kWJpmeG4B) on the CCV homepage. Condo groups will typically have the name `<PI group>-condo` or `carney-<PI group>-condo`.

To check which type of account you are on or which condos you are a part of, run the command`groups <username>` or`id <username>` and verify the group\(s\) that you are a part of above. If you requested an Exploratory Account without PI, you will likely be in the `nopi` group. If you requested an Exploratory Account with PI, you will be in the PI's group that you requested.

{% hint style="success" %}
To request a priority account or a condo, use the [account form](https://brown.co1.qualtrics.com/jfe/form/SV_0GtBE8kWJpmeG4B) on the CCV homepage. For more information on resources available to priority accounts and costs, visit the [CCV Rates page](https://ccv.brown.edu/services/rates/).
{% endhint %}

## Exploratory

Exploratory accounts are available to all members of the Brown community for free.

## HPC Priority\(+\)

HPC Priority accounts are available through a quarterly subscription and offer significantly more CPU cores, significantly more memory, and \(like all non-exploratory accounts\) double the maximum walltime available to exploratory accounts.

HPC Priority+ accounts offer twice the CPU cores and twice the memory of regular HPC Priority accounts and are also available through a quarterly subscription.

## Standard GPU Priority\(+\)

Standard GPU Priority accounts are available through a quarterly subscription and, while offering fewer CPU cores and less memory than an exploratory account, offer double the number of standard GPUs.

Standard GPU Priority+ accounts offer twice the memory and twice the number of standard GPUs of regular Standard GPU Priority accounts and are also available through a quarterly subscription.

## High End GPU Priority

High End GPU Priority accounts offer the same number of CPU as Standard GPU Priority and Standard GPU Priority\(+\) accounts and comparable memory as well as 4 High End \(Tesla V100\) GPUs. These accounts are available through a quarterly subscription.

## Large Memory Priority

Large Memory Priority accounts offer the same number of CPU cores as an exploratory account, 2 terabytes of memory, as well as double the exploratory maximum walltime. These accounts are available through a quarterly subscription.

## Condo

PIs who purchase hardware \(compute nodes\) for the CCV machine get a Condo account. Condo account users have the highest priority on the number of cores equivalent to the hardware they purchased. Condo accounts last for five years and give their owners access to 25% more CPU cores than they purchase for the first three years of their lifespan. Condo accounts are available through a single payment rather than a quarterly subscription.

