control 'SC-36 (1)' do
  impact 0.5
  title 'Polling Techniques'
  desc <<~DESC
    (a) Employ polling techniques to identify potential faults, errors, or compromises to the following processing and storage components: #{input('sc_36_01_odp_01')} ; and
    (b) Take the following actions in response to identified faults, errors, or compromises: #{input('sc_36_01_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-36(01)(a) polling techniques are employed to identify potential faults, errors, or compromises to #{input('sc_36_01_odp_01')};
      SC-36(01)(b) #{input('sc_36_01_odp_02')} are taken in response to identified faults, errors, or compromise.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; system design documentation; system configuration settings and associated documentation; system architecture; list of distributed processing and storage components subject to polling; system polling techniques and associated documentation or records; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; system developers/integrators
      TEST: Mechanisms supporting and/or implementing polling techniques
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Distributed processing and/or storage may be used to reduce opportunities for adversaries to compromise the confidentiality, integrity, or availability of organizational information and systems. However, the distribution of processing and storage components does not prevent adversaries from compromising one or more of the components. Polling compares the processing results and/or storage content from the distributed components and subsequently votes on the outcomes. Polling identifies potential faults, compromises, or errors in the distributed processing and storage components.
  GUIDANCE
  tag nist: ['SC-36 (1)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_36_01_odp_01 sc_36_01_odp_02}

  describe 'NIST SP 800-53 Rev 5 control SC-36 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
