control 'IA-9' do
  impact 0.5
  title 'Service Identification and Authentication'
  desc <<~DESC
    Uniquely identify and authenticate #{input('ia_09_odp')} before establishing communications with devices, users, or other services or applications.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IA-09 #{input('ia_09_odp')} are uniquely identified and authenticated before establishing communications with devices, users, or other services or applications.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; procedures addressing service identification and authentication; system security plan; system design documentation; security safeguards used to identify and authenticate system services; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with system operations responsibilities; organizational personnel with information security responsibilities; system/network administrators; system developers; organizational personnel with identification and authentication responsibilities
      TEST: Security safeguards implementing service identification and authentication capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Services that may require identification and authentication include web applications using digital certificates or services or applications that query a database. Identification and authentication methods for system services and applications include information or code signing, provenance graphs, and electronic signatures that indicate the sources of services. Decisions regarding the validity of identification and authentication claims can be made by services separate from the services acting on those decisions. This can occur in distributed system architectures. In such situations, the identification and authentication decisions (instead of actual identifiers and authentication data) are provided to the services that need to act on those decisions.
  GUIDANCE
  tag nist: ['IA-9']
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{}
  tag odp: %w{ia_09_odp}

  describe 'NIST SP 800-53 Rev 5 control IA-9' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
