control 'SC-39 (2)' do
  impact 0.5
  title 'Separate Execution Domain Per Thread'
  desc <<~DESC
    Maintain a separate execution domain for each thread in #{input('sc_39_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-39(02) a separate execution domain is maintained for each thread in #{input('sc_39_02_odp')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; system design documentation; system configuration settings and associated documentation; system architecture; list of system execution domains for each thread in multi-threaded processing; system documentation for multi-threaded processing; system documentation from vendors, manufacturers, or developers; independent verification and validation documentation; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; system developer; organizational personnel installing, configuring, and/or maintaining the system; system developers/integrators
      TEST: System capability implementing a separate execution domain for each thread in multi-threaded processing
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    None.
  GUIDANCE
  tag nist: ['SC-39 (2)']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_39_02_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-39 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
