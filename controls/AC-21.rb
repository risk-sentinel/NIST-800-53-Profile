control 'AC-21' do
  impact 0.5
  title 'Information Sharing'
  desc <<~DESC
    a. Enable authorized users to determine whether access authorizations assigned to a sharing partner match the information’s access and use restrictions for #{input('ac_21_odp_01')} ; and
    b. Employ #{input('ac_21_odp_02')} to assist users in making information sharing and collaboration decisions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-21a. authorized users are enabled to determine whether access authorizations assigned to a sharing partner match the information’s access and use restrictions for #{input('ac_21_odp_01')};
      AC-21b. #{input('ac_21_odp_02')} are employed to assist users in making information-sharing and collaboration decisions.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing user-based collaboration and information sharing (including restrictions); system design documentation; system configuration settings and associated documentation; list of users authorized to make information-sharing/collaboration decisions; list of information-sharing circumstances requiring user discretion; non-disclosure agreements; acquisitions/contractual agreements; system security plan; privacy plan; privacy impact assessment; security and privacy risk assessments; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for information-sharing/collaboration decisions; organizational personnel with responsibility for acquisitions/contractual agreements; system/network administrators; organizational personnel with information security and privacy responsibilities
      TEST: Automated mechanisms or manual process implementing access authorizations supporting information-sharing/user collaboration decisions
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Information sharing applies to information that may be restricted in some manner based on some formal or administrative determination. Examples of such information include, contract-sensitive information, classified information related to special access programs or compartments, privileged information, proprietary information, and personally identifiable information. Security and privacy risk assessments as well as applicable laws, regulations, and policies can provide useful inputs to these determinations. Depending on the circumstances, sharing partners may be defined at the individual, group, or organizational level. Information may be defined by content, type, security category, or special access program or compartment. Access restrictions may include non-disclosure agreements (NDA). Information flow techniques and security attributes may be used to provide automated assistance to users making sharing and collaboration decisions.
  GUIDANCE
  tag nist: ['AC-21']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ac_21_odp_01 ac_21_odp_02}

  describe 'NIST SP 800-53 Rev 5 control AC-21' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
