control 'AC-19 (4)' do
  impact 0.5
  title 'Restrictions for Classified Information'
  desc <<~DESC
    (a) Prohibit the use of unclassified mobile devices in facilities containing systems processing, storing, or transmitting classified information unless specifically permitted by the authorizing official; and
    (b) Enforce the following restrictions on individuals permitted by the authorizing official to use unclassified mobile devices in facilities containing systems processing, storing, or transmitting classified information:
      (1) Connection of unclassified mobile devices to classified systems is prohibited;
      (2) Connection of unclassified mobile devices to unclassified systems requires approval from the authorizing official;
      (3) Use of internal or external modems or wireless interfaces within the unclassified mobile devices is prohibited; and
      (4) Unclassified mobile devices and the information stored on those devices are subject to random reviews and inspections by #{input('ac_19_04_odp_01')} , and if classified information is found, the incident handling policy is followed.
    (c) Restrict the connection of classified mobile devices to classified systems in accordance with #{input('ac_19_04_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-19(04)(a) the use of unclassified mobile devices in facilities containing systems processing, storing, or transmitting classified information is prohibited unless specifically permitted by the authorizing official;
      AC-19(04)(b)
        AC-19(04)(b)(01) prohibition of the connection of unclassified mobile devices to classified systems is enforced on individuals permitted by an authorizing official to use unclassified mobile devices in facilities containing systems processing, storing, or transmitting classified information;
        AC-19(04)(b)(02) approval by the authorizing official for the connection of unclassified mobile devices to unclassified systems is enforced on individuals permitted to use unclassified mobile devices in facilities containing systems processing, storing, or transmitting classified information;
        AC-19(04)(b)(03) prohibition of the use of internal or external modems or wireless interfaces within unclassified mobile devices is enforced on individuals permitted by an authorizing official to use unclassified mobile devices in facilities containing systems processing, storing, or transmitting classified information;
        AC-19(04)(b)(04)
          AC-19(04)(b)(04)[01] random review and inspection of unclassified mobile devices and the information stored on those devices by #{input('ac_19_04_odp_01')} are enforced;
          AC-19(04)(b)(04)[02] following of the incident handling policy is enforced if classified information is found during a random review and inspection of unclassified mobile devices;
      AC-19(04)(c) the connection of classified mobile devices to classified systems is restricted in accordance with #{input('ac_19_04_odp_02')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; incident handling policy; procedures addressing access control for mobile devices; system design documentation; system configuration settings and associated documentation; evidentiary documentation for random inspections and reviews of mobile devices; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for random reviews/inspections of mobile devices; organizational personnel using mobile devices in facilities containing systems processing, storing, or transmitting classified information; organizational personnel with incident response responsibilities; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms prohibiting the use of internal or external modems or wireless interfaces with mobile devices
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    None.
  GUIDANCE
  tag nist: ['AC-19 (4)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_19_04_odp_01 ac_19_04_odp_02}

  describe 'NIST SP 800-53 Rev 5 control AC-19 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
