control 'SI-12(01)' do
  impact 0.5
  title "personally identifiable information being processed in the information life cycle is limited to #{input('si_12_01_odp')}."
  desc <<~DESC
    Limit personally identifiable information being processed in the information life cycle to the following elements of personally identifiable information: #{input('si_12_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      personally identifiable information being processed in the information life cycle is limited to #{input('si_12_01_odp')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; personally identifiable information processing procedures; records retention and disposition policy; records retention and disposition procedures; federal laws, Executive Orders, directives, policies, regulations, standards, and operational requirements applicable to limiting personally identifiable information elements; personally identifiable information inventory; system audit records; audit findings; system security plan; privacy plan; privacy program plan; privacy impact assessment; privacy risk assessment documentation; data mapping documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with information and records management, retention, and disposition responsibilities; organizational personnel with security and privacy responsibilities; network administrators
      TEST: Organizational processes for information management and retention (including limiting personally identifiable information processing); automated mechanisms supporting and/or implementing limits to personally identifiable information processing
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Limiting the use of personally identifiable information throughout the information life cycle when the information is not needed for operational purposes helps to reduce the level of privacy risk created by a system. The information life cycle includes information creation, collection, use, processing, storage, maintenance, dissemination, disclosure, and disposition. Risk assessments as well as applicable laws, regulations, and policies can provide useful inputs to determining which elements of personally identifiable information may create risk.
  GUIDANCE
  tag nist: ['SI-12 (1)']
  tag control: 'SI-12 (1)'
  tag objective: 'SI-12(01)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag control_si_12_1: true
  tag odp: %w{si_12_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-12(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
