# Technical Troubleshooting

## Tip 1: 

**WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED**

**Error:** Offending RSA key in ~/.ssh/known\_hosts:**4**. This indicates you have an offending RSA key at line no. 4

**Solution 1**

```
$ vi ~/.ssh/known_hosts
remove line no: 4.
Save and Exit, and Retry.
```

**Solution 2**

```bash
ssh-keygen -R "ssh.ccv.brown.edu"
```



## Tip 3:

**Filesystem Quota Warnings**

If a user exceeds the allocated quota i.e. 20G for home directories the account goes into grace period meaning user has 14 days to get back under the limit or write access will be terminated. 

