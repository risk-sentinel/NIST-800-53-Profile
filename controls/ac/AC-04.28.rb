control 'AC-04(28)' do
  impact 0.5
  title "when transferring information between security domains, a linear content filter pipeline is implemented that is enforced with discretionary and mandatory access controls."
  desc <<~DESC
    When transferring information between different security domains, implement a linear content filter pipeline that is enforced with discretionary and mandatory access controls.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      when transferring information between security domains, a linear content filter pipeline is implemented that is enforced with discretionary and mandatory access controls.

    Assessment methods and objects:
      EXAMINE: Information flow enforcement policy; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information flow enforcement responsibilities; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing information flow enforcement functions; mechanisms implementing linear content filters
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Content filtering is the process of inspecting information as it traverses a cross-domain solution and determines if the information meets a predefined policy. The use of linear content filter pipelines ensures that filter processes are non-bypassable and always invoked. In general, the use of parallel filtering architectures for content filtering of a single data type introduces bypass and non-invocation issues.
  GUIDANCE
  tag nist: ['AC-4 (28)']
  tag control: 'AC-4 (28)'
  tag objective: 'AC-04(28)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_4_28: true

  describe 'NIST SP 800-53A Rev 5 objective AC-04(28)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
