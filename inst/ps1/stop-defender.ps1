 Set-MpPreference -AllowDatagramProcessingOnWinServer            $False
 Set-MpPreference -AllowNetworkProtectionDownLevel               $False
 Set-MpPreference -AllowNetworkProtectionOnWinServer             $False
 Set-MpPreference -CheckForSignaturesBeforeRunningScan           $False
 Set-MpPreference -DisableArchiveScanning                        $true
 Set-MpPreference -DisableAutoExclusions                         $true
 Set-MpPreference -DisableBehaviorMonitoring                     $true
 Set-MpPreference -DisableBlockAtFirstSeen                       $true
 Set-MpPreference -DisableCatchupFullScan                        $True
 Set-MpPreference -DisableCatchupQuickScan                       $True
 Set-MpPreference -DisableCpuThrottleOnIdleScans                 $True
 Set-MpPreference -DisableDatagramProcessing                     $True
 Set-MpPreference -DisableDnsOverTcpParsing                      $true
 Set-MpPreference -DisableDnsParsing                             $true
 Set-MpPreference -DisableEmailScanning                          $True
 Set-MpPreference -DisableGradualRelease                         $False
 Set-MpPreference -DisableHttpParsing                            $true
 Set-MpPreference -DisableInboundConnectionFiltering             $true
 Set-MpPreference -DisableIOAVProtection                         $true
 Set-MpPreference -DisableNetworkProtectionPerfTelemetry         $true
 Set-MpPreference -DisablePrivacyMode                            $False
 Set-MpPreference -DisableRdpParsing                             $true
 Set-MpPreference -DisableRealtimeMonitoring                     $true
 Set-MpPreference -DisableRemovableDriveScanning                 $True
 Set-MpPreference -DisableRestorePoint                           $True
 Set-MpPreference -DisableScanningMappedNetworkDrivesForFullScan $True
 Set-MpPreference -DisableScanningNetworkFiles                   $true
 Set-MpPreference -DisableScriptScanning                         $true
 Set-MpPreference -DisableSshParsing                             $true
 Set-MpPreference -DisableTlsParsing                             $true
 Set-MpPreference -EnableDnsSinkhole                             $False
 Set-MpPreference -EnableFileHashComputation                     $False
 Set-MpPreference -EnableFullScanOnBatteryPower                  $False
 Set-MpPreference -EnableLowCpuPriority                          $False
 Set-MpPreference -ForceUseProxyOnly                             $False
 Set-MpPreference -MeteredConnectionUpdates                      $False
 Set-MpPreference -RandomizeScheduleTaskTimes                    $True
 Set-MpPreference -ScanOnlyIfIdleEnabled                         $True
 Set-MpPreference -SignatureDisableUpdateOnStartupWithoutEngine  $False
 Set-MpPreference -UILockdown                                    $False