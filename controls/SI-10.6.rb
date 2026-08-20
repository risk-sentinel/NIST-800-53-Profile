control 'SI-10 (6)' do
  impact 0.5
  title 'Injection Prevention'
  desc <<~DESC
    Prevent untrusted data injections.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-10(06) untrusted data injections are prevented.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing information input validation; system design documentation; system configuration settings and associated documentation; list of trusted sources for information inputs; list of acceptable formats for input restrictions; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for information input validation; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Organizational processes for preventing untrusted data injections; automated mechanisms supporting and/or implementing injection prevention
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Untrusted data injections may be prevented using a parameterized interface or output escaping (output encoding). Parameterized interfaces separate data from code so that injections of malicious or unintended data cannot change the semantics of commands being sent. Output escaping uses specified characters to inform the interpreter’s parser whether data is trusted. Prevention of untrusted data injections are with respect to the information inputs defined by the organization in the base control ( [SI-10](#si-10)).
  GUIDANCE
  tag nist: ['SI-10 (6)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SI-10 (6)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
