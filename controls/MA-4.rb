control 'MA-4' do
  impact 0.5
  title 'Nonlocal Maintenance'
  desc <<~DESC
    a. Approve and monitor nonlocal maintenance and diagnostic activities;
    b. Allow the use of nonlocal maintenance and diagnostic tools only as consistent with organizational policy and documented in the security plan for the system;
    c. Employ strong authentication in the establishment of nonlocal maintenance and diagnostic sessions;
    d. Maintain records for nonlocal maintenance and diagnostic activities; and
    e. Terminate session and network connections when nonlocal maintenance is completed.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MA-04a.
        MA-04a.[01] nonlocal maintenance and diagnostic activities are approved;
        MA-04a.[02] nonlocal maintenance and diagnostic activities are monitored;
      MA-04b.
        MA-04b.[01] the use of nonlocal maintenance and diagnostic tools are allowed only as consistent with organizational policy;
        MA-04b.[02] the use of nonlocal maintenance and diagnostic tools are documented in the security plan for the system;
      MA-04c. strong authentication is employed in the establishment of nonlocal maintenance and diagnostic sessions;
      MA-04d. records for nonlocal maintenance and diagnostic activities are maintained;
      MA-04e.
        MA-04e.[01] session connections are terminated when nonlocal maintenance is completed;
        MA-04e.[02] network connections are terminated when nonlocal maintenance is completed.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing nonlocal system maintenance; remote access policy; remote access procedures; system design documentation; system configuration settings and associated documentation; maintenance records; records of remote access; diagnostic records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for managing nonlocal maintenance; mechanisms implementing, supporting, and/or managing nonlocal maintenance; mechanisms for strong authentication of nonlocal maintenance diagnostic sessions; mechanisms for terminating nonlocal maintenance sessions and network connections
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Nonlocal maintenance and diagnostic activities are conducted by individuals who communicate through either an external or internal network. Local maintenance and diagnostic activities are carried out by individuals who are physically present at the system location and not communicating across a network connection. Authentication techniques used to establish nonlocal maintenance and diagnostic sessions reflect the network access requirements in [IA-2](#ia-2) . Strong authentication requires authenticators that are resistant to replay attacks and employ multi-factor authentication. Strong authenticators include PKI where certificates are stored on a token protected by a password, passphrase, or biometric. Enforcing requirements in [MA-4](#ma-4) is accomplished, in part, by other controls. [SP 800-63B](#e59c5a7c-8b1f-49ca-8de0-6ee0882180ce) provides additional guidance on strong authentication and authenticators.
  GUIDANCE
  tag nist: ['MA-4']
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control MA-4' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
