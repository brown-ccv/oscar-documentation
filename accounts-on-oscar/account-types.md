---
title: Account Types
date: '2019-01-31 22:01:25 +0000'
project: Oscar
section: Accounts
weight: 0
icon: check
---

# Account Types

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

Investigators may also purchase condos to grant access to computing resources for others working with them. After a condo is purchased, they can have users request to join the condo group through the "Request Access to Existing Condo" option on the [account form](https://brown.co1.qualtrics.com/jfe/form/SV_0GtBE8kWJpmeG4B) on the CCV homepage. 

## Oscar Groups for Accounts

<table>
  <thead>
    <tr>
      <th style="text-align:left">Account Type</th>
      <th style="text-align:left">Group Name</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Exploratory (free)</td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">HPC Priority</td>
      <td style="text-align:left"><code>priority, priority1,priority2, ... ,priority5</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">HPC Priority+</td>
      <td style="text-align:left"><code>priority+</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Standard GPU Priority</td>
      <td style="text-align:left"><code>pri-gpu</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Standard GPU Priority+</td>
      <td style="text-align:left"><code>pri-gpu+</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">High End GPU Priority</td>
      <td style="text-align:left"><code>gpu-he</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Large Memory Priority</td>
      <td style="text-align:left"><code>pri-bigmem</code>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">A PI&apos;s CPU condo</td>
      <td style="text-align:left"><code>&lt;PI_group&gt;-condo</code>, e.g. ap31-condo</td>
    </tr>
    <tr>
      <td style="text-align:left">A PI&apos;s GPU condo</td>
      <td style="text-align:left">
        <p><code>&lt;PI_group&gt;-gcondo</code>, e.g. gk-gcondo, or</p>
        <p> <code>&lt;PI_group&gt;-&lt;hardware_architecture&gt;-gcondo, e.g, gk-3090-gcondo</code>
        </p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Research Project condo</td>
      <td style="text-align:left"><code>carney-condo</code>, <code>carney-gcondo</code>,<code> epscor-condo</code>,
        etc.</td>
    </tr>
  </tbody>
</table>

{% hint style="info" %}
The carney-condo has sub condos for several PIs, e.g., carney-tserre-condo. 
{% endhint %}

* To check which type of account you are on or which condos you are a part of, run the command`groups <username>` or`id <username>` and verify the group\(s\) that you are a part of above. 
* If you requested an Exploratory Account without PI, you will likely be in the `nopi` group. If you requested an Exploratory Account with PI, you will be in the PI's group that you requested..
* When a condo is deactivated/removed, a user may not be removed from its corresponding Oscar group. 



