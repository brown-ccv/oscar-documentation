# Python on Oscar

Several versions of Python are available on Oscar as modules. However, we recommend using the system Python available at /usr/bin/python .  You do not need to load any module to use this version of Python.&#x20;

```bash
$ which python
/usr/bin/python
$ python --version
Python 3.9.16
```

&#x20;`pip` is also installed as a system package, but other common Python packages (e.g., SciPy, NumPy) are not installed on the system. This affords individual users complete control over the packages they are using, thereby avoiding issues that can arise when code written in Python requires specific versions of Python packages.

{% hint style="warning" %}
We do not provide Python version 2  modules since it has reached its end of life. You  may install Python 2 locally in your home directory, but CCV will not provide any Python2 modules.
{% endhint %}

Users can install any Python package they require by following the instructions given on the [Installing Python Packages](python-installs.md) page.

{% hint style="info" %}
Intel provides optimized packages for numerical and scientific work that you can install through[ pip](https://software.intel.com/en-us/articles/installing-the-intel-distribution-for-python-and-intel-performance-libraries-with-pip-and) or [anaconda](https://software.intel.com/en-us/articles/using-intel-distribution-for-python-with-anaconda).&#x20;
{% endhint %}

{% hint style="warning" %}
Python 2 has entered End-of-Life (EOL) status and will receive no further official support as of January 2020. As a consequence, you may see the following message when using pip with Python 2.

`DEPRECATION: Python 2.7 will reach the end of its life on January 1st, 2020. Please upgrade your Python as Python 2.7 won't be maintained after that date. A future version of pip will drop support for Python 2.7.`

Going forward, the [Python Software Foundation recommends](https://wiki.python.org/moin/Python2orPython3) using Python 3 for development.&#x20;
{% endhint %}

