control 'AC-16(03)[01]' do
  impact 0.5
  title "the association and integrity of #{input('ac_16_03_odp_01')} to #{input('ac_16_03_odp_03')} is maintained;"
  desc <<~DESC
    Maintain the association and integrity of #{input('ac_16_3_prm_1')} to #{input('ac_16_3_prm_2')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the association and integrity of #{input('ac_16_03_odp_01')} to #{input('ac_16_03_odp_03')} is maintained;

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing the association of security and privacy attributes to information; procedures addressing labeling or marking; system design documentation; system configuration settings and associated documentation; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy responsibilities; system developers
      TEST: Mechanisms maintaining association and integrity of security and privacy attributes to information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Maintaining the association and integrity of security and privacy attributes to subjects and objects with sufficient assurance helps to ensure that the attribute associations can be used as the basis of automated policy actions. The integrity of specific items, such as security configuration files, may be maintained through the use of an integrity monitoring mechanism that detects anomalies and changes that deviate from "known good" baselines. Automated policy actions include retention date expirations, access control decisions, information flow control decisions, and information disclosure decisions.
  GUIDANCE
  tag nist: ['AC-16 (3)']
  tag control: 'AC-16 (3)'
  tag objective: 'AC-16(03)[01]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_16_3: true
  tag odp: %w{ac_16_03_odp_01 ac_16_03_odp_03 ac_16_3_prm_1 ac_16_3_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective AC-16(03)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
