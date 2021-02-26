# Jenkins Simulink Embedded Coder

### *Jenkins + Simulink Embedded Coder = CI/CD for Model Based Development.*

This repository is a working proof-of-concept example on how to use Jenkins in your Simulink Embedded Coder build process. Model Based Design and Automotive tend to lag other industries in adoption of new processes however CI/CD has been used sucessfully in 'traditional' devoplment for some time:

> Continuous Integration (CI) allows you to continuously integrate code into a single shared and easy to access repository. ... CI/CD creates a fast and effective process of getting your product to market before your competition as well as releasing new features and bug fixes to keep your current customers happy.
> - [Top 10 Benefits of Continuous Integration & Continuous Delivery](https://www.katalon.com/resources-center/blog/benefits-continuous-integration-delivery/)

Centralizing Embedded Coder builds to a single machine has a number of benefits.

- Increased tracibility of builds (For ISO 26262/IEC 61508), flash files aren't generated on an end developer's machine.
- Centralizing the build process reduces the number of required Embedded Coder licenses. Instead of multiple developers needing access to a floating license or multiple standalone licenses your company can buy one standalone license for the Jenkins build machine.
- For long build processes this frees up the developers' machines from the build process, eliminating 'compiling time'.

![](https://imgs.xkcd.com/comics/compiling.png)

# Jenkins Pipeline View


# Jenkins Artifacts
