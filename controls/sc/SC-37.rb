control 'SC-37' do
  impact 0.5
  title "#{input('sc_37_odp_01')} are employed for the physical delivery or electronic transmission of #{input('sc_37_odp_02')} to #{input('sc_37_odp_03')}."
  desc <<~DESC
    Employ the following out-of-band channels for the physical delivery or electronic transmission of #{input('sc_37_odp_02')} to #{input('sc_37_odp_03')}: #{input('sc_37_odp_01')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sc_37_odp_01')} are employed for the physical delivery or electronic transmission of #{input('sc_37_odp_02')} to #{input('sc_37_odp_03')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing the use of out-of-band channels; access control policy and procedures; identification and authentication policy and procedures; system design documentation; system architecture; system configuration settings and associated documentation; list of out-of-band channels; types of information, system components, or devices requiring the use of out-of-band channels for physical delivery or electronic transmission to authorized individuals or systems; physical delivery records; electronic transmission records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel authorizing, installing, configuring, operating, and/or using out-of-band channels; system developers/integrators
      TEST: Organizational processes for the use of out-of-band channels; mechanisms supporting and/or implementing the use of out-of-band channels
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Out-of-band channels include local, non-network accesses to systems; network paths physically separate from network paths used for operational traffic; or non-electronic paths, such as the U.S. Postal Service. The use of out-of-band channels is contrasted with the use of in-band channels (i.e., the same channels) that carry routine operational traffic. Out-of-band channels do not have the same vulnerability or exposure as in-band channels. Therefore, the confidentiality, integrity, or availability compromises of in-band channels will not compromise or adversely affect the out-of-band channels. Organizations may employ out-of-band channels in the delivery or transmission of organizational items, including authenticators and credentials; cryptographic key management information; system and data backups; configuration management changes for hardware, firmware, or software; security updates; maintenance information; and malicious code protection updates. For example, cryptographic keys for encrypted files are delivered using a different channel than the file.
  GUIDANCE
  tag nist: ['SC-37']
  tag control: 'SC-37'
  tag objective: 'SC-37'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_37: true
  tag odp: %w{sc_37_odp_01 sc_37_odp_02 sc_37_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective SC-37' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
