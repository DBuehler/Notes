# VMWare

## Disable side-channel mitigations in VMWare Player

From (winaero.com)[https://winaero.com/how-to-disable-side-channel-mitigations-in-vmware-player/]

In the VM folder (Documents\Virtual Machines\<VM Name>)
* In the <VM Name>.vmx file
* Add line: `ulm.disableMitigations="TRUE"`
