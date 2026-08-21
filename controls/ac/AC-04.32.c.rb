control 'AC-04(32)(c)' do
  impact 0.5
  title "when transferring information between different security domains, the process that transfers information between filter pipelines ensures that the content with the filtering metadata has successfully completed filtering;"
  desc <<~DESC
    When transferring information between different security domains, the process that transfers information between filter pipelines:
      (a) Does not filter message content;
      (b) Validates filtering metadata;
      (c) Ensures the content associated with the filtering metadata has successfully completed filtering; and
      (d) Transfers the content to the destination filter pipeline.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      when transferring information between different security domains, the process that transfers information between filter pipelines ensures that the content with the filtering metadata has successfully completed filtering;

    Assessment methods and objects:
      EXAMINE: Information flow enforcement policy; procedures addressing information flow enforcement; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information flow enforcement responsibilities; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing information flow enforcement functions; mechanisms implementing content filtering
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The processes transferring information between filter pipelines have minimum complexity and functionality to provide assurance that the processes operate correctly.
  GUIDANCE
  tag nist: ['AC-4 (32)']
  tag control: 'AC-4 (32)'
  tag objective: 'AC-04(32)(c)'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_4_32: true

  describe 'NIST SP 800-53A Rev 5 objective AC-04(32)(c)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
