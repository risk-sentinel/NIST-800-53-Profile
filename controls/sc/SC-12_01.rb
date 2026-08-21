control 'SC-12[01]' do
  impact 0.5
  title "cryptographic keys are established when cryptography is employed within the system in accordance with #{input('sc_12_odp')};"
  desc <<~DESC
    Establish and manage cryptographic keys when cryptography is employed within the system in accordance with the following key management requirements: #{input('sc_12_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      cryptographic keys are established when cryptography is employed within the system in accordance with #{input('sc_12_odp')};

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing cryptographic key establishment and management; system design documentation; cryptographic mechanisms; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with responsibilities for cryptographic key establishment and/or management
      TEST: Mechanisms supporting and/or implementing cryptographic key establishment and management
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Cryptographic key management and establishment can be performed using manual procedures or automated mechanisms with supporting manual procedures. Organizations define key management requirements in accordance with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines and specify appropriate options, parameters, and levels. Organizations manage trust stores to ensure that only approved trust anchors are part of such trust stores. This includes certificates with visibility external to organizational systems and certificates related to the internal operations of systems. [NIST CMVP](#1acdc775-aafb-4d11-9341-dc6a822e9d38) and [NIST CAVP](#84dc1b0c-acb7-4269-84c4-00dbabacd78c) provide additional information on validated cryptographic modules and algorithms that can be used in cryptographic key management and establishment.
  GUIDANCE
  tag nist: ['SC-12']
  tag control: 'SC-12'
  tag objective: 'SC-12[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sc_12: true
  tag odp: %w{sc_12_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-12[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
