control 'MA-04(06)[02]' do
  impact 0.5
  title "#{input('ma_04_06_odp')} are implemented to protect the confidentiality of nonlocal maintenance and diagnostic communications."
  desc <<~DESC
    Implement the following cryptographic mechanisms to protect the integrity and confidentiality of nonlocal maintenance and diagnostic communications: #{input('ma_04_06_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ma_04_06_odp')} are implemented to protect the confidentiality of nonlocal maintenance and diagnostic communications.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing nonlocal system maintenance; system design documentation; system configuration settings and associated documentation; cryptographic mechanisms protecting nonlocal maintenance activities; maintenance records; diagnostic records; audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; network engineers; organizational personnel with information security responsibilities; system/network administrators
      TEST: Cryptographic mechanisms protecting nonlocal maintenance and diagnostic communications
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Failure to protect nonlocal maintenance and diagnostic communications can result in unauthorized individuals gaining access to organizational information. Unauthorized access during remote maintenance sessions can result in a variety of hostile actions, including malicious code insertion, unauthorized changes to system parameters, and exfiltration of organizational information. Such actions can result in the loss or degradation of mission or business capabilities.
  GUIDANCE
  tag nist: ['MA-4 (6)']
  tag control: 'MA-4 (6)'
  tag objective: 'MA-04(06)[02]'
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{}
  tag control_ma_4_6: true
  tag odp: %w{ma_04_06_odp}

  describe 'NIST SP 800-53A Rev 5 objective MA-04(06)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
