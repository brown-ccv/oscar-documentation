# Account Types

{% hint style="success" %}
To request a priority account or a condo, use the [account form](https://brown.co1.qualtrics.com/jfe/form/SV\_0GtBE8kWJpmeG4B) on the CCV homepage. For more information on resources available to priority accounts and costs, visit the [CCV Rates page](https://ccv.brown.edu/services/rates/).
{% endhint %}

## Exploratory Account

* Exploratory accounts are available to all members of the Brown community for **free**.
* See the[ CCV Rates page ](https://ccv.brown.edu/services/rates/)for detailed description of the resources
* Jobs are submitted to the **batch partition**. See the  [System Hardware](../system-overview.md) page for available hardware

## Priority Accounts

The following accounts are billed quarterly and offer more computational resources than the exploratory accounts. See the[ CCV Rates page ](https://ccv.brown.edu/services/rates/)for pricing and detailed description of the resources

### HPC Priority

* Intended for users running CPU-intensive jobs. These offer **more CPU and memory** resources than an exploratory account
*   Two types of accounts:

    * HPC Priority 
    * HPC Priority+ (Twice the resources of HPC Priority)

    See the[ CCV Rates page ](https://ccv.brown.edu/services/rates/)for pricing and detailed description of the resources.
* Jobs are submitted to the** batch partition.** See the [System Hardware](../system-overview.md) page for available hardware

### Standard GPU Priority

* Intended for users running GPU intensive jobs. These accounts offer **fewer CPU and memory **resources but **more GPU** resources than an exploratory account.
*   Two types of accounts:

    * Standard GPU Priority
    * Standard GPU Priority+ (Twice the resources of Standard GPU Priority)

    See the[ CCV Rates page ](https://ccv.brown.edu/services/rates/)for pricing and detailed description of the resources.
* Jobs are submitted to the **gpu partition**. See the [System Hardware](../system-overview.md) page for available GPU hardware

### High End GPU Priority

* Intended for GPU jobs required high-end gpus. These offer the same number of CPUS as Standard GPU priority accounts
* **High end GPUS like A40, v100 and a6000 **are available
* See the[ CCV Rates page ](https://ccv.brown.edu/services/rates/)for pricing and detailed description of the resources
* Jobs are submitted to the** gpu-he partition**. See the [System Hardware](../system-overview.md) page for available GPU hardware

### Large Memory Priority

* Intended for jobs requiring large amounts of memory.
* These accounts offer **2TB of memory **and** twice the wall-time **of exploratory accounts**.**
* See the[ CCV Rates page ](https://ccv.brown.edu/services/rates/)for pricing and detailed description of the resources
*   Jobs are submitted to the **bigmem partition**. See the [System Hardware](../system-overview.md) page for available  hardware

    ## Condo

PIs who purchase hardware (compute nodes) for the CCV machine get a Condo account. Condo account users have the highest priority on the number of cores equivalent to the hardware they purchased. Condo accounts last for five years and give their owners access to 25% more CPU cores than they purchase for the first three years of their lifespan. GPU resources do not decrease over the lifetime of the condo.

Investigators may also purchase condos to grant access to computing resources for others working with them. After a condo is purchased, they can have users request to join the condo group through the "Request Access to Existing Condo" option on the [account form](https://brown.co1.qualtrics.com/jfe/form/SV\_0GtBE8kWJpmeG4B) on the CCV homepage. 

## Oscar Groups for Accounts

| Account Type           | Group Name                                                                                                               |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| Exploratory (free)     |                                                                                                                          |
| HPC Priority           | `priority, priority1,priority2, ... ,priority5`                                                                          |
| HPC Priority+          | `priority+`                                                                                                              |
| Standard GPU Priority  | `pri-gpu`                                                                                                                |
| Standard GPU Priority+ | `pri-gpu+`                                                                                                               |
| High End GPU Priority  | `gpu-he`                                                                                                                 |
| Large Memory Priority  | `pri-bigmem`                                                                                                             |
| A PI's CPU condo       | `<PI_group>-condo`, e.g. ap31-condo                                                                                      |
| A PI's GPU condo       | <p><code>&#x3C;PI_group>-gcondo</code>, or</p><p> <code>&#x3C;PI_group>-&#x3C;hardware_architecture>-gcondo, </code></p> |
| Research Project condo | `<project_name>-condo`.                                                                                                  |

* To check which type of account you are on or which condos you are a part of, run the command`groups <username>` or`id <username>` and verify the group(s) that you are a part of above. 
* If you requested an Exploratory Account without PI, you will likely be in the `nopi` group. If you requested an Exploratory Account with PI, you will be in the PI's group that you requested..
* When a condo is deactivated/removed, a user may not be removed from its corresponding Oscar group. 

