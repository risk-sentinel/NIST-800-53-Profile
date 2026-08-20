control 'SI-15' do
  impact 0.5
  title 'Information Output Filtering'
  desc <<~DESC
    Validate information output from the following software programs and/or applications to ensure that the information is consistent with the expected content: #{input('si_15_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-15 information output from #{input('si_15_odp')} is validated to ensure that the information is consistent with the expected content.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing information output filtering; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for validating information output; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Organizational processes for validating information output; automated mechanisms supporting and/or implementing information output validation
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Certain types of attacks, including SQL injections, produce output results that are unexpected or inconsistent with the output results that would be expected from software programs or applications. Information output filtering focuses on detecting extraneous content, preventing such extraneous content from being displayed, and then alerting monitoring tools that anomalous behavior has been discovered.
  GUIDANCE
  tag nist: ['SI-15']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag odp: %w{si_15_odp}

  describe 'NIST SP 800-53 Rev 5 control SI-15' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
