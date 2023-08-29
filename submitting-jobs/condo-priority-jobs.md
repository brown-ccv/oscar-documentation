# Condo/Priority Jobs

{% hint style="info" %}
**Note:** we do not provide users condo access by default if their group/PI has a condo on the system. You will have to explicitly request a condo access and we will ask for approval from the PI.
{% endhint %}

To use your condo account to submit jobs, please follow the steps below to check the association of your Oscar account and include condo information in your batch script or command line.

**Step 1** - Check your account associations to find your condo `Account` and `Partition` information by running the following command:

```
sacctmgr -p list assoc where user=$USER | grep -E 'condo|Account|Partition'
```

In the example below, the user has access to two condos, where their <mark style="color:blue;">**`Account`**</mark> and <mark style="color:green;">**`Partition`**</mark> are highlighted.&#x20;

{% hint style="info" %}
`Cluster|`<mark style="color:blue;">**`Account`**</mark>`|User|`<mark style="color:green;">**`Partition`**</mark>`|Share|Priority|GrpJobs|GrpTRES|GrpSubmit|GrpWall|GrpTRESMins|MaxJobs|MaxTRES|MaxTRESPerNode|MaxSubmit|MaxWall|MaxTRESMins|QOS|Def QOS|GrpTRESRunMins|`&#x20;

`slurmctld|`<mark style="color:blue;">**`abcd-condo`**</mark>`|ccvdemo1|`<mark style="color:green;">**`batch`**</mark>`|1|||||||||||||abcd-condo|abcd-condo||`

`slurmctld|`<mark style="color:blue;">**`default`**</mark>`|ccvdemo1|`<mark style="color:green;">**`abcd-condo`**</mark>`|1|||||||||||||abcd-condo|abcd-condo||`
{% endhint %}

**Step 2** - Choose the correct way to submit jobs to a condo according to the condo's <mark style="color:blue;">**`Account`**</mark> column:

{% tabs %}
{% tab title="Account is "default"" %}
For **batch script** - Please include the following line:

```
#SBATCH --partition=<Partition>
```

For **command line** - You can also provide this option on the command line while submitting the job using `sbatch`:

```
$ sbatch --partition=<Partition> <batch-script>
```

For **interactive session** - Similarly, you can change the account while asking for interactive access too:

<pre><code><strong>$ interact -q &#x3C;Partition> ... &#x3C;other_options>
</strong></code></pre>
{% endtab %}

{% tab title="Account is NOT "default"" %}
For **batch script** - Please include the following line:

```
#SBATCH --account=<Account>
```

For **command line** - You can also provide this option on the command line while submitting the job using `sbatch`:

```
$ sbatch --account=<Account> <batch-script>
```

For **interactive session** - Similarly, you can change the account while asking for interactive access too:

```
$ interact -a <Account> ... <other_options>
```
{% endtab %}
{% endtabs %}

To see the running and pending jobs in a condo:

&#x20;`condo <condo-name>`

### Premium Account (priority) jobs

If you have a premium account, that should be your default QOS for submitting jobs. You can check if you have a premium account with the command `groups`. If you have a priority account you will see `priority` in your the output form `groups`.

You can check the qos for a running job by running the command `myq`. The `QOS` column should show `"pri-<username>"`

If you are interested in seeing all your accounts and associations, you can use the following command:

```
sacctmgr -p list assoc where user=<username>
```
